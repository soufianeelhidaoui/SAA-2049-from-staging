import Vue from 'vue';
import VRuntimeTemplate from "v-runtime-template";

Vue.component('paginate', {
	props:['init','per_page','page_size','total'],
	components: {
		VRuntimeTemplate
	},
	data(){
		return{
      parentComponent: this,
			page:0,
      productsHtml:[],
			params:{
				'filter.v.price.gte':false,
				'filter.v.price.lte':false,
				'filter.v.price.couleur':false
			}
		}
	},
	computed:{
		count(){
			return this.per_page*this.page+this.init
		}
	},
	methods:{
		loadMore(){
			this.page++
		},
		loadPaged(url){

			this.$http.get(url,{params: {view:'paged'}, headers:{accept:'text/html'}}).then(response=>{

				this.productsHtml.push(response.body);
			})
		}
	},
	mounted() {

		let urlParams = new URLSearchParams(window.location.search);

		for(let query of urlParams.entries())
			this.params[query[0]] = query[0] === 'filter.v.price.gte' || query[0] === 'filter.v.price.lte' ? parseInt(query[1]) : query[1];
	}
});
