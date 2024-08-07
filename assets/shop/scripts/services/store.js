import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

let store = new Vuex.Store({
  state(){
    return {
      taxMode: 'ttc',
      vehicle: sessionStorage.getItem('vehicle'),
      version: sessionStorage.getItem('version'),
      vehicleId: sessionStorage.getItem('vehicleId'),
      cart: {
        items: []
      }
    }
  },
  getters: {
    taxMode: state => () =>{
      return state.taxMode;
    },
    cart: state => () =>{
      return state.cart;
    },
    vehicle: state => () =>{
      return state.vehicle !== 'false' && state.vehicle !== 'undefined' ? state.vehicle : false;
    },
    version: state => () =>{
      return state.version !== 'false' && state.version !== 'undefined' ? state.version : false;
    },
    vehicleId: state => () =>{
      return state.vehicleId !== 'false' && state.vehicleId !== 'undefined' ? state.vehicleId : false;
    }
  },
  mutations:{
    cart(state,cart){
      state.cart = cart;
    },
    taxMode(state,taxMode){
      state.taxMode = taxMode;
    },
    vehicle(state,vehicle){
      sessionStorage.setItem('vehicle', vehicle);
      state.vehicle = vehicle;
    },
    version(state,version){
      sessionStorage.setItem('version', version);
      state.version = version;
    },
    vehicleId(state,vehicleId){
      sessionStorage.setItem('vehicleId', vehicleId);
      state.vehicleId = vehicleId;
    }
  }
});

export default store;
