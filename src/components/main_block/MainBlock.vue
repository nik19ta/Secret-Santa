<template>
<div class="body">
  <div class="wrapper">
    <div class="main">
      <div class="main_title">
        <p class="corplife">#corplife</p>
        <p class='titile_h1'>тайный <br>санта</p>
        <button v-if='loginStatus == "Error"' @click='toLogin'>Войти</button>
        <router-link v-else class="link" to="/profile"><button>Мой профиль {{loginStatus}} </button></router-link>
      </div>
      <div class="members">
        <p class="now">уже принимает участие</p>
        <div class="line">
          <div class="col">
            <p class="numbers">345</p>
            <p class="name">всего</p>
          </div>
          <div class="col">
            <p class="numbers">3</p>
            <p class="name">дп</p>
          </div>
          <div class="col">
            <p class="numbers">45</p>
            <p class="name">из отдела</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: "MainBlock",
  props: {
    loginStatus: {}
  },
  methods: {
    toLogin() {
      this.$emit('toLogin')
    }
  }
}
</script>

<style scoped>
a {
  color: #fff;
  text-decoration: none;
}

.body {
  padding: 10px;
  height: 550px;
  background-color: #00A460;
  background-image: url("../../assets/santas/santa_homepage.svg");
  background-size: cover;
  background-repeat: no-repeat;
  box-shadow: 0px 7px 20px rgba(0, 0, 0, 0.1);
  border-radius: 0px 0px 150px 150px;
}

.wrapper {
  margin-right: auto;
  margin-left: auto;
  max-width: 70%;
}

.titile_h1 {
  font-weight: bold;
  font-size: 80px;
  line-height: 80px;
  color: white;
  margin: 0;

}

.line {
  display: flex;
  justify-content: space-between;

}

.now {
  font-size: 20px;
  color: #494949;
  margin: 0;
  padding: 0;
}

.name {
  margin: 0;
  font-size: 20px;
  color: #494949;
  font-family: CrocWebRegular;
}

.numbers {
  margin: 0px;
  font-size: 50px;
  color: #00A460;
}

.members {
  width: 25%;
  margin-left: auto;
  margin-right: 20%;
  margin-top: 8%;
}

.corplife {
  font-size: 24px;
  padding-top: 15px;
  font-family: CrocWebLight;
  color: white;
}

.main_title {
  display: flex;
  flex-direction: column;
}


.main {
  display: flex;
  flex-direction: row;
}


.link {
  text-decoration: none;
  color: white;
}

button {
  outline: none;
  cursor: pointer;
  height: 60px;
  width: 100%;
  border: none;
  background-color: #FF645A;
  color: white;
  margin-top: 50px;
  border-radius: 30px;
  font-weight: bold;
  font-size: 24px;
}

button:hover {
  background-color: #b04740;
}
</style>
