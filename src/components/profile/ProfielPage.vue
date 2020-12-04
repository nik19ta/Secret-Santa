<template>
<div class="body">
  <button type="button" @click='toAdmin' v-if='this.dataProf.isAdmin && isAdminbtn' name="button">Перейти в админ панель</button>
  <button class="button_exit" @click='exit' name="button">На стартовую страницу</button>
  <div class="cards">
    <ProfileCard @gift_is_ready='gift_is_ready' :giver='giver' :dataProf='dataProf' v-if='!isAdmin' :isSend='isSend' :par='par'  />
    <ProfilePresentCard v-if='!isAdmin' :giver='giver' />
    <admin v-if='isAdmin' />
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
      par: {},
      giver: {}
    }
  },
  mounted() {
    console.log(this.dataProf);
    fetch(` http://localhost:3650/get_user_email?p=${this.dataProf.isPart}`, {
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



      fetch(`http://localhost:3650/get_user_giver?p=${this.dataProf.gmail}`, {
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
  methods: {
    exit() {
      this.$emit('exit', {"data": "exit"})
    },
    gift_is_ready(data) {
      console.log(data);
      fetch(`http://localhost:3650/gift_is_ready`, {
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
  }
  .cards {
    display: flex;
    justify-content: space-around;
  }
  button {
    position: absolute;
    top: 10px;
    right: 40px;
    padding: 15px;
    background: #FF645A;
    border: 0;
    font-size: 20px;
    border-radius: 15px;
    color: #fff;
    cursor: pointer;
  }
  .button_exit{
    left: 40px;
  }
</style>