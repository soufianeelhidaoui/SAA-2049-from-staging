import Vue from "vue";

export default {

	getDealers(brand) {

		return new Promise((resolve, reject) => {

			Vue.http.get('/api/dealers', {params:{brand:brand}}).then(response=>{

				resolve(response.body);

			}, reject)
		});
	},

	createLead(brand, data) {

		return new Promise((resolve, reject) => {

      data.brand = brand;

			Vue.http.post('/api/lead', data).then(response=>{

				resolve(response.body);

			}, reject)
		});
	}
};
