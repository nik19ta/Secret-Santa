<template>
<div class="card">
  <div class="wrapper">
    <p>Ты стал <br>тайным сантой</p>
    <div class="about_block">
      <div class="user">
        <img src="../../assets/avatar.png" class="avatar">
        <p class="name">Имя Фамилия</p>
        <p class="about">Инженер Разработчик</p>
      </div>
      <div class="text">
        <p class="name">Немного о себе:</p>
        <p class="about">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim natus nesciunt non omnis quaerat, similique sint! Error illum nemo obcaecati perferendis.</p>
        <p class="name">Список желаний:</p>
        <p class="about">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, asperiores eligendi ex expedita facere ipsam.</p>
        <p class="name">То, что совсем не нравится:</p>
        <p class="about">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur earum exercitationem ipsam quam repudiandae unde!</p>
      </div>
    </div>
    <div class="present_info">
      <hr>
      <div class="form">
        <p class="name">Если ты уже подготовил подарок укажи название подарка и как будешь дарить</p>
        <label for="about">Название подарка</label>
        <div class="input_block">
          <input id="about" type="text">
          <div class="info_visited"></div>
        </div>

        <label for="wishlist">Пожелание</label>
        <div class="input_block">
          <input id="wishlist" type="text">
          <div class="info"></div>
        </div>

        <label for="gift">Как будешь дарить</label>
        <select name="gift" v-model="gift" id="gift">
          <option value="">Лично</option>
          <option value="">Через HR</option>
        </select>
      </div>
      <hr>
      <div class="status">
        <p class="name">Статус подарка</p>
        <p class="about">Ваш подарок не доставлен</p>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'ProfileCard',
  components: {

  }
}
</script>

<style scoped>
.card {
  margin-top: 40px;
  margin-left: 40px;
  /* height: 1207px; */
  width: 867px;
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

label {
  color: #6B6B6B;
  padding-left: 20px;
  padding-bottom: 10px;
  padding-top: 20px;
  font-size: 20px;
}

input {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 20px;
  border-radius: 30px;
  border-style: solid;
  border-color: #DDDDDD;
  height: 50px;
  width: 700px;
}

select {
  width: 725px;
  height: 40px;
  font-size: 20px;
  border-radius: 30px;
  padding-left: 10px;
}

.input_block {
  display: flex;
}

hr {
  color: #DDDDDD;
}

p {
  font-size: 64px;
  color: #FF645A;
}

.form .name,
.status .name {
  margin-left: 10px;
  width: 500px;
}

.status .about {
  padding: 10px;
  font-size: 20px;
  border-radius: 30px;
  border-style: solid;
  border-color: #DDDDDD;
  width: 700px;
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
}

.about {
  color: #494949;
  font-size: 18px;
}

.wrapper {
  display: flex;
  flex-direction: column;
  margin-right: auto;
  margin-left: auto;
  max-width: 750px;
}
</style>
