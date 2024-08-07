import Vue from 'vue';
import productRepository from "../repositories/productRepository";

Vue.component('products-recommendations', {
	props:['product_id', 'limit', 'url'],
	data(){
		return{
			products: []
		}
	},
	mounted() {

		productRepository.getRecommendations(this.product_id, this.limit).then(response=>{
			let products = response.body.products;
			products.forEach(product => {
				if( typeof product.options_with_values != 'undefined'){
					product.options_with_values.forEach(option=> {
						product[this.handleize(option.name)] = option.values
					})
				}
			})
			this.products = products;
		});
	}
});
