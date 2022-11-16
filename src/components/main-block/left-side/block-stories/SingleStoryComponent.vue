<template>
  <div class="mx-2 ms_stories rounded-circle p-1">
    <img class="rounded-circle h-100" :src="require('../../../../assets/img/' + image)" alt="story's image">
  </div>
</template>

<script>
export default {
  name:'SingleStory',

  props: {
    image:String,
  }
}
</script>

<style lang="scss" scoped>
.ms_stories{
  width: 7rem;
  height: 7rem;
  border: 2px solid gray;
}
</style>