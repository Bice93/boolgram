<template>
  <div class="ms_stories rounded-circle p-1">
    <img class="rounded-circle img-fluid w-100 h-100" :src="user.profile_picture" :alt="`${user.profile_name}'s image`">
  </div>
</template>

<script>
export default {
  name:'SingleStory',

  props: {
    user: Object,
    // imageUser:String,
    // nameUser:String,
  }
}
</script>

<style lang="scss" scoped>
.ms_stories{
  min-width: 7rem;
  height: 7rem;
  border: 2px solid gray;
}
</style>