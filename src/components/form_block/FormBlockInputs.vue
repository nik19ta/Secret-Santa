<template>
<div class="wrapper">
  <form class="form">
<!--    <label for="name">Имя Фамилия</label>-->
<!--    <div class="input_block">-->
<!--      <input id="name" type="text" v-model="name">-->
<!--    </div>-->
    <label for="about">Немного о себе</label>
    <div class="input_block">
      <input id="about" type="text" v-model="about" required>
      <div class="info" data-title="hello"></div>
    </div>

    <label for="wishlist">Список желаний</label>
    <div class="input_block">
      <input id="wishlist" type="text" v-model="wishlist" required>
      <div class="info"></div>
    </div>

    <label for="blacklist">То, что совсем не нравится</label>
    <div class="input_block">
      <input id="blacklist" type="text" v-model="blacklist" required>
      <div class="info"></div>
    </div>
    <button @click='registr'>Подать заявку</button>
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
  padding-left: 10px;
  padding-right: 10px;
  font-size: 20px;
  border-radius: 30px;
  border-style: solid;
  border-color: #DDDDDD;
  background-color: #FCFCFC;
  height: 50px;
  width: 700px;
}

.input_block {
  display: flex;
}

.info {
  height: 65px;
  width: 69px;
  margin-left: 30px;
  margin-top: -10px;
  background-image: url("../../assets/green_info.png");
}

.info:hover {
  height: 65px;
  width: 69px;
  margin-left: 30px;
  margin-top: -10px;
  background-image: url("../../assets/visited_info.png");
}

button {
  outline: none;
  cursor: pointer;
  height: 60px;
  margin-top: 30px;
  background-color: #FF645A;
  width: 725px;
  border: none;
  color: white;
  border-radius: 30px;
  font-weight: bold;
  font-size: 24px;
}

button:hover {
  background-color: #b04740;
}

.wrapper {
  margin-right: auto;
  margin-left: auto;
  max-width: 1700px;
  padding-right: 10px;
  padding-left: 10px;
}
</style>
