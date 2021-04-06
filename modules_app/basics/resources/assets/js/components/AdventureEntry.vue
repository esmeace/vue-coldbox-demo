<template>
    <div>
        <div class="post-hero">
            <div class="post-hero__image" :style="`background-image: url( ${imgPath} )`" v-if="adventure.mainImg"></div>
            <div class="post-hero__text" v-if="adventure.title">
                <h1>{{ adventure.title }}</h1>
            </div>
        </div>
        <div class="page-content container">
            <span class="text-muted">{{ formattedDate }}</span>
            <div v-html="adventure.content"></div>
        </div>
    </div>
</template>
<script>
import moment from "moment";
import adventuresApi from "../api/adventures";
import ThePageHeader from "@/components/layout/ThePageHeader.vue"
export default {
    components: {
        ThePageHeader
    },
    props: {
        slug: {
            type: String,
            required: true
        }
    },
    data() {
        return {
            adventure : {}
        };
    },
    computed:{
        imgPath() {
            return 'includes/images/' + this.adventure.mainImg;
        },
        formattedDate() {
            return moment( this.adventure.datePublished ).format( "MMMM DD, YYYY" );
        }
    },
    created() {
        this.fetchAdventure();
    },
    methods: {
        /**
         * Fetches the post
         */
		fetchAdventure(){
			adventuresApi.fetch( this.slug )
				.then( ( result ) => {
                    this.$set( this, "adventure", result.data );
				} )
				.catch( ( e ) => {
					console.error( e );
				} );
		}
    }
}
</script>