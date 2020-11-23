<template>
<div class="body">
  <button type="button" @click='toAdmin' v-if='dataProf[9] == "admin" && isAdminbtn ' name="button">Перейти в админ панель</button>
  <div class="cards">
    <ProfileCard :dataProf='dataProf' v-if='!isAdmin' :isSend='isSend'/>
    <ProfilePresentCard v-if='!isAdmin' />
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
    admin
  },
  data() {
    return {
      isAdmin: false,
      isAdminbtn: true,
      isSend: false
    }
  },
  methods: {
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
    justify-content: space-between;
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
</style>