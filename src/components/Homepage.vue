<template>
<div v-if='!isReg && !IsLogin && !ProfP '>
  <MainBlock :loginStatus='loginStatus' @loginEnd='loginEnd' @toLogin='toLogin' />
  <div class="side_wrapper">
    <AboutBlock />
    <FormBlock @ToRed='ToRed' />
    <UsersFeed />
  </div>
</div>
<div v-else-if='isReg || IsLogin && !ProfP'>
  <registration v-if='isReg' @toProf='toProf' />
  <login v-if='IsLogin' @login='login' />
</div>
<div v-else-if='ProfP'>
  <prof :dataProf='dataProf' @exit='exit' />
</div>
</template>

<script>
import UsersFeed from "./user_feed/UsersFeed";
import AboutBlock from "./about_block/AboutBlock"
import FormBlock from "./form_block/FormBlock";
import MainBlock from "./main_block/MainBlock";
import registration from "./registration/RegBlock.vue";
import login from "./login/login.vue";
import prof from "./profile/ProfielPage.vue";

import $ from 'jquery'

export default {
  props: {
    loginStatus: {}
  },
  components: {
    MainBlock,
    FormBlock,
    UsersFeed,
    AboutBlock,
    registration,
    login,
    prof
  },
  data() {
    return {
      isReg: false,
      dataPeple: '',
      authData: '',
      IsLogin: false,
      dataProf: '',
      ProfP: false
    }
  },
  mounted() {
    fetch('http://194.242.120.163:3650/auto_login', {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "POST",
        })
        .then(response => response.text())
        .then((response) => {
          console.log(JSON.parse(response));
        })
        .catch(err => console.log(err))
  },
  methods: {
    exit() {
      const vm = this;
      vm.ProfP = !vm.ProfP;
      vm.IsLogin = false;
    },
    loginEnd(data) {
      // this.dataPr = data;
      this.$emit('endLogin', data)
    },
    login(data) {
      this.dataProf = data.info;
      this.ProfP = !this.ProfP;
    },
    ToRed(data) {
      this.isReg = true
      this.dataPeple = data;
    },
    toProf(data) {
      this.authData = data;
      this.Auth()
    },
    toLogin() {
      this.IsLogin = true
    },
    Auth() {
      const vm = this;

      console.log(vm.dataPeple);

      let data = {
          'about': this.dataPeple.about,
          'blacklist': this.dataPeple.blacklist,
          'wishlist': this.dataPeple.wishlist,
          'email': this.authData.email,
          'deliveryDate': this.dataPeple.deliveryDate,
          'adress': this.dataPeple.adress,
          'phone': this.dataPeple.phone,
          'password': this.authData.password,
        }

        console.log(data);

      fetch('http://194.242.120.163:3650/add', {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "POST",
            body: JSON.stringify(data)
        })
        .then(response => response.text())
        .then((response) => {
          console.log(JSON.parse(response).data);

          
          vm.dataProf = true;
          vm.ProfP = !vm.ProfP;
          vm.isReg = !vm.isReg;
          vm.IsLogin = false
        })
        .catch(err => console.log(err))

      // $.ajax({
      //   type: "POST",
      //   xhrFields: { withCredentials:true },
      //   url: "http://194.242.120.163:3650/add",
      //   crossDomain: true,
      //   data: {
      //     'about': this.dataPeple.about,
      //     'blacklist': this.dataPeple.blacklist,
      //     'branches': this.dataPeple.branches,
      //     'departments': 'this.dataPeple.departments',
      //     'name': this.dataPeple.name,
      //     'wishlist': this.dataPeple.wishlist,
      //     'email': this.authData.email,
      //     'password': this.authData.password,
      //   },
      //   success: function(data) {
      //     console.log('1234567890987654')
      //     vm.dataProf = data.data;
      //     vm.ProfP = !vm.ProfP;
      //     vm.isReg = !vm.isReg;
      //   }
      // });

    }
  }
}
</script>

<style scoped>
.side_wrapper {
  background-image: url("../assets/pattern.svg");
  padding-left: 10%;
  padding-right: 10%;
}
</style>