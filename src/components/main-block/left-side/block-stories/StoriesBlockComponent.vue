<template>
  <section class="scroll d-flex">
    <SingleCardStory class="me-2" v-for="(user, index) in users" :key="index" :user="user"/>
  </section>
</template>

<script>
import SingleCardStory from './SingleStoryComponent.vue';

export default {
    name:'StoriesElement',

    props:{
      users: Array,
    },

    components:{
      SingleCardStory,
    },

    data: function () {
      return{
      }
    },
}
</script>

<style lang="scss" scoped>
section{
  border: 1px solid rgb(200, 200, 200);
}

.scroll{
  overflow-x: scroll;
}

.scroll::-webkit-scrollbar{
  height: .3rem;
}

.scroll::-webkit-scrollbar-track {
  background: rgb(221, 221, 221);
}

.scroll::-webkit-scrollbar-thumb {
  background: rgb(128, 128, 128);
}
</style>