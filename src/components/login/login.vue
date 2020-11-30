<template>
<div class="body">
  <div class="reg">
    <div class="wrapper">
      <div class="header">
        <h1>тайный санта</h1>
        <p class="corplife">#corplife</p>
      </div>
      <input v-model="email" type="email" placeholder="Email">
      <input v-model="password" type="password" placeholder="Пароль">
      <a class="link"><button @click='toProf'>Вход</button></a>
    </div>
  </div>
</div>
</template>

<script>
import $ from 'jquery'

export default {
  name: "RegBlock",
  data() {
    return {
      email: '',
      password: ''
    }
  },
  methods: {

    toProf() {

      const vm = this;
      $.ajax({
        type: "POST",
        url: "http://194.242.120.163:3650/login",
        crossDomain: true,
        data: {
          'password': vm.password,
          'email': vm.email,
        },
        success: function(data) {
          console.log(data);
          if (data.data == false) {
             alert('Не верный логин');
          }
          else {
            vm.$emit('login', data)
          }
        }
      });
    }
  }
}
</script>

<style scoped>

* {
  box-sizing: border-box;
}
.body {
  height: 100%;
  width: 100%;
  position: absolute;
  top: 0;
  background-color: #00A460;
  background-size: auto;
  display: flex;
  justify-content: center;
  align-items: center;
}
.wrapper {
  display: flex;
  flex-direction: column;
  margin-right: auto;
  margin-left: auto;
  width: 90%;
  /*background: #b04740;*/
}
.reg {
  padding-bottom: 50px;
  padding-left: 10px;
  padding-right: 10px;
  margin-top: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: auto;
  width: 440px;
  border-radius: 40px;
  background-color: white;
  box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
}
.header {
  display: flex;
  justify-content: space-between;
}
h1 {
  font-size: 36px;
  color: #ff645a;
}
.header p {
  font-size: 24px;
  padding-top: 15px;
  color: #505050;
}
input {
  outline: none;
  padding-left: 10px;
  padding-right: 10px;
  margin-top: 20px;
  font-size: 20px;
  border-radius: 30px;
  border-style: solid;
  border-color: #DDDDDD;
  background-color: #FCFCFC;
  height: 45px;
  width: 100%;
}

button {
  outline: none;
  cursor: pointer;
  height: 50px;
  width: 100%;
  margin-top: 30px;
  background-color: #FF645A;
  border: none;
  color: white;
  border-radius: 30px;
  font-weight: bold;
  font-size: 24px;
}

button:hover {
  background-color: #b04740;
}
</style>
