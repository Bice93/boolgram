<template>
  <div class="ms_stories p-1">
    <img class="rounded-circle img-fluid w-100 h-100" :src="user.profile_picture" :alt="`${user.profile_name}'s image`">
  </div>
</template>

<script>
export default {
  name:'SingleStory',

  props: {
    user: Object,
  }
}
</script>

<style lang="scss" scoped>
.ms_stories{
  min-width: 7rem;
  height: 7rem;
  background: linear-gradient(white, white) padding-box,
              linear-gradient(to right,magenta, yellow) border-box;
  border-radius: 50%;
  border: 3px solid transparent;
}
</style>