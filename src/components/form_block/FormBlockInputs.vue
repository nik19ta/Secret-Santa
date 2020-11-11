<template>
<div class="wrapper">
  <form class="form">
    <p class="title">Помоги своему Санте – заполни небольшую форму о себе</p>
    <label for="about">Немного о себе</label>
    <input id="about" type="text" v-model="about" required>

    <label for="wishlist">Список желаний</label>
    <input id="wishlist" type="text" v-model="wishlist" required>

    <label for="blacklist">То, что совсем не нравится</label>
    <input id="blacklist" type="text" v-model="blacklist" required>

    <label for="phoneNumber">Твой номер телефона</label>
    <input id="phoneNumber" type="text" v-model="blacklist" required>

    <label for="adress">Адрес доставки</label>
    <input id="adress" type="text" v-model="blacklist" required>

    <label for="deliveryDate">Удобные даты доставки</label>
    <input id="deliveryDate" type="text" v-model="blacklist" required>

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
    height: 50px;
    width: 98%;
    padding: 1%;
  }
  .title {
    font-size: 20px;
    color: #ff645a;
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
  }
</style>
