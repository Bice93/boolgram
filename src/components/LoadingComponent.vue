<template>
  <div class="container ms_container mt-5">
    <div class="row">
      <!-- Blocco sinistra -->
      <div class="col-7">
        <div class="box_stories p-3">
          <div class="text-center mb-2">
            <img src="../assets/img/spinner.gif" alt="spinners's gif" />
          </div>
          <div>
            <i class="fa-solid fa-circle icon_stories"></i>
            <i class="fa-solid fa-circle icon_stories"></i>
            <i class="fa-solid fa-circle icon_stories"></i>
            <i class="fa-solid fa-circle icon_stories"></i>
            <i class="fa-solid fa-circle icon_stories"></i>
          </div>
        </div>

        <div class="card mb-3 ms_cardPost mt-5">
          <div class="card-header bg-transparent d-flex align-items-center">
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>
          <div class="card-body text-dark ms_cardBody"></div>
        </div>
      </div>
      
      <!-- Blocco destra -->
      <div class="col-5">
        <div class="d-flex align-items-center px-5 mb-5">
          <div class="mx-2 ms_imgUser rounded-circle p-1 w-25">
            <img
              class="rounded-circle h-100"
              src="../assets/img/profile.jpg"
              alt="user's image'"
            />
          </div>
          <div class="w-100">
            <p class="fw-bold m-0">michelepapagni</p>
            <p class="m-0 text-muted">Michele Papagni</p>
          </div>
          <div class="w-25">
            <p class="text-primary fw-bold">Passa a</p>
          </div>
        </div>

        <div class="px-5 mb-5">
          <div class="d-flex justify-content-between">
            <p class="fw-bold text-muted">Suggerimenti per te</p>
            <p class="fw-bold">Mostra tutti</p>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>

          <div
            class="card-header bg-transparent d-flex align-items-center mb-2"
          >
            <i class="fa-solid fa-circle icon_user"></i>
            <div>
              <div class="firstTxt mb-1"></div>
              <div class="secondTxt"></div>
            </div>
          </div>
        </div>

        <div class="px-5">
          <p class="text-muted">&#169; 2020 INSTAGRAM FROM FACEBOOK</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.ms_container {
  height: 80vh;
  padding: 0;
  animation: load 3s;
}

@keyframes load{
  0%{
    opacity: 0;
  }
}

.box_stories {
  border: 1px solid lightgrey;
  .icon_stories {
    font-size: 6rem;
    margin-right: 1rem;
    color: lightgrey;
  }
}

.ms_cardPost {
  border-radius: 0.2rem;
  height: 52vh;
  .ms_cardBody {
    background-color: lightgrey;
  }
}

.icon_user {
  font-size: 3rem;
  margin-right: 1rem;
  color: lightgrey;
}

.firstTxt {
  width: 10rem;
  height: 0.5rem;
  border: 1px solid lightgrey;
  background-color: lightgrey;
}

.secondTxt {
  width: 6rem;
  height: 0.5rem;
  border: 1px solid lightgrey;
  background-color: lightgrey;
}

.ms_imgUser {
  width: 4rem;
  height: 4rem;
}
</style>