<?php

declare(strict_types=1);

namespace App\Controller;

use App\Entity\Product\ProductVariant;
use Dflydev\DotAccessData\Data;
use GuzzleHttp\Client;
use Swift_Mailer;
use Sylius\Bundle\CoreBundle\Mailer\Emails;
use Sylius\Bundle\ProductBundle\Doctrine\ORM\ProductVariantRepository;

use Sylius\Component\Mailer\Sender\SenderInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request as HttpRequest;
use GuzzleHttp\Psr7\Request;

use Aws\Credentials\Credentials;
use Aws\Signature\SignatureV4;

class ShopApiController extends AbstractController
{
    public function getDealersAction(HttpRequest $request){

        $url = getenv('AWS_HOST').'/getDealers/brands/'.$request->get('brand');
        [$content, $code] = $this->getApiServiceResponse($url, 'GET');

        return $this->json($content, $code);
    }

    private function getApiServiceResponse($url, $method, $data=[]){

        $access_key = getenv('AWS_ACCESS_KEY');
        $secret_key = getenv('AWS_SECRET_KEY');
        $region = getenv('AWS_REGION');

        $credentials = new Credentials($access_key, $secret_key);

        $client = new Client();
        $request = new Request($method, $url, ['content-type' => 'application/json'], json_encode($data));

        $s4 = new SignatureV4("execute-api", $region);
        $signedRequest = $s4->signRequest($request, $credentials);

        try {

            $response = $client->send($signedRequest);
	        $content = json_decode($response->getBody()->getContents(), true);
	        $code = 200;
        }
        catch (\Throwable $t) {

	        $content = $t->getMessage();
            $code = 500;
        }


        return [$content, $code];
    }

	/**
	 * @param HttpRequest $request
	 * @param ProductVariantRepository $productVariantRepository
	 * @param SenderInterface $sender
	 * @return JsonResponse
	 */
    public function createLeadAction(HttpRequest $request, ProductVariantRepository $productVariantRepository, Swift_Mailer $mailer){

        $data = [
            'first_name' => $request->get('first_name'),
            'last_name' => $request->get('last_name'),
            'phone_number' => $request->get('phone_number'),
            'title' => $request->get('title','mr'),
            'accessories_details' => $request->get('accessories_details',[]),
            'email' => $request->get('email'),
            'dealer' => $request->get('dealer')
        ];

		$brand = $request->get('brand');

        // call microservice only for Skoda
        if( $brand === 'skoda' ){

            $accessories_details = [];

            foreach ($data['accessories_details'] as &$accessories_detail){

                /** @var ProductVariant $variant */
                if( $variant = $productVariantRepository->findOneBy(['code'=>$accessories_detail['sku']]) ){
                    if (!empty($request->get('family'))){
                        $family = $request->get('family');
                    } else {
                        $family = $variant->getProduct()->getMainTaxon()->getName();
                    }
                    $accessories_details[] = [
                        'accessory'=>[
                            'family'=> $family,
                            'sku'=>$variant->getCode()
                        ],
                        'name'=>$variant->getProduct()->getName(),
                        'price'=>$variant->getPrice()/100,
                        'quantity'=>$accessories_detail['quantity']
                    ];
                }
            }

            $data['vehicles'] = $request->get('vehicles',468);
            $data['accessories_details'] = $accessories_details;
            $data['dealer'] = $data['dealer']['id'];
            $data['requested_at'] = date('d/m/Y');

            // phone must be not international ^^
            if( substr($data['phone_number'], 0, 3) == '+33' )
                $data['phone_number'] = str_replace('+33','0', $data['phone_number']);

            $url = getenv('AWS_HOST').'/createLead';
            [$content, $code] = $this->getApiServiceResponse($url, 'POST', $data);

            if( $code == 200 )
                return $this->json(true);
            else
                return $this->json(['error'=>$content]);
        }
        else{

            $accessories_details = [];

            $data['item_count'] = 0;
            $data['total_price'] = 0;

            foreach ($data['accessories_details'] as $accessories_detail){

                /** @var ProductVariant $variant */
                if( $variant = $productVariantRepository->findOneBy(['code'=>$accessories_detail['sku']]) ){
                    $variant->setQuantity($accessories_detail['quantity']);
                    $accessories_details[] = $variant;
                }

                $data['item_count'] += $accessories_detail['quantity'];
                $data['total_price'] += ($accessories_detail['quantity']*$variant->getPrice());
            }

            $data['subtotal_line_items'] = $accessories_details;

            $data['shipping_address'] = [
                'last_name'=>$data['dealer']['title'],
                'address1'=>($data['dealer']['address']??'') .'<br>'.($data['dealer']['postal_code']??'') .' '.($data['dealer']['city']??''),
                'phone'=>$data['dealer']['tel']
            ];

            try{

	            $translations = new Data(json_decode(file_get_contents(__DIR__.'/../../translations/'.$brand.'.json'), true));

	            $message = (new \Swift_Message())
		            ->setSubject($translations->get('email.title'))
		            ->setFrom([$translations->get('email.from') => $translations->get('email.brand')])
		            ->setTo($data['email']);

	            $message->setBody($this->renderView('@SyliusShop/emails/order_confirmation.html.twig', $data), 'text/html');
	            $mailer->send($message);

	            return $this->json(true);
            }
            catch (\Throwable $t){

                return $this->json(['message'=>$t->getMessage()], 500);
            }
        }
    }
}
