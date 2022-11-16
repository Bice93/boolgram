<template>
  <div id="app">
    <HeaderComponent />
    <MainComponent :users="users" :posts="posts"/>
  </div>
</template>

<script>
import axios from 'axios';
import HeaderComponent from './components/HeaderComponent.vue';
import MainComponent from './components/main-block/MainComponent.vue';

export default {
  name: 'App',
  components: {
    HeaderComponent,
    MainComponent,
  },

    data: function() {
    return{
      users: [],
      posts: [],
    }
  },

  methods:{
    // recupero i profili per le storie e suggerimenti
    getUsers: function(){
       axios.get('https://flynn.boolean.careers/exercises/api/boolgram/profiles')
        .then((result) => {
          //console.log(result.data);
          this.users = result.data;
        })
        .catch((error) => {
          console.warn(error);
        })
    },

    // recupero i post
    getPosts: function(){
       axios.get('https://flynn.boolean.careers/exercises/api/boolgram/posts')
        .then((result) => {
          console.log(result.data);
          this.posts = result.data;
        })
        .catch((error) => {
          console.warn(error);
        })
    },
  },

  created() {
    this.getUsers();
    this.getPosts();
  },
}
</script>

<style lang="scss">
@import "~bootstrap/scss/bootstrap.scss";
// @import "./styles/general.scss";

</style>
