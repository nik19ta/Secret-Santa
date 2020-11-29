<template>
<div class="card">
  <div class="wrapper">
    <p class="title">ты стал <br>тайным сантой</p>
    <div class="about_block">
      <div class="user">
        <img src="../../assets/avatar.png" class="avatar">
        <p v-if="this.dataProf.isPart == false" class="name">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="name">{{par.Name}}</p>
        <!-- <p v-if="this.dataProf.isPart == false" class="about">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="about">{{par.aboutMe}}</p> -->
      </div>
      <div class="text">
        <div class="div_in_block" >
        <p class="name">О колллеге: </p>
        <p v-if="this.dataProf.isPart == false" class="text_in_div_ab">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="text_in_div_ab">{{par.aboutMe}}</p>
        </div>
        <div class="div_in_block" >
        <p class="name">Он точно будет рад:</p>
        <p v-if="this.dataProf.isPart == false" class=" text_in_div_ab">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class=" text_in_div_ab">{{par.whiteList}}</p>
        </div>
        <div class="div_in_block" >
        <p class="name">Лучше не дарить:</p>
        <p v-if="this.dataProf.isPart == false" class="text_in_div_ab">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="text_in_div_ab">{{par.blackList}}</p>
        </div>
      </div>
    </div>
    <div class="info">
      <div class="div_in_block">
        <p class="name">Адресс доставки: </p>
        <p v-if="this.dataProf.isPart == false" class="text_in_div_ab">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="text_in_div_ab">{{par.adress}}</p>
      </div>
      <div class="div_in_block">
        <p class="name">Удобные даты и время доставки: </p>
        <p v-if="this.dataProf.isPart == false" class="text_in_div_ab">Мы пока не подобрали вам пару.</p>
        <p v-if="this.dataProf.isPart" class="text_in_div_ab">{{par.deliveryDate}}</p>
      </div>
      <div>
        <div class="row" >
          <button>Скачать ваучер на доставку</button>
          <img @mouseenter="() => start(2)" @mouseleave="() => stop(2)" class="info_img img_2 " src="../../assets/green_info.png" alt="info">
          <div class="text_ps ps_2">
            <p class="about_text">Мы уже подготовили и оплатили доставку твоего подарка. Скачай ваучер для того, чтобы отправить подарок службой Major Express.</p>
          </div>
        </div>
        <div class="row" >
          <button class="discount">Получить скидку</button>
          <img @mouseenter="() => start(3)" @mouseleave="() => stop(3)" class="info_img img_3 " src="../../assets/green_info.png" alt="info">
          <div class="text_ps ps_3">
            <p class="about_text">Ты сможешь получить скидку в декабрьском боброшопе после того, как отправишь свой подарок.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="present_info">
      <hr>
      <div class="form" >
        <p class="name">Если ты уже подготовил подарок, расскажи о нем:</p>
        <label for="present_name">Название подарка</label>
        <div class="input_block">
          <input id="present_name" type="text" v-model="present_name">
          <div class="info_visited"></div>
        </div>

        <label for="wish">Пожелание</label>
        <div class="input_block">
          <input id="wish" type="text" v-model="wish">
          <div class="info"></div>
        </div>
<!-- 
        <label for="gift">Как будешь дарить</label>
        <select name="gift" v-model="gift" id="gift">
          <option value="">Лично</option>
          <option value="">Через HR</option>
        </select> -->
        <button class='disabled' >Подарок готов</button>
      </div>
      <hr>
      <div class="status">
        <div class="first_step">
          <!-- Картинка меняется на ../../assets/profile_vectors/active/1step.svg, когда нажимается кнопка "Подарок готов" в профиле -->
          <img src="../../assets/profile_vectors/inactive/1step.svg" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Подарок готов" в профиле (меняется класс на circle_active) -->
          <div class="circle_inactive"></div>
          <p class="about">Подготовка подарка</p>
        </div>

        <!-- Полоска загорается зеленым, когда нажимается кнопка "Подарок готов" в профиле (меняется класс на status_hr_active) -->
        <div class="status_hr_inactive"></div>

        <div class="second_step">
          <!-- Картинка меняется на ../../assets/profile_vectors/active/2step.svg, когда нажимается кнопка "Отправить подарок" в админ панели -->
          <img src="../../assets/profile_vectors/inactive/2step.svg" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Отправить подарок" в админ панели -->
          <div class="circle_inactive"></div>
          <p class="about">Подарок ждет своего получателя</p>
        </div>

        <!-- Полоска загорается зеленым, когда нажимается кнопка "Отправить подарок" в админ панели -->
        <div class="status_hr_inactive"></div>

        <div class="third_step">
          <!-- Картинка меняется на ../../assets/profile_vectors/active/3step.svg, когда нажимается кнопка "Подарок получен" в админ панели -->
          <img src="../../assets/profile_vectors/inactive/3step.svg" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Подарок получен" в админ панели -->
          <div class="circle_inactive"></div>
          <p class="about">Ура! Твой подарок получили :)</p>
        </div>
      </div>
    </div>
    <p v-if="isSend" class="name">Иван Иванов уже получил твой подарок и написал тебе: </p>
    <div v-if="isSend" class="feedback"><p class="feedbackText">asdasd</p></div>
  </div>
</div>
</template>

<script>
export default {
  name: 'ProfileCard',
  props: {
    dataProf: {},
    isSend: {},
    par: {}
  },
  methods: {
    start(data) {
                document.querySelector(`.ps_${data}`).classList.add("vis");
                document.querySelector(`.img_${data}`).src = require("../../assets/visited_info.png")
  },
    stop(data) {
                document.querySelector(`.img_${data}`).src = require("../../assets/green_info.png")
                document.querySelector(`.ps_${data}`).classList.remove("vis");
    }
  },
  mounted() {
    // this.dataProf.isPart
    // fetch('http://localhost:3650/get_info', {
    //     headers: {
    //       'Accept': 'application/json',
    //       'Content-Type': 'application/json'
    //     },
    //     method: "GET",
    //   })
    //   .then(response => response.text())
    //   .then((response) => {
    //     vm.numbers1 = JSON.parse(response).counts;
    //     vm.numbers2 = JSON.parse(response).deportaments;
    //     vm.numbers3 = JSON.parse(response).branches;
    //   })
    //   .catch(err => console.log(err))
  },
  components: {}
}
</script>

<style scoped>
.disabled{
  
}
.about_text {
    color: #494949;
    font-size: 15px;
    line-height: 132.2%;
    font-family: CrocWebLight;
    font-style: normal;
    font-weight: normal;
  }
.info_img {
    height: 40px;
    margin-left: 10px;
    margin-top: -10px;
    width: 40px;
  }
.text_ps{
  display: none;
  visibility: hidden;
  width: 100%;
  max-width: 400px;
  position: absolute;
  z-index: 2;
  background: #FFFFFF;
  box-shadow: 0px 14px 60px rgba(0, 0, 0, 0.1);
  border-radius: 20px;
  right: -22%;
  top: 0;
  padding: 10px;
}
.row{
   display: flex;
   align-items: center;
   width: 100%;
   position: relative;
  }
.vis {
    visibility: visible;
    display: flex;
  }
.div_in_block{
  width: 100%;
  height: 50px;
  margin-bottom: 20px;
}
  .card {
    margin-top: 40px;
    margin-left: 40px;
    min-height: 80%;
    min-width: 45%;
    background-color: white;
    border-radius: 40px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    min-height: 1440px;
  }
  .form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 30px;
  }
  .title {
    font-size: 42px;
    line-height: 32px;
  }
  .adress {
    display: flex;
    flex-direction: column;
  }
  .date {
    display: flex;
    flex-direction: column;
  }
  .info button {
    margin-top: 10px;
    margin-bottom: 15px;
  }
  .feedback {
    width: 450px;
    padding: 10px;
    font-size: 16px;
    background-color: #FCFCFC;
    border-radius: 15px;
    border-style: solid;
    border-color: #DDDDDD;
    min-height: 150px;
    margin-bottom: 20px;
   }
  .feedbackText {
    color: #494949;
    font-size: 16px;
    min-height: 40px;
    margin: 0;
  }
  label {
    color: #6B6B6B;
    padding-left: 20px;
    padding-bottom: 10px;
    padding-top: 20px;
    font-size: 20px;
  }
  button {
    cursor: pointer;
    align-self: flex-start;
    height: 50px;
    margin-top: 30px;
    border: none;
    width: 50%;
    background-color: #ff645a;
    color: white;
    border-radius: 30px;
    border-color: #DDDDDD;
    font-family: CrocWebRegular;
    font-size: 20px;
  }
  .discount {
    background-color: grey;
    color: white;
  }
  .discount:hover {
    background-color: #454545;
  }
  button:hover {
    background-color: #b04740;
  }
  input {
    outline: none;
    padding-left: 10px;
    padding-right: 10px;
    font-size: 20px;
    border-radius: 30px;
    border-style: solid;
    border-color: #DDDDDD;
    background-color: #FCFCFC;
    height: 50px;
    width: 100%;
  }
  select {
    cursor: pointer;
    outline: none;
    width: 100%;
    height: 40px;
    font-size: 20px;
    background-color: #FCFCFC;
    border-radius: 30px;
    padding-left: 10px;
  }
  .input_block {
    width: 100%;
  }
  hr {
    color: #DDDDDD;
  }
  p {
    font-size: 64px;
    color: #FF645A;
  }
  .first_step, .second_step, .third_step {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 25%;
  }
  .step_img {
    margin-bottom: 15px;
  }
  .status_hr_inactive {
    align-self: center;
    height: 2px;
    width: 20%;
    background-color: #6B6B6B;
  }
  .status_hr_active {
    align-self: center;
    height: 2px;
    width: 20%;
    background-color: #00A460;
  }
  .status {
    margin-top: 30px;
    margin-bottom: 40px;
    display: flex;
  }
  .status .about, .about_active{
    text-align: center;
  }
  .circle_inactive {
    min-height: 18px;
    min-width: 18px;
    border-radius: 50%;
    background-color: white;
    border-style: solid;
    border-color: #6B6B6B;
  }
  .circle_active {
    min-height: 18px;
    min-width: 18px;
    border-radius: 50%;
    background-color: white;
    border-style: solid;
    border-color: #00A460;
  }
  .user {
    height: 300px;
    width: 200px;
    text-align: center;
    color: white;
  }
  .avatar {
    height: 180px;
    width: 180px;
    background-color: #A2A19C;
    border-radius: 50%;
    margin-left: auto;
    margin-right: auto;
  }
  .name {
    color: #494949;
    font-weight: bold;
    font-size: 18px;
    margin: 15px 0;
  }
  .text {
    margin-top: -20px;
    margin-left: 40px;
    display: flex;
    flex-wrap: wrap;
    width: 500px;
  }
  .about_block {
    display: flex;
    height: 300px;
  }
  .about {
    color: #494949;
    font-size: 16px;
    min-height: 40px;
    margin: 15px 0;

  }
  .about_active {
    font-size: 16px;
    color: #00A460;
    min-height: 40px;
  }
  .wrapper {
    display: flex;
    flex-direction: column;
    margin-right: auto;
    margin-left: auto;
    max-width: 85%;
  }
  .text_in_div_ab{
    height: auto !important ;
    color: #494949;
    font-size: 16px;
    /* min-height: 40px; */
    margin-top: -15px;
  }
  @media screen and (max-width: 1665px) {
    .card {
      margin-top: 40px;
      margin-left: 40px;
      min-height: 1350px;
      max-width: 20%;
      background-color: white;
      border-radius: 40px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
    .about {
      color: #494949;
      font-size: 15px;
    }
    .about_active {
      font-size: 15px;
      color: #00A460;
    }
    .text_ps{
      right: -16%;
      max-width: 350px;
    }
    .about_text {
      font-size: 14px;
    }
    .avatar {
      height: 140px;
      width: 140px;
      background-color: #A2A19C;
      border-radius: 50%;
      margin-bottom: 20px;
      margin-left: auto;
      margin-right: auto;
    }
    .name {
      color: #494949;
      font-weight: bold;
      font-size: 15px;
    }
    .text {
      margin-top: -20px;
      margin-left: 40px;
      width: 450px;
    }
    label {
      color: #6B6B6B;
      padding-left: 20px;
      padding-bottom: 10px;
      padding-top: 20px;
      font-size: 15px;
    }
    button {
      cursor: pointer;
      align-self: flex-start;
      height: 40px;
      margin-top: 30px;
      border: none;
      width: 40%;
      background-color: #ff645a;
      color: white;
      border-radius: 30px;
      border-color: #DDDDDD;
      font-family: CrocWebRegular;
      font-size: 15px;
    }
    button:hover {
      background-color: #b04740;
    }
    input {
      outline: none;
      padding-left: 10px;
      padding-right: 10px;
      font-size: 20px;
      border-radius: 30px;
      border-style: solid;
      border-color: #DDDDDD;
      background-color: #FCFCFC;
      height: 40px;
      width: 90%;
    }
    select {
      cursor: pointer;
      outline: none;
      width: 90%;
      height: 40px;
      font-size: 20px;
      background-color: #FCFCFC;
      border-radius: 30px;
      padding-left: 10px;
    }
  }
  @media screen and (max-width: 1430px) {
    .card {
      min-height: 1370px;
    }
    .feedbackText {
      font-size: 14px;
    }
    .text_ps{
      right: -16%;
      max-width: 280px;
    }
    .about_text {
      font-size: 12px;
    }
    .about {
      color: #494949;
      font-size: 12px;
      min-height: 55px;
    }
    .about_active {
      font-size: 12px;
      color: #00A460;
      min-height: 55px;
    }
  }
</style>