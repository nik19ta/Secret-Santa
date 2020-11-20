<template>
<div class="wrapper">
  <form class="form">
    <p class="title">Помоги своему Санте – заполни небольшую форму о себе</p>
    <label for="about">Немного о себе</label>
    <input id="about" type="text" v-model="about" required>
<!--    <img class="info" src="../../assets/green_info.png" alt="info">-->
<!--    <div class="text">-->
<!--      <p class="about">Здесь ты можешь рассказать о том, что тебе интересно, своих увлечениях и хобби.</p>-->
<!--    </div>-->

    <label for="wishlist">Список желаний</label>
    <input id="wishlist" type="text" v-model="wishlist" required>
<!--    <img class="info" src="../../assets/green_info.png" alt="info">-->
<!--    <div class="text">-->
<!--      <p class="about">Напиши, что тебе хотелось бы получить, или обозначь сферу, подарок из которой тебе точно пригодится. Список поможет Санте подобрать для тебя что-то актуальное. Но креативный подход никто не отменял ;)</p>-->
<!--    </div>-->

    <label for="blacklist">То, что совсем не нравится</label>
    <input id="blacklist" type="text" v-model="blacklist" required>
<!--    <img class="info" src="../../assets/green_info.png" alt="info">-->
<!--    <div class="text">-->
<!--      <p class="about">Здесь все понятно – список того, что ты точно не хотел бы получить. Возможно, у тебя на что-то аллергия, или ты не переносишь красный цвет. Лучше указать все ограничения, чтобы избежать неприятных сюрпризов ;)</p>-->
<!--    </div>-->

    <label for="adress">Адрес доставки</label>
    <input id="adress" type="text" v-model="adress" required>
<!--    <img class="info" src="../../assets/green_info.png" alt="info">-->
<!--    <div class="text">-->
<!--      <p class="about">Напиши адрес, на который курьер сможет доставить тебе подарок от Тайного Санты.</p>-->
<!--    </div>-->

    <label for="deliveryDate">Удобные даты доставки</label>
    <input id="deliveryDate" type="date" name="calendar" value="2020-12-10" min="2020-12-10" max="2020-12-25" v-model="deliveryDate" required>
<!--    <img class="info" src="../../assets/green_info.png" alt="info">-->
<!--    <div class="text">-->
<!--      <p class="about">Отметь даты, когда тебе будет удобно получить подарок от Тайного Санты.</p>-->
<!--    </div>-->

    <button @click='registr'>Готов дарить и получать подарки!</button>
  </form>
</div>
</template>

<script>
export default {
    name: "AboutBlockForm",
    data() {
        return {
            about: '',
            wishlist: '',
            blacklist: '',
        }
    },
          methods: {
              registr() {
                  this.$emit('myEvent', {
                      'about': this.about,
                      'wishlist': this.wishlist,
                      'blacklist': this.blacklist,
                  })
              }
          }
      }
</script>

<style scoped>
  .form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 525px;
  }
  label {
    color: #6B6B6B;
    padding-left: 20px;
    padding-bottom: 10px;
    padding-top: 20px;
    font-size: 20px;
  }
  input {
    outline: none;
    font-size: 20px;
    border-radius: 30px;
    border-style: solid;
    border-color: #DDDDDD;
    background-color: #FCFCFC;
    height: 40px;
    width: 98%;
    padding: 1%;
  }

  .title {
    font-size: 20px;
    color: #ff645a;
  }

  .info {
    height: 69px;
    width: 65px;
  }

  .text {
    padding: 10px;
    width: 260px;
    border-radius: 28px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
  }

  .about {
    color: #494949;
  }
  button {
    outline: none;
    cursor: pointer;
    height: 60px;
    margin-top: 30px;
    background-color: #FF645A;
    width: 100%;
    border: none;
    color: white;
    border-radius: 30px;
    font-family: CrocWebRegular;
    font-size: 24px;
  }
  button:hover {
    background-color: #b04740;
  }
  @media screen and (max-width: 1665px) {
    .form {
      width: 525px;
    }
    label {
      padding-left: 20px;
      padding-bottom: 10px;
      padding-top: 20px;
      font-size: 15px;
    }
    input {
      outline: none;
      font-size: 15px;
      height: 40px;
      width: 98%;
      padding: 1%;
    }
    button {
      height: 50px;
      margin-top: 30px;
      width: 100%;
      font-size: 20px;
    }
    .info {
      height: 58px;
      width: 56px;
    }
    .text {
      padding: 10px;
      font-size: 15px;
      width: 260px;
      border-radius: 28px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
  }
  @media screen and (max-width: 1430px) {
    .form {
      width: 365px;
    }
    .title {
      font-size: 14px;
    }
    label {
      padding-left: 20px;
      padding-bottom: 10px;
      padding-top: 15px;
      font-size: 12px;
    }
    input {
      outline: none;
      font-size: 12px;
      height: 30px;
      width: 98%;
      padding: 1%;
    }
    button {
      height: 40px;
      margin-top: 30px;
      width: 100%;
      font-size: 16px;
    }
    .info {
      height: 50px;
      width: 48px;
    }
    .text {
      font-size: 12px;
      padding: 10px;
      width: 260px;
      border-radius: 28px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
  }
</style>
