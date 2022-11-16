<template>
  <main class="container pt-5">
    <div class="row">
      <!-- Blocco sinistra -->
      <div class="col-7">
        <StoriesComponent :users="users" class="p-4"/>
        <PostsComponent :posts="posts" class="mt-5"/>
      </div>
      <!-- Blocco destra -->
      <div class="col-5">
        <ProfileComponent class="px-5 mb-5"/>
        <HintsComponent :users="users" class="px-5 mb-5"/>
        <FooterComponent class="px-5"/>
      </div>
    </div>
  </main>
</template>

<script>
import StoriesComponent from "./left-side/block-stories/StoriesBlockComponent.vue";
import PostsComponent from "./left-side/block-posts/PostsBlockComponent.vue";
import ProfileComponent from "./right-side/block-profile/ProfileComponent.vue";
import HintsComponent from "./right-side/block-suggestion/HintsComponent.vue";
import FooterComponent from "./right-side/FooterComponent.vue";


export default {
  name: "MainMain",
  props:{
      users: Array,
      posts: Array,
  },

  components: {
    StoriesComponent,
    PostsComponent,
    ProfileComponent,
    HintsComponent,
    FooterComponent,
  },

  methods:{
      getProfile(){
        //console.log(this.users)
      }
    },

    created(){
      this.getProfile();
    }
};
</script>

<style>
</style>