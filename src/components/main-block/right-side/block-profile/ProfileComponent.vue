<template>
  <section class="d-flex align-items-center">
    <div class="mx-2 ms_imgUser rounded-circle p-1 w-25">
        <img
          class="rounded-circle h-100"
          src="../../../../assets/img/profile.jpg" alt="user's image'"
        />
    </div>
    <div class="w-100">
      <p class="fw-bold m-0">michelepapagni</p>
      <p class="m-0 text-muted">Michele Papagni</p>
    </div>
    <div class="w-25">
      <p class="text-primary fw-bold">Passa a</p>
    </div>
  </section>
</template>

<script>
export default {
    name:'ProfileElement',
}
</script>

<style lang="scss" scoped>
.ms_imgUser {
  width: 4rem;
  height: 4rem;
}
</style>