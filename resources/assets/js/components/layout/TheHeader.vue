<template>
    <header class="position-fixed t-0 l-0 w-100 on-top d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <span class="brand fs-4">Trek & Saunter</span>
        </a>
    
        <ul class="nav">
            <li class="nav-item" v-for="( item, itemIdx ) in menu" :key="`menu-${itemIdx}`">
                <a :href="item.href" class="nav-link active">{{ item.title }}</a>
            </li>
        </ul>
    </header>
</template>
<script>
export default {
    data(){
        return {
            menu: [
                { "title" : "Home", "href": "/basics" },
                { "title" : "Adventures", "href": "/basics/adventures" },
                { "title" : "Let's Hike", "href": "##" }
            ]
        }
    }
}
</script>
<style lang="scss" scoped>
    header {
        background-color: rgba( 0,50,134,.3 );
        z-index: 100;

        a { color: #fff; }

        &:hover {
            background-color: rgba(0, 86, 107, 0.9);
        }
    }
    .brand {
        color: #fff;
        font-family: 'Fredericka the Great', cursive;
        padding-left: 25px;
    }
</style>
