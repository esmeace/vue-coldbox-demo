import "bootstrap";
import "@fortawesome/fontawesome-free/js/fontawesome";
import "@fortawesome/fontawesome-free/js/solid";


window.Vue = require( 'vue' );

import Hola from './components/Hola.vue';
import TheFooter from './components/layout/TheFooter.vue';
import TheHeader from './components/layout/TheHeader.vue';

new Vue( {
    el : '#app',

    components : { 
        Hola,
        TheFooter, 
        TheHeader 
    },

    mounted : function() {
        if ( Vue.config.devtools && console.log ) {
            console.log( 'ColdBox, Vue and Vueify all set to go!' );
            console.log( "Vue Version " + Vue.version );
        }
    }
} );
