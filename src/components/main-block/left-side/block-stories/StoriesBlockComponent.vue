<template>
  <section class="d-flex scroll">
    <SingleCardStory v-for="(element, index) in stories" :key="index" :image="element.img"/>
  </section>
</template>

<script>
import SingleCardStory from './SingleStoryComponent.vue';

export default {
    name:'StoriesElement',

    components:{
      SingleCardStory,
    },

    data: function () {
      return{
        stories: [
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },
        {
          img: "landscape.png",
        },

      ],
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