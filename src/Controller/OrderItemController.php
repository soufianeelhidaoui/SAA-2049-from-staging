<?php

declare(strict_types=1);

namespace App\Controller;

use App\Entity\Order\OrderItem;
use Sylius\Bundle\OrderBundle\Controller\OrderItemController as OrderItemControllerBase;


class OrderItemController extends OrderItemControllerBase
{

    public function getCart(){

        $cart = $this->getContext()->getCart();
        $items = $cart->getItems();

        $data = [
            'item_count'=>$cart->getTotalQuantity(),
            'items'=>[]
        ];

        /** @var OrderItem[] $items */
        foreach ($items as $item){

            $data['items'][] = [
                'id'=>$item->getId(),
                'quantity'=>$item->getQuantity(),
                'price'=>$item->getUnitPrice(),
                'product_title'=>$item->getProductName(),
                'sku'=>$item->getVariant()->getCode()
            ];
        }

        return $this->json($data);
    }

    public function clearCart(){

        $cart = $this->getContext()->getCart();
        $cart->clearItems();

        $cartManager = $this->getCartManager();
        $cartManager->persist($cart);
        $cartManager->flush();

        return $this->json([]);
    }
}
