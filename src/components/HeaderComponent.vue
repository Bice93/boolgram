<template>
  <header class="p-2">
    <div class="container d-flex justify-content-between align-items-center">
    <!-- Contenitore logo -->
    <div>
      <a href="#">
        <img src="../assets/img/logo.png" alt="boolgram's image" class="w-50" />
      </a>
    </div>
    <!-- Contenitore input di ricerca -->
    <div>
      <form class="d-flex" role="search">
        <input type="search" placeholder="Cerca" aria-label="Cerca"/>
      </form>
    </div>
    <!-- Contenitore icone link -->
    <div>
      <ul class="d-flex align-items-center ms_icon">
        <li class="m-2 fs-3">
          <a href="#">
            <i class="fa-regular fa-heart"></i>
          </a>
        </li>
        <li class="m-2 fs-3">
          <a href="#">
            <i class="fa-solid fa-house"></i>
          </a>
        </li>
        <li class="ms_avatar m-2">
          <img src="../assets/img/profile.jpg" alt="avatar's image" class="w-100" />
        </li>
      </ul>
    </div>
    </div>
  </header>
</template>

<script>
export default {
  name: "MainHeader",
};
</script>

<style lang="scss" scoped>
::-webkit-input-placeholder { text-align:center;}

.ms_icon {
  margin: 0;
  list-style: none;

  a {
    color: rgb(73, 73, 73);
  }
}

.ms_avatar {
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
    img{
      border-radius: 50%;
    }
}

header{
  border-bottom: 1px solid rgb(200, 200, 200);
}
</style>