<template>
  <div class="card mb-5 ms_cardPost">
    <div class="card-header bg-transparent d-flex align-items-center">
      <div class="mx-2 ms_imgUser rounded-circle p-1">
        <img
          class="rounded-circle h-100"
          :src="require('../../../../assets/img/' + imageUser)"
          :alt="nameUser + 's image'"
        />
      </div>
      <div>
        <h4>
          {{ nameUser }}
        </h4>
      </div>
    </div>
    <div class="card-body p-0">
      <!-- Contenitore immagine post -->
      <div class="w-100">
        <img
          class="w-100"
          :src="require('../../../../assets/img/' + imagePost)"
          :alt="imagePost + 's image'"
        />
      </div>
      <!-- Contenitore icone post -->
      <div class="px-2">
        <ul class="d-flex align-items-center ms_icon p-0">
          <li class="m-2 fs-3">
            <a href="#">
              <i class="fa-regular fa-heart"></i>
            </a>
          </li>
          <li class="m-2 fs-3">
            <a href="#">
              <i class="fa-regular fa-comment"></i>
            </a>
          </li>
          <li class="m-2 fs-3">
            <a href="#">
              <i class="fa-regular fa-paper-plane"></i>
            </a>
          </li>
        </ul>
      </div>
      <!-- Contenitore like e commenti -->
      <div class="px-3">
        <p>Piace a {{ like }} persone</p>
        <p class="card-text"><span class="fw-bold"> {{ nameUser }} </span> {{ textPost }} </p>
        <p class="text-muted">Mostra tutti e  {{ comments.length }} i commenti...</p>
      </div>
    </div>
    <div class="card-footer bg-transparent d-flex justify-content-between align-items-center py-3">
      <i class="fa-regular fa-face-smile fs-3 me-2"></i>
      <input class="w-100" type="text" placeholder="Aggiungi un commento...">
      <button type="submit">Pubblica</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "SinglePost",

  props: {
    nameUser: String,
    imageUser: String,
    imagePost: String,
    textPost: String,
    like: Number,
    comments: Array,
  },
};
</script>

<style lang="scss" scoped>
.ms_cardPost{
  border-radius: .2rem;
}

.ms_imgUser {
  width: 4rem;
  height: 4rem;
}

.ms_icon {
  margin: 0;
  list-style: none;

  a {
    color: rgb(73, 73, 73);
  }
}

.card-footer{
  input{
    border: none;
  }
  button{
    border: none;
    background: transparent;
  }

}
</style>