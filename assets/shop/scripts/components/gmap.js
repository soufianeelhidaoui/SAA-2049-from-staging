import Vue from 'vue';
import GoogleMapsApiLoader from 'google-maps-api-loader';
import proxyRepository from "../repositories/proxyRepository";
import eventBus from "../services/event-bus";
import { MarkerClusterer } from "@googlemaps/markerclusterer";

Vue.component('gmap', {
    props:['apiKey', 'brand', 'pin', 'color', 'skra', 'skdi'],
    data(){
        return{
            google: false,
            search:'',
            showResults: false,
            config:{
                style:[
                    {
                        "featureType": "poi",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    }
                ],
                map:{
                    center: { lat: 48.856614, lng: 2.3522219 },
                    zoom: 12,
                    mapTypeControl: false,
                    zoomControl: true,
                    scaleControl: false,
                    streetViewControl: false,
                    fullscreenControl: false
                },
                autocomplete:{
                    componentRestrictions: { country: "fr" },
                    strictBounds: false
                }
            },
            autocomplete: null,
            map: null,
            markers: []
        }
    },
    computed:{
        filtered(){
            if( this.search.length >= 1 ){

                return this.markers.filter(marker=>{
                    return marker.title.toLowerCase().indexOf(this.search.toLowerCase()) !== -1 || marker.postal_code.toString().indexOf(this.search) !== -1 || marker.city.toLowerCase().indexOf(this.search.toLowerCase()) !== -1
                })
            }
            else{
                return [];
            }
        }
    },
    methods:{
        createMarker(dealer){

            // Set the coordinates of the new point
            let latLng = new google.maps.LatLng(dealer.position.lat,dealer.position.lng);

            //Check Markers array for duplicate position and offset a little
            if(this.markers.length) {
                for (let i=0; i < this.markers.length; i++) {
                    let existingMarker = this.markers[i];
                    let pos = existingMarker.getPosition();
                    if (latLng.equals(pos)) {
                        let a = 360.0 / this.markers.length;
                        let newLat = pos.lat() + -.00004 * Math.cos((+a*i) / 180 * Math.PI);  //x
                        let newLng = pos.lng() + -.00004 * Math.sin((+a*i) / 180 * Math.PI);  //Y
                        latLng = new google.maps.LatLng(newLat,newLng);
                    }
                }
            }

            let params = {
                position: latLng,
                marker: dealer,
                map: this.map,
                icon: this.pin
            };

            if( typeof dealer.type !== 'undefined' && (dealer.type === 'SKRA' || dealer.type === 'SKDI') )
                params.icon = this[dealer.type.toLowerCase()];

            const marker = new this.google.maps.Marker(params)

            marker.addListener("click", () => { eventBus.$emit('dealer', dealer) });

            return marker;
        },
        initializeMap(){

            const mapContainer = this.$refs.googleMap

            this.map = new this.google.maps.Map(mapContainer, this.config.map)

            const styledMapType = new google.maps.StyledMapType(this.config.style)
            this.map.mapTypes.set("styled_map", styledMapType);
            this.map.setMapTypeId("styled_map");

            const autocompleteContainer = this.$refs.autocomplete
            this.autocomplete = new google.maps.places.Autocomplete(autocompleteContainer, this.config.autocomplete);

            proxyRepository.getDealers(this.brand).then(dealers=>{

                dealers.forEach(dealer=>{
                    this.markers.push(this.createMarker(dealer))
                })

                let color = this.color

                new MarkerClusterer({map:this.map, markers: this.markers, renderer:{
                        render({ count, position }, stats) {
                            const svg = window.btoa(`<svg fill="${color}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 240 240"><circle cx="120" cy="120" r="110" /></svg>`);
                            return new google.maps.Marker({
                                position,
                                icon: {
                                    url: `data:image/svg+xml;base64,${svg}`,
                                    scaledSize: new google.maps.Size(45, 45),
                                },
                                label: {
                                    text: String(count),
                                    color: "#fff",
                                    fontSize: "18px",
                                    fontWeight: "bold",
                                },
                                zIndex: Number(google.maps.Marker.MAX_ZINDEX) + count,
                            });
                        }
                    }});
            })

            this.autocomplete.addListener("place_changed", () => {

                const place = this.autocomplete.getPlace();

                if (!place.geometry || !place.geometry.location) {
                    window.alert("No details available for input: '" + place.name + "'");
                    return;
                }

                if (place.geometry.viewport) {
                    this.map.fitBounds(place.geometry.viewport);
                } else {
                    this.map.setCenter(place.geometry.location);
                    this.map.setZoom(17);
                }
            });
        },
        select(dealer){

            this.showResults = false;
            eventBus.$emit('dealer', dealer);

            this.map.panTo(dealer.position);
            this.map.setZoom(17);
        }
    },
    mounted(){

        GoogleMapsApiLoader({apiKey: this.apiKey, libraries:['places']}).then(googleMapApi=>{
            this.google = googleMapApi
            this.initializeMap()
        })
    }
});
