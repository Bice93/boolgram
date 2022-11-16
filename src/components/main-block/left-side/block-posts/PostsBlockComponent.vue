<template>
  <section>
    <SingleCardPost v-for="(element, index) in posts" :key="index" 
      :nameUser="element.nameUser"
      :imageUser="element.imgUser"
      :imagePost="element.imgPost"
      :textPost="element.txtPost"
      :like="element.totalLike"
      :comments="element.comments"/>
  </section>
</template>

<script>
import SingleCardPost from './SinglePostComponent.vue';
 
export default {
    name: 'PostsElement',

    components:{
      SingleCardPost,
    },

    data: function () {
      return{
        posts: [
        {
          nameUser: 'John',
          imgUser: "landscape.png",
          imgPost: "landscape.png",
          txtPost: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo.",
          totalLike: 5,
          comments: [
            {
              txtComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
            {
              textComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
            {
              textComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
          ],
        },

        {
          nameUser: 'Andrea',
          imgUser: "landscape.png",
          imgPost: "landscape.png",
          txtPost: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo.",
          totalLike: 5,
          comments: [
            {
              txtComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
            {
              textComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
            {
              textComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
            {
              textComment: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum ullam vitae deleniti doloremque nemo."
            },
          ],
        },
      ],
      }
    },
}
</script>

<style>

</style>