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
              <i class="fa-regular fa-heart" @click="addLike()" v-if="isLiked == false"></i>
              <i class="fa-solid fa-heart red" @click="addLike()" v-else></i>
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
        <div v-if="post.likes.length == 0"></div>

        <div>
          <div v-if="post.likes.length == 1">
            <p>
              Piace a
              <span
                class="fw-bold"
                v-for="(element, index) in post.likes.slice(0, 1)"
                :key="index"
              >
                {{ element.username }}
              </span>
            </p>
          </div>
          <div v-else>
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
          </div>
        </div>

        <!-- Autore e testo del post -->
        <p class="card-text">
          <span class="fw-bold"> {{ post.profile_name }} </span>
          {{ post.post_text }}
        </p>

        <!-- Commenti -->
        <!-- Se i commenti sono presenti e sono meno di 3 -->
        <div v-if="post.comments.length > 0 && post.comments.length <= 3">
          <p v-for="(element, index) in post.comments" :key="index">
            <span class="fw-bold"> {{ element.username }} </span>
            {{ element.text }}
          </p>
        </div>
        <!-- Altrimenti se i commenti sono presenti e sono più di 3 -->
        <div v-else-if="post.comments.length > 0">
          <p class="text-muted comment" @click="isShown = !isShown">
            Mostra tutti e
            <span>
              {{ post.comments.length }}
            </span>
            i commenti...
          </p>

          <div v-if="post.comments.length >= 3 && isShown == false">
            <p
              v-for="(element, index) in post.comments.slice(0, 3)"
              :key="index"
            >
              <span class="fw-bold"> {{ element.username }} </span>
              {{ element.text }}
            </p>
          </div>

          <div v-else-if="post.comments.length >= 3 && isShown == true">
            <p v-for="(element, index) in post.comments" :key="index">
              <span class="fw-bold"> {{ element.username }} </span>
              {{ element.text }}
            </p>
            <p @click="isShown = !isShown" class="text-muted hide">
              Mostra meno commenti...
            </p>
          </div>
        </div>

        <div v-else>
          <p class="text-muted">Non ci sono commenti...</p>
        </div>
      </div>
    </div>

    <div class="px-3">
      <p class="text-muted fw-semibold">
        {{ newData(post.date.date) }}
      </p>
    </div>

    <div
      class="
        card-footer
        bg-transparent
        d-flex
        justify-content-between
        align-items-center
        py-3
      "
    >
      <i class="fa-regular fa-face-smile fs-3 me-2"></i>
      <input class="w-100" type="text" placeholder="Aggiungi un commento..." />
      <button type="submit">Pubblica</button>
    </div>
  </div>
</template>

<script>
import moment from 'moment';
export default {
  name: "SinglePost",

  props: {
    post: Object,
  },

  data: function () {
    return {
      isShown: false,
      isLiked: false,
    };
  },

  methods: {
    addLike(){
      event.preventDefault();
      this.isLiked = !this.isLiked;
    }, 

    newData(data) {
      let date = moment(data, "YYYYMMDD hh:mm:ss.ms").fromNow();
      if (date === 'a day ago'){
        date = '1 day ago'
      }
      return date;
    },
  },
};
</script>

<style lang="scss" scoped>
.red{
  color: red;
}
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

.comment,
.hide {
  cursor: pointer;
}
</style>