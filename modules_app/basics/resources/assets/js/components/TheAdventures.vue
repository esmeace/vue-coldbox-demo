<template>
    <div>
        <the-page-header title="Adventures"/>

        <div class="page-content container pt-5">
            <div class="posts-stacked">
                <!-- individual post html, accesseses data from hardcoded mockData -->
                <article class="post-item">
                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img :src="`includes/content/${mockData.mainImg}`" alt="mock image" class="img-fluid">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h2 class="card-title"><a href="#">{{ mockData.title }}</a></h2>
                                    <p class="card-text"><small class="text-muted">{{ mockData.datePublished }}</small></p>
                                    <p class="card-text">{{ mockData.summary }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>

                <!-- component renders individual post, accesses data from hardcoded mockData -->
                <post-list-item
                    :date="mockData.datePublished"
                    :summary="mockData.summary"
                    :title="mockData.title"
                    :main-img="`includes/content/${mockData.mainImg}`"
                ></post-list-item>

                <!-- renders multiple posts, accesses fetched data from adventures -->
                 <post-list-item
                    :date="item.datePublished"
                    :key="item.id"
                    :summary="item.summary"
                    :title="item.title"
                    :main-img="`includes/content/${item.mainImg}`"
                    :post-url="`/basics/adventures/${item.slug}`"
                    v-for="item in adventures"
                ></post-list-item>

            </div>
        </div>
    </div>
</template>
<script>
import adventuresApi from "../api/adventures";

import ThePageHeader from "@/components/layout/ThePageHeader.vue"
import PostListItem from "@/components/PostListItem.vue"

export default {
    components: {
        PostListItem,
        ThePageHeader
    },
    data() {
        return {
            mockData: {
                datePublished: "2020-02-18 06:22:39.537",
                title : "Card Title",
                mainImg: "antelope-canyon-1128815_1280.jpg",
                summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Proin fermentum leo vel orci portal."
            },
            adventures : []
        };
    },
    created() {
        this.fetchAdventures();
    },
    methods: {
        /**
         * Fetches the posts
         */
		fetchAdventures(){
			adventuresApi.list()
				.then( ( result ) => {
                    this.$set( this, "adventures", result.data );
				} )
				.catch( ( e ) => {
					console.error( e );
				} );
		}
    }
}
</script>