<template>
  <section>
    <SingleCardPost v-for="(post, index) in posts" :key="index" 
      :post="post"/>
  </section>
</template>

<script>
import SingleCardPost from './SinglePostComponent.vue';
 
export default {
    name: 'PostsElement',

    props:{
      posts: Array,
    },

    components:{
      SingleCardPost,
    },

    data: function () {
      return{
      }
    },
}
</script>

<style>

</style>