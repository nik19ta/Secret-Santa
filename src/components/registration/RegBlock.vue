<template>
<div class="body">
  <div class="reg">
    <h1>Регистрация</h1>
    <input v-model="email" type="email" placeholder="email">
    <input v-model="password" type="password" placeholder="password">
    <router-link class="link" to="/profile"><button @click='toProf'>Регистрация</button></router-link>
  </div>
</div>
</template>

<script>
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
      this.$emit('toProf', {
        'email': this.email,
        'password': this.password
      })
    }
  }
}
</script>

<style scoped>
.body {
  height: 100vh;
  position: absolute;
  top: 0;
  width: 100vw;
  background-color: #00A460;
  background-image: url("../../assets/bg_icons.png");
}

.reg {
  padding: 15px;
  margin-top: 15%;
  margin-left: auto;
  margin-right: auto;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: auto;
  width: 500px;
  border-radius: 40px;
  background-color: white;
  box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
}

input {
  margin-top: 20px;
  padding-left: 20px;
  font-size: 20px;
  outline: none;
  border-radius: 30px;
  border-style: solid;
  background-color: #FCFCFC;
  height: 50px;
  width: 400px;
}

button {
  outline: none;
  cursor: pointer;
  height: 60px;
  margin-top: 30px;
  background-color: #FF645A;
  padding-right: 40px;
  padding-left: 40px;
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
