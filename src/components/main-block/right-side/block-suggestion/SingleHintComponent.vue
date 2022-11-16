<template>
  <div class="d-flex align-items-center mb-3">
    <div class="me-2 ms_imgUser rounded-circle p-1">
      <img
        class="rounded-circle h-100"
        :src="require('../../../../assets/img/' + imageUser)"
        alt="user's image'"
      />
    </div>
    <div class="w-100">
      <p class="fw-bold m-0">{{ nameUser }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "SingleHint",

  props: {
    imageUser: String,
    nameUser: String,
  },
};
</script>

<style lang="scss" scoped>
.ms_imgUser {
  width: 4rem;
  height: 4rem;
}
</style>