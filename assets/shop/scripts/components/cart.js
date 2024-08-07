import Vue from 'vue';

Vue.component('cart', {
  computed:{
    cart(){
      return this.$getCart()
    }
  },
  methods:{
    updateCart(line, quantity){

      let item = this.cart.items[line-1];
      item.quantity = quantity;

      let event = new CustomEvent("cart-change", {detail: item});
      document.dispatchEvent(event);
    }
  }
});