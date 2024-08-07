import Vue from 'vue';

Vue.component('price', {
	computed:{
		mode(){
			return this.$store.getters.taxMode()
		}
	}
});
