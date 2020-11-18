<template>
<div class="card">
  <div class="wrapper">
    <p class="title">ты стал <br>тайным сантой</p>
    <div class="about_block">
      <div class="user">
        <img src="../../assets/avatar.png" class="avatar">
        <p class="name">{{dataProf.gmail}}</p>
        <p class="about">{{dataProf.aboutMe}}</p>
      </div>
      <div class="text">
        <p class="name">О колллеге: </p>
        <p class="about">{{dataProf[1]}}</p>
        <p class="name">Он точно будет рад:</p>
        <p class="about">{{dataProf[6]}}</p>
        <p class="name">Лучше не дарить:</p>
        <p class="about">{{dataProf[2]}}</p>
      </div>
    </div>
    <div class="present_info">
      <hr>
      <form class="form">
        <p class="name">Если ты уже подготовил подарок, укажи название подарка и как будешь дарить </p>
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

        <label for="gift">Как будешь дарить</label>
        <select name="gift" v-model="gift" id="gift">
          <option value="">Лично</option>
          <option value="">Через HR</option>
        </select>
        <button>Подарок готов</button>
      </form>
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
  </div>
</div>
</template>

<script>
export default {
  name: 'ProfileCard',
  props: {
    dataProf: {}
  },
  mounted() {
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
  },
  components: {}
}
</script>

<style scoped>
  .card {
    margin-top: 40px;
    margin-left: 40px;
    min-height: 80%;
    min-width: 45%;
    background-color: white;
    border-radius: 40px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
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
    margin-top: 20px;
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
    height: 150px;
    width: 150px;
    background-color: #A2A19C;
    border-radius: 50%;
    margin-bottom: 20px;
    margin-left: auto;
    margin-right: auto;
  }
  .name {
    color: #494949;
    font-weight: bold;
    font-size: 18px;
  }
  .text {
    margin-top: -20px;
    margin-left: 40px;
    width: 500px;
  }
  .about_block {
    display: flex;
    height: 300px;
  }
  .about {
    color: #494949;
    font-size: 18px;
  }
  .about_active {
    font-size: 18px;
    color: #00A460;
  }
  .wrapper {
    display: flex;
    flex-direction: column;
    margin-right: auto;
    margin-left: auto;
    max-width: 85%;
  }
  @media screen and (max-width: 1665px) {
    .card {
      margin-top: 40px;
      margin-left: 40px;
      min-height: 80%;
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
</style>