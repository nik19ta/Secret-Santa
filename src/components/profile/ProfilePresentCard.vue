<template>
  <div class="card">
    <div class="wrapper">
      <p class="title">мои <br>подарки</p>
      <div class="present_info">
        <img src="../../assets/gifts/inactive_gift.png" alt="" class="imgPresent">
        <div class="gift">
          <p class="gift_name">Скоро тут появится что-то интересное</p>
        </div>
      </div>
      <div class="hr">
        <hr>
      </div>
      <div class="form">
        <label>Если ты уже получил подарок, <br>напиши о своих впечатлениях Тайному Санте :)</label>
        <div class="input_block">
          <textarea name="comment" v-model="emotions"></textarea>
          <div class="info_visited"></div>
        </div>
        <button class="add_photo">Добавить фото</button>
      </div>
      <div class="photos">
        <img src="../../assets/add_photo.png" alt="">
        <img src="../../assets/add_photo.png" alt="">
        <img src="../../assets/add_photo.png" alt="">
        <img src="../../assets/add_photo.png" alt="">
      </div>
      <button @click="send" class="send">Отправить Тайному Санте</button>
      <div class="status">
        <div class="first_step step ">
          <!-- circle_active -->
          <img  :src="giver.status > 0 ? require(`../../assets/profile_vectors/active/1step.svg`) : require(`../../assets/profile_vectors/inactive/1step.svg`)" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Подарок готов" в профиле (меняется класс на circle_active) -->
          <div  :class="[giver.status > 0 ? 'circle_active' : 'circle_inactive']"></div>
          <p :class="[giver.status > 0 ? 'about_active' : '']"  class="about">Тайный Санта готовит тебе подарок</p>
        </div>

        <!-- Полоска загорается зеленым, когда нажимается кнопка "Подарок готов" в профиле (меняется класс на status_hr_active) -->
        <div class="status_hr_inactive"></div>

        <div class="second_step step ">
          <img :src="giver.status > 1 ? require(`../../assets/profile_vectors/active/2step.svg`) : require(`../../assets/profile_vectors/inactive/2step.svg`)" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Отправить подарок" в админ панели -->
          <div  :class="[giver.status > 1 ? 'circle_active' : 'circle_inactive']"></div>
          <p :class="[giver.status > 1 ? 'about_active' : '']"  class="about">Тебе уже отправили подарок от Тайного Санты</p>
        </div>

        <!-- Полоска загорается зеленым, когда нажимается кнопка "Отправить подарок" в админ панели -->
        <div class="status_hr_inactive"></div>

        <div class="third_step step ">
          <img :src="giver.status > 2 ? require(`../../assets/profile_vectors/active/3step.svg`) : require(`../../assets/profile_vectors/inactive/3step.svg`)" alt="" class="step_img">
          <!-- Кружок загорается зеленым, когда нажимается кнопка "Подарок получен" в админ панели -->
          <div  :class="[giver.status > 2 ? 'circle_active' : 'circle_inactive']"></div>
          <p :class="[giver.status > 2 ? 'about_active' : '']"  class="about">Ты получил свой подарок!</p>
        </div>

      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ProfilePresentCard',
    components: {},
    methods: {
      send() {
        console.log('send');
      }
    },
    props: {
      giver: {},
  },
  mounted() {
    console.log(this.giver.status);
  }
  }
</script>

<style scoped>
.step{
  height: 210px;
  display: flex;
}
  .card {
    margin-top: 40px;
    margin-right: 40px;
    min-height: 80%;
    min-width: 45%;
    background-color: white;
    border-radius: 40px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    max-height: 1440px;
    position: relative;
  }
  p {
    font-size: 64px;
    color: #FF645A;
  }
  .title {
    font-size: 42px;
    line-height: 32px;
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
    width: 100%;
    display: flex;
    justify-content: space-between;
    position: absolute;
    bottom: 30px;
    left: 0;
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
  .about {
    color: #494949;
    font-size: 16px;
    min-height: 120px;
  }
  .about_active {
    font-size: 16px;
    color: #00A460;
    min-height: 120px;
  }
  .present_info {
    display: flex;
    flex-direction: row;
    height: 300px;
  }
  .gift_name {
    font-size: 32px ;
    color: #6B6B6B;
  }
  .imgPresent {
    height: 174px;
    width: 174px;
  }
  .photos img {
    cursor: pointer;
    height: 155px;
    width: 155px;
  }
  .gift {
    margin-left: 40px;
  }
  .form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 30px;
  }
  label {
    margin-bottom: 10px;
  }
  .add_photo {
    cursor: pointer;
    height: 50px;
    margin-top: 15px;
    width: 30%;
    border-style: solid;
    background-color: #FCFCFC;
    color: #6B6B6B;
    border-radius: 30px;
    border-color: #DDDDDD;
    font-family: CrocWebRegular;
    font-size: 20px;
  }
  .add_photo:hover {
    background-color: #bdbdbd;
  }
  button {
    outline: none;
  }
  .send {
    cursor: pointer;
    align-self: flex-end;
    height: 50px;
    margin-top: 30px;
    border: none;
    width: 40%;
    background-color: #ff645a;
    color: white;
    border-radius: 30px;
    border-color: #DDDDDD;
    font-family: CrocWebRegular;
    font-size: 20px;
  }
  .send:hover {
    background-color: #b04740;
  }
  label {
    color: #6B6B6B;
    padding-left: 20px;
    padding-bottom: 10px;
    padding-top: 20px;
    font-size: 20px;
  }
  hr {
    color: #DDDDDD;
  }
  .photos {
    display: flex;
    justify-content: space-between;
  }
  textarea {
    width: 95%;
    padding: 10px;
    font-size: 16px;
    background-color: #FCFCFC;
    border-radius: 15px;
    border-style: solid;
    border-color: #DDDDDD;
    height: 150px;
    resize: none;
    outline: none;
  }
  .input_block{
    width: 100%;
  }
  input {
    padding-left: 10px;
    padding-right: 10px;
    font-size: 20px;
    border-radius: 30px;
    border-style: solid;
    border-color: #DDDDDD;
    height: 150px;
    width: 700px;
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
      min-height: 1350px;
      max-width: 20%;
      background-color: white;
      border-radius: 40px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
      max-height: 1300px;
    }
    label {
      color: #6B6B6B;
      padding-left: 20px;
      padding-bottom: 10px;
      padding-top: 20px;
      font-size: 15px;
    }
    .present_info {
      display: flex;
      flex-direction: row;
      height: 300px;
    }
    .gift_name {
      font-size: 26px ;
      color: #6B6B6B;
    }
    .imgPresent {
      height: 134px;
      width: 134px;
    }
    .photos img {
      cursor: pointer;
      height: 134px;
      width: 134px;
    }
    .add_photo {
      cursor: pointer;
      height: 40px;
      margin-top: 15px;
      width: 30%;
      border-style: solid;
      background-color: #FCFCFC;
      color: #6B6B6B;
      border-radius: 30px;
      border-color: #DDDDDD;
      font-family: CrocWebRegular;
      font-size: 15px;
    }
    .send {
      cursor: pointer;
      align-self: flex-end;
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
    .about {
      font-size: 15px;
    }
    .about_active {
      font-size: 15px;
    }
  }
  @media screen and (max-width: 1430px) {
    .card {
      min-height: 1370px;
    }

    .photos img {
      cursor: pointer;
      height: 112px;
      width: 112px;
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
    .status_hr_inactive {
      margin-bottom: 0;
    }
    .status_hr_active {
      margin-bottom: 0;
    }
  }
</style>