<template>
   <section class="bg-cover">
        <div class="container-cover">
            <div class="sticky-cover">
                <div class="img-container bg-cover" style="background-image:url('/includes/images/alberta-2297204_1280.jpg')"></div>
            </div>
            <div class="form-group hero-field" v-show="showForm">
                <button @click="showForm = false" class="close-btn btn" v-if="trailName"><i class="fas fa-times" aria-hidden="true"></i></button>
                <div class="form-floating mb-3">
                    <input type="trailname" class="form-control" id="floatingInput" placeholder="friend" v-model="trailName">
                    <label for="floatingInput">What is your trail name?</label>
                  </div>
            </div>
            <div class="text-lg-container">
                <p class="hero-text text-white">
                    Hello<a href="##" v-if="trailName" @click.prevent="showForm=true"> {{ trailName }}</a>! Nature heals the body, the mind, and the soul.<br/>
                    <a href="##" class="btn btn-lg btn-primary">Let's Hike</a>
                </p>
            </div>
        </div>
    </section>
</template>
<script>
    export default {
        data() {
            return {
                trailName: "",
                showForm: true
            };
        }
    };
</script>