<template>
  <div class="card">
    <div class="wrapper">
      <p>Мои подарки</p>
      <div class="present_info">
        <img src="../../assets/gifts/inactive_gift.png" alt="">
        <div class="gift">
          <p class="gift_name">Здесь появится твой подарок</p>
          <p class="about">Тайный Санта готовит подарок</p>
        </div>
      </div>
      <div class="hr">
        <hr>
      </div>
      <div class="form">
        <label>Поделись своими эмоциями</label>
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
      <button class="send">Отправить Тайному Санте</button>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ProfilePresentCard',
    components: {},
  }
</script>

<style scoped>
  .card {
    margin-top: 40px;
    margin-right: 40px;
    min-height: 1207px;
    min-width: 867px;
    background-color: white;
    border-radius: 40px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
  }
  p {
    font-size: 64px;
    color: #FF645A;
  }
  .present_info {
    display: flex;
    flex-direction: row;
    margin-bottom: 20px;
  }
  .gift_name {
    font-size: 32px ;
    color: #6B6B6B;
  }
  img {
    height: 174px;
    width: 174px;
  }
  .photos img {
    cursor: pointer;
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
    font-size: 20px;
  }
  .add_photo:hover {
    background-color: #bdbdbd;
  }
  button {
    outline: none;
  }
  textarea {
    outline: none;
  }
  .send {
    cursor: pointer;
    align-self: flex-end;
    height: 50px;
    margin-top: 30px;
    border: none;
    width: 40%;
    background-color: #00A460;
    color: white;
    border-radius: 30px;
    border-color: #DDDDDD;
    font-size: 20px;
  }
  .send:hover {
    background-color: #006e37;
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
    width: 450px;
    padding: 10px;
    font-size: 16px;
    background-color: #FCFCFC;
    border-radius: 15px;
    height: 150px;
    resize: none;
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