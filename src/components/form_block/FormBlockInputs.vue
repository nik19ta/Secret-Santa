<template>
<div class="wrapper">
  <form class="form">
    <p class="title">Помоги своему Санте – заполни небольшую форму о себе</p>


    <div class="all" > 
      <label for="about">Немного о себе</label>
      <div class="row" >  
      <input id="about" type="text" v-model="about" required>
      <img @mouseenter="() => start(1)" @mouseleave="() => stop(1)" class="info img_1" src="../../assets/green_info.png" alt="info">
      <div class="text_ps ps_1">
        <p class="about">Здесь ты можешь рассказать о том, что тебе интересно, своих увлечениях и хобби.</p>
      </div>
      </div>
    </div>   

    <div class="all" > 
      <label for="wishlist">Список желаний</label>
      <div class="row" >
      <input id="wishlist" type="text" v-model="wishlist" required>
      <img @mouseenter="() => start(2)" @mouseleave="() => stop(2)" class="info img_2 " src="../../assets/green_info.png" alt="info">
      </div>
      <div class="text_ps ps_2">
        <p class="about">Напиши, что тебе хотелось бы получить, или обозначь сферу, подарок из которой тебе точно пригодится. Список поможет Санте подобрать для тебя что-то актуальное. Но креативный подход никто не отменял ;)</p>
      </div>
    </div>  

    <div class="all" > 
      <label for="blacklist">То, что совсем не нравится</label>
      <div class="row" >
      <input id="blacklist" type="text" v-model="blacklist" required>
      <img @mouseenter="() => start(3)" @mouseleave="() => stop(3)" class="info img_3"  src="../../assets/green_info.png" alt="info">
      </div>
      <div class="text_ps ps_3" >
        <p class="about">Здесь все понятно – список того, что ты точно не хотел бы получить. Возможно, у тебя на что-то аллергия, или ты не переносишь красный цвет. Лучше указать все ограничения, чтобы избежать неприятных сюрпризов ;)</p>
      </div>
    </div>

    <div class="all" > 
      <label for="phoneNumber">Номер телефона </label>
      <div class="row" >
      <input id="phoneNumber" type="text" v-model="phone" required>
        <img @mouseenter="() => start(6)" @mouseleave="() => stop(6)" class="info img_6" src="../../assets/green_info.png" alt="info">
      </div>
      <div class="text_ps ps_6">
        <p class="about">Номер телефона, по которому с тобой сможет связаться курьер.</p>
      </div>
    </div>

    <div class="all" > 
      <label for="adress">Адрес доставки</label>
      <div class="row" >
      <input id="adress" type="text" v-model="adress" required>
        <img @mouseenter="() => start(4)" @mouseleave="() => stop(4)" class="info img_4" src="../../assets/green_info.png" alt="info">
      </div>
      <div class="text_ps ps_4">
        <p class="about">Напиши адрес, на который курьер сможет доставить тебе подарок от Тайного Санты.</p>
      </div>
    </div>

    <div class="all" > 
      <label for="deliveryDate">Удобные даты доставки (от/до)</label>
      <div class="row" >
      <input id="deliveryFromDate" type="date" name="calendarFrom" class="calendarFrom" value="2020-12-12" min="2020-12-12" max="2020-12-21" v-model="deliveryDate1" required>
      <input id="deliveryToDate" type="date" name="calendarTo" class="calendarTo" value="2020-12-12" min="2020-12-12" max="2020-12-21" v-model="deliveryDate2" required>
        <img @mouseenter="() => start(5)" @mouseleave="() => stop(5)" class="info img_5" src="../../assets/green_info.png" alt="info">
    </div>
    <div class="text_ps ps_5 ">
      <p class="about">Отметь даты, когда тебе будет удобно получить подарок от Тайного Санты.</p>
    </div>
    </div>

    <span class="button" @click='registr'>Готов дарить и получать подарки!</span>
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
            deliveryDate1: '',
            deliveryDate2: '',
            adress: ''
        }
    },
          methods: {
              registr() {
                  this.$emit('myEvent', {
                      'about': this.about,
                      'wishlist': this.wishlist,
                      'blacklist': this.blacklist,
                      'deliveryDate': `${this.deliveryDate1}-${this.deliveryDate2}`,
                      'adress': this.adress,
                      'phone': this.phone,
                  })
              },
              start(data) {
                document.querySelector(`.ps_${data}`).classList.add("vis");
                document.querySelector(`.img_${data}`).src = require("../../assets/visited_info.png")
              },
              stop(data) {
                document.querySelector(`.img_${data}`).src = require("../../assets/green_info.png")
                document.querySelector(`.ps_${data}`).classList.remove("vis");
              }
          }
      }
</script>

<style scoped>
.all{
  width: 100%;
  position: relative;
}
.text_ps{
  display: none;
  visibility: hidden;
  width: 100%;
  max-width: 500px;
  position: absolute;
  z-index: 2;
  background: #FFFFFF;
  box-shadow: 0px 14px 60px rgba(0, 0, 0, 0.1);
  border-radius: 20px;
  right: -105%;
  top: 0;
  padding: 10px;
}
  .row{
   display: flex; 
   width: 100%;
   /* position: relative; */
  }
  .vis {
    visibility: visible;
    display: flex;
  }

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
    width: 100%;
    padding: 3px 10px;
  }

  .title {
    font-size: 20px;
    color: #ff645a;
  }

  .info {
    height: 40px;
    margin-left: 10px;
    width: 40px;
  }

  .text {
    padding: 10px;
    width: 260px;
    border-radius: 28px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
  }

  .about {
    color: #494949;
    font-size: 15px;
    line-height: 132.2%;
    font-family: CrocWebLight;
    font-style: normal;
    font-weight: normal;
  }
  .calendarFrom {
    margin-right: 10px;
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
  .button {
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
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .button:hover {
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
    }
    button {
      height: 50px;
      margin-top: 30px;
      width: 100%;
      font-size: 20px;
    }
    .button {
      height: 50px;
      margin-top: 30px;
      width: 100%;
      font-size: 20px;
    }
    .info {
      height: 40px;
      width: 40px;
      margin-left: 10px;
    }
    .text {
      padding: 10px;
      font-size: 15px;
      width: 260px;
      border-radius: 28px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
    .text_ps {
      width: 80%;
      right: -90%;
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
    }
    button {
      height: 40px;
      margin-top: 30px;
      width: 100%;
      font-size: 16px;
    }
    .button {
      height: 40px;
      margin-top: 30px;
      width: 100%;
      font-size: 16px;
    }
    .info {
      height: 40px;
      width: 40px;
      margin-left: 10px;
    }
    .text {
      font-size: 12px;
      padding: 10px;
      width: 260px;
      border-radius: 28px;
      box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
    .text_ps {
      width: 100%;
      right: -110%;
    }
  }
</style>
