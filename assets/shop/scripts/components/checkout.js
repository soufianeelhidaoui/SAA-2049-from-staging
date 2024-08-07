import Vue from 'vue';
import eventBus from "../services/event-bus";
import proxyRepository from "../repositories/proxyRepository";
import cartRepository from "../repositories/cartRepository";

Vue.component('checkout', {
	data(){
		return{
			search: '',
			partner: false,
			selected: false,
			sent: false,
			sending: false,
			error: false,
			params:{
				title:'',
				first_name:'',
				last_name:'',
				phone_number:'',
				email:''
			}
		}
	},
	computed:{
		cart(){
			return this.$getCart()
		},
		vehicle(){
			let family = this.$getVehicle();
			let id = this.$getVehicleId();

			return {
				family: family?family:shop.vehicles.default_family,
				id: id?id:shop.vehicles.default_id
			}
		},
	},
	methods:{
		select(){

			this.selected = true;

			this.$nextTick(()=>{
				const y = this.$refs.form.getBoundingClientRect().top + window.scrollY - 90;
				window.scroll({top: y, behavior: 'smooth'});
			})
		},
		deselect(){

			this.selected = false;
			this.partner = false;
		},
		send(brand){

			let data = this.params;

			data.dealer = this.partner;
			data.vehicles = [parseInt(this.vehicle.id)];
			data.accessories_details = [];
			data.family = this.vehicle.family;

      this.cart.items.forEach(item=>{
				data.accessories_details.push({
					"quantity": item.quantity,
          "sku": item.sku
				})
			})

			this.error = false;
			this.sending = true;

			proxyRepository.createLead(brand, data).then((response)=>{

				this.sending = false;

				if( typeof response.error != 'undefined' ){

					this.error = response.error;
				}
				else{

					this.sent = true;

					cartRepository.clear();

					this.$nextTick(()=>{
						window.scroll(0, 0)
					})
				}
			})
		}
	},
	mounted() {
		eventBus.$on('dealer', dealer=>{
			this.partner = dealer
		})
	}
});
