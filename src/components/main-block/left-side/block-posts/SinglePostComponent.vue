<template>
  <div class="card mb-5 ms_cardPost">
    <div class="card-header bg-transparent d-flex align-items-center">
      <div class="mx-2 ms_imgUser rounded-circle w-25">
        <img
          class="rounded-circle w-100 h-100 img-fluid"
          :src="post.profile_picture"
          :alt="`${post.profile_name}'s image`"
        />
      </div>
      <div>
        <h4>
          {{ post.profile_name }}
        </h4>
      </div>
    </div>

    <div class="card-body p-0">
      <!-- Contenitore immagine post -->
      <div class="w-100">
        <img
          class="w-100"
          :src="post.post_image"
          :alt="`${post.post_image}'s image`"
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
        <p>
          Piace a
          <span
            class="fw-bold"
            v-for="(element, index) in post.likes.slice(0, 1)"
            :key="index"
          >
            {{ element.username }}
          </span>
          e altre
          <span class="fw-bold"> {{ post.likes.length - 1 }} </span> persone
        </p>

        <!-- Autore e testo del post -->
        <p class="card-text">
          <span class="fw-bold"> {{ post.profile_name }} </span>
          {{ post.post_text }}
        </p>

        <!-- Commenti -->
        <div>
          <p class="text-muted">
            Mostra tutti e
            <span>
              {{ post.comments.length }}
            </span>
            i commenti...
          </p>
          <p v-for="(element, index) in post.comments.slice(0, 3)" :key="index">
            <span class="fw-bold"> {{ element.username }} </span>
            {{ element.text }}
          </p>
        </div>
      </div>
    </div>

    <div
      class="
        card-footer
        bg-transparent
        d-flex
        justify-content-between
        align-items-center
        py-3
      " >
      <i class="fa-regular fa-face-smile fs-3 me-2"></i>
      <input class="w-100" type="text" placeholder="Aggiungi un commento..." />
      <button type="submit">Pubblica</button>
    </div>
    
  </div>
</template>

<script>
export default {
  name: "SinglePost",

  props: {
    post: Object,
  },

  data: function () {
    return {};
  },

  methods: {},
};
</script>

<style lang="scss" scoped>
.ms_cardPost {
  border-radius: 0.2rem;
}

.ms_imgUser {
  max-width: 4rem;
  height: 4rem;
}

.ms_icon {
  margin: 0;
  list-style: none;

  a {
    color: rgb(73, 73, 73);
  }
}

.card-footer {
  input {
    border: none;
  }
  button {
    border: none;
    background: transparent;
  }
}
</style>