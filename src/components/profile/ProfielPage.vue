<template>
<div class="body">
  <button type="button" @click='toAdmin' v-if='this.dataProf.isAdmin && isAdminbtn' name="button">Перейти в админ панель</button>
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
  mounted() {
    console.log(this.dataProf.isAdmin);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    console.log(this.dataProf);
    // fetch('http://194.242.120.163:3650/get_info', {
    //     headers: {
    //       'Accept': 'application/json',
    //       'Content-Type': 'application/json'
    //     },
    //     method: "GET",
    //   })
    //   .then(response => response.text())
    //   .then((response) => {
    //     vm.numbers1 = JSON.parse(response).counts;
    //     vm.numbers2 = JSON.parse(response).deportaments;
    //     vm.numbers3 = JSON.parse(response).branches;
    //   })
    //   .catch(err => console.log(err))
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