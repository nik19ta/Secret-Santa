<template>
<div class="body">
  <button type="button" class="go_to_admin" @click='toAdmin' v-if='this.dataProf.isAdmin && isAdminbtn' name="button">Перейти в админ панель</button>
  <button class="button_exit" @click='exit' name="button">На стартовую страницу</button>
  <button type="button" @click="edit" class="btn_reg_info" name="button">Редактировать профиль</button>
  <div class="cards">
    <ProfileCard @gift_is_ready='gift_is_ready' :giver='giver' :dataProf='dataProf' v-if='!isAdmin' :isSend='isSend' :par='par'  />
    <ProfilePresentCard v-if='!isAdmin' :giver='giver' @status2='status2' />
    <admin v-if='isAdmin' @gotolk='gotolk' />
  </div>
  <div v-if="isEdit" class="edit_info" >
    <div class="modal">
      <h2> Изменить информацию о себе </h2>
      <div class="all" > 
      <label for="about">Немного о себе</label>
      <input id="about" type="text" v-model="dataProf.aboutMe" required>
      </div>   

    <div class="all" > 
      <label for="wishlist">Список желаний</label>
      <input id="wishlist" type="text" v-model="dataProf.whiteList" required>
    </div>  

    <div class="all" > 
      <label for="blacklist">То, что совсем не нравится</label>
      <input id="blacklist" type="text" v-model="dataProf.blackList" required>
    </div>

    <div class="all" > 
      <label for="phoneNumber">Номер телефона </label>
      <input id="phoneNumber" type="text" v-model="dataProf.phone" required>
    </div>

    <div class="all" > 
      <label for="adress">Адрес доставки</label>
      <input id="adress" type="text" v-model="dataProf.adress" required>
    </div>

    <div class="all" > 
      <label for="deliveryDate">Удобные даты доставки (от/до)</label>
      <div class="date_inps" >
        <input id="deliveryFromDate" type="date" name="calendarFrom" class="calendarFrom date_inp" value="2020-12-12" min="2020-12-12" max="2020-12-21" v-model="deliveryDate1" required>
        <input id="deliveryToDate" type="date" name="calendarTo" class="calendarTo date_inp" value="2020-12-12" min="2020-12-12" max="2020-12-21" v-model="deliveryDate2" required>
      </div>
    </div>

    <div class="btns" >
      <button type="button" @click="savedata" class="save_btn" name="button">Сохранить данные</button>
      <button type="button" @click="canceledit" class="cancel_btn" name="button">Отмена</button>
    </div>
    </div>
    </div>
  </div>
</div>
</template>

<script>
import ProfileCard from './ProfileCard'
import ProfilePresentCard from './ProfilePresentCard'
import admin from '../admin/admin'

export default {
  name: 'ProfilePage',
  props: {
    dataProf: {}
  },
  components: {
    ProfileCard,
    ProfilePresentCard,
    admin,
  },
  data() {
    return {
      isAdmin: false,
      isAdminbtn: true,
      isSend: false,
      isEdit: false,
      par: {},
      giver: {},
      deliveryDate1: '',
      deliveryDate2: ''
    }
  },
  mounted() {
    this.get_user_giver()
    this.get_user_email()
  },
  methods: {
    savedata() {
      fetch(`http://194.242.120.163:3650/editProf`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(
          {data: this.dataProf,
          "deliveryDate1": this.deliveryDate1,
          "deliveryDate2": this.deliveryDate2}
          )
      })
      .then(response => response.text())
      .then((response) => {
        if (JSON.parse(response).status) {
          alert('Данные успешно изменены!')
        }
      })
      .catch(err => console.log(err))
      this.edit()
    },
    canceledit() {
      this.edit()
    },
    edit(data) {
      this.isEdit = !this.isEdit;
      if (data) {
        document.body.style.overflowY = 'hidden';
      } else {
        document.body.style.overflowY = 'auto';
      }
    },
    status2() {
      this.dataProf.status = 3
    },
    gotolk() {
      this.isAdmin = !this.isAdmin;
      this.isAdminbtn = !this.isAdminbtn;
    },
    get_user_email() {
      fetch(` http://194.242.120.163:3650/get_user_email?p=${this.dataProf.isPart}`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "GET",
      })
      .then(response => response.text())
      .then((response) => {
        console.log(JSON.parse(response).data);
        this.par = JSON.parse(response).data;
      })
      .catch(err => console.log(err))
    },
    get_user_giver() {
      fetch(`http://194.242.120.163:3650/get_user_giver?p=${this.dataProf.gmail}`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "GET",
      })
      .then(response => response.text())
      .then((response) => {
        console.log(JSON.parse(response).data);
        this.giver = JSON.parse(response).data;
      })
      .catch(err => console.log(err))
    },
    exit() {
      this.$emit('exit', {"data": "exit"})
    },
    gift_is_ready(data) {
      console.log(data);
      fetch(`http://194.242.120.163:3650/gift_is_ready`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({
                name_gift: data.name_gift,
                wish: data.wish,
                email: this.dataProf.gmail
        })
      })
      .then(response => response.text())
      .then((response) => {
        alert('Ждите подтверждения')
        console.log(JSON.parse(response).data);
        this.giver = JSON.parse(response).data;
      })
      .catch(err => console.log(err))
    },
    toAdmin() {
      // this.isAdmin = !this.isAdmin;
      console.log('ni');
      this.isAdmin = !this.isAdmin;
      this.isAdminbtn = !this.isAdminbtn;
    }
  }
} 
</script>

<style scoped>
  .body {
    padding-top: 40px;
    min-height: 100vh;
    background-color: #00A460;
    padding-bottom: 40px;
    position: relative;
  }
  .cards {
    display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: stretch;
    /* display: flex;
    justify-content: space-around; */
  }
  button {
    position: absolute;
    top: 10px;
    padding: 15px;
    background: #FF645A;
    border: 0;
    font-size: 20px;
    border-radius: 15px;
    color: #fff;
    cursor: pointer;
  }
  .go_to_admin{
    right: 60px;
  }
  .button_exit{
    left: 60px;
  }
  .btn_reg_info{
    position: absolute; 
    left: calc(60px + 250px + 20px);

  }
  .edit_info{
    background: #0004;
    width: 100vw;
    height: 100vh;
    /* height: 400px; */
    position: absolute;
    top: 0;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .modal{
    background: #fff;
    width: 800px;
    height: 600px;
    border-radius: 20px;
    padding: 10px;
  }
  h2 {
    text-align: center;
    width: 100%;
  }
  input {
    outline: none;
    font-size: 20px;
    border-radius: 30px;
    border-style: solid;
    border-color: #DDDDDD;
    background-color: #FCFCFC;
    height: 40px;
    width: 300px;
    padding: 3px 10px;
  }
  .all{
    margin-top: 20px;
    width: calc(100% - 40px);
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-left: 20px;
    padding-right: 20px;
  }
  .date_inps{
    display: flex;
    justify-content: space-around;
    outline: none;
    gap: 10px;
  }
  .date_inp{
    width: 200px;
  }
  .save_btn{
    position: relative;
  }
  .cancel_btn{
    position: relative;
    background: gray;
  }
  .btns{
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 30px;
  }
  label{
    font-size: 18px;
  }
  label::after{
    content: ':';
  }
</style>