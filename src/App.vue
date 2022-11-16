<template>
  <div id="app">
    <HeaderComponent />
    <div v-if="isLoading">
      <LoaderComponent />
    </div>
    <div v-else>
      <MainComponent :users="users" :posts="posts"/>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import HeaderComponent from './components/HeaderComponent.vue';
import MainComponent from './components/main-block/MainComponent.vue';
import LoaderComponent from "./components/LoadingComponent.vue"

export default {
  name: 'App',
  components: {
    HeaderComponent,
    MainComponent,
    LoaderComponent
  },

    data: function() {
    return{
      users: [],
      posts: [],
      isLoading: true,
    }
  },

  methods:{
    // recupero i profili per le storie e suggerimenti
    getUsers: function(){
       axios.get('https://flynn.boolean.careers/exercises/api/boolgram/profiles')
        .then((result) => {
          //console.log(result.data);
          this.users = result.data;
          setTimeout ( () => {
            this.isLoading = false;
          }, 3000);
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
          setTimeout ( () => {
            this.isLoading = false;
          }, 3000);
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
