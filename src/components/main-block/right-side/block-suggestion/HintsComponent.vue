<template>
  <section>
    <div class="d-flex justify-content-between">
    <p class="fw-bold text-muted">Suggerimenti per te</p>
    <p class="fw-bold">Mostra tutti</p>
    </div>
    <SingleHintComponent v-for="(element, index) in hints" :key=index :imageUser=element.imgUser :nameUser=element.nameUser />
  </section>
</template>

<script>
import SingleHintComponent from './SingleHintComponent.vue';

export default {
    name:'HintsElement',

    components:{
      SingleHintComponent
    },

    data: function () {
      return{
        hints: [
        {
          imgUser: "landscape.png",
          nameUser: "John"
        },
        {
          imgUser: "landscape.png",
          nameUser: "John"
        },
        {
          imgUser: "landscape.png",
          nameUser: "John"
        },
        {
          imgUser: "landscape.png",
          nameUser: "John"
        },
        {
          imgUser: "landscape.png",
          nameUser: "John"
        },
      ],
      }
    },
}
</script>

<style lang="scss" scoped>

</style>