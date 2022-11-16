<template>
  <div id="app">
    <HeaderComponent />
    <MainComponent :users="users"/>
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
    }
  },

  created() {
    this.getUsers();
  }
}
</script>

<style lang="scss">
@import "~bootstrap/scss/bootstrap.scss";
// @import "./styles/general.scss";

</style>
