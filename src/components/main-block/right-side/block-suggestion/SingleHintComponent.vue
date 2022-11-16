<template>
  <div class="d-flex align-items-center">
    <div class="ms_imgUser rounded-circle p-1 me-2 w-25">
      <img
        class="rounded-circle img-fluid w-100 h-100"
        :src="hint.profile_picture"
        :alt="`${hint.profile_name}'s image`"
      />
    </div>
    <div class="w-100">
      <p class="fw-bold m-0">{{ hint.profile_name }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "SingleHint",

  props: {
    hint: Object,
  },
};
</script>

<style lang="scss" scoped>
.ms_imgUser {
  max-width: 4rem;
  height: 4rem;
}
</style>