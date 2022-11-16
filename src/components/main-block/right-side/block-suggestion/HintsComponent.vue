<template>
  <section>
    <div class="d-flex justify-content-between">
    <p class="fw-bold text-muted">Suggerimenti per te</p>
    <p class="fw-bold">Mostra tutti</p>
    </div>
    <SingleHintComponent class="mb-3" v-for="(hint, index) in users" :key="index" :hint="hint" />
  </section>
</template>

<script>
import SingleHintComponent from './SingleHintComponent.vue';

export default {
    name:'HintsElement',

    props:{
      users: Array,
    },

    components:{
      SingleHintComponent
    },

    data: function () {
      return{
      }
    },
}
</script>

<style lang="scss" scoped>

</style>