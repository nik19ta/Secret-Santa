<template>
<div class="body">
  <div class="header_main" >
    <div class="wrapper">
      <div class="main">
        <div class="main_title">
          <p class="corplife">#corplife</p>
          <p class='titile_h1'>тайный <br>санта</p>
          <button v-if='loginStatus == "Error"' @click='toLogin'>Личный кабинет</button>
          <a v-else class="link" ><button>Мой профиль {{loginStatus}} </button></a>
        </div>
        <div class="members">
          <p class="now">уже принимает участие</p>
          <div class="line">
            <div class="col">
              <p class="numbers">{{numbers1}}</p>
              <p class="name">всего</p>
            </div>
            <div class="col">
              <p class="numbers">{{numbers2 < 0? 0:numbers2}}</p>
              <p class="name">дп</p>
            </div>
            <div class="col">
              <p class="numbers">{{numbers3 < 0? 0:numbers3}}</p>
              <p class="name">из отдела</p>
            </div>
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
  data: function() {
    return {
      numbers1: 0,
      numbers2: 0,
      numbers3: 0
    }
  },
  mounted: function() {
    let vm = this;
    fetch('http://194.242.120.163:3650/count/', {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "GET",
        })
        .then(response => response.text())
        .then((response) => {
          vm.numbers1 = JSON.parse(response).counts;
          vm.numbers2 = JSON.parse(response).deportaments;
          vm.numbers3 = JSON.parse(response).branches;
        })
        .catch(err => console.log(err))
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
    height: 620px;
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
    font-size: 24px;
    color: #494949;
    margin: 0;
    padding: 0;
  }
  .name {
    margin: 0;
    font-size: 24px;
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
    margin-top: auto;
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

  @media screen and (max-width: 2110px) {
    .body {
      height: 600px;
    }
  }
  @media screen and (max-width: 2000px) {
    .body {
      height: 580px;
    }
  }

  @media screen and (max-width: 1890px) {
    .body {
      height: 520px;
    }
  }
  @media screen and (max-width: 1680px) {
    .body {
      height: 420px;
    }
    .now {
      font-size: 20px;
    }
    .name {
      font-size: 20px;
    }
    .numbers {
      font-size: 50px;
    }
  }
  @media screen and (max-width: 1430px) {
    button {
      height: 50px;
      font-size: 20px;
    }
    .body {
      height: 355px;
    }
    .titile_h1 {
      font-size: 62px;
      line-height: 60px;
    }
    .corplife {
      font-size: 20px;
    }
    .members {
      width: 25%;
      margin-right: 20%;
      margin-top: 10%;
    }
    .now {
      font-size: 16px;
    }
    .name {
      font-size: 16px;
    }
    .numbers {
      font-size: 42px;
    }
  }
</style>
