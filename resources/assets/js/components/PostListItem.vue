<template>
    <article class="post-item">
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <img :src="mainImg" alt="test" class="img-fluid">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h2 class="card-title">
                            <a :href="postUrl" v-if="postUrl">{{ title }}</a>
                            <span v-else>{{ title }}</span>
                        </h2>
                        <p class="card-text"><small class="text-muted">{{ date }}</small></p>
                        <p class="card-text">{{ summary }}</p>
                    </div>
                </div>
            </div>
        </div>
    </article>
</template>
<script>
export default {
    props: {
        date : {
            type: String
        },
        mainImg : {
            type: String
        },
        postUrl: {
            type: String
        },
        title: {
            type: String,
            required: true
        },
        summary : {
            type: String
        }
    }
}
</script>