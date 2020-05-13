<template>
<div v-if='!isReg && !IsLogin && !ProfP '>
  <MainBlock :loginStatus='loginStatus' @loginEnd='loginEnd' @toLogin='toLogin' />
  <AboutBlock />
  <FormBlock @ToRed='ToRed' />
  <UsersFeed />
</div>
<div v-else-if='isReg || IsLogin && !ProfP'>
  <registration v-if='isReg' @toProf='toProf' />
  <login v-if='IsLogin' @login='login' />
</div>
<div v-else-if='ProfP'>
  <prof :dataProf='dataProf' />
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
  methods: {
    loginEnd(data) {
      // this.dataPr = data;
      this.$emit('endLogin', data)
    },
    login(data) {
      console.log(data);
      this.dataProf = data;
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

      $.ajax({
        type: "POST",
        url: "http://91.201.54.125:5000/add",
        crossDomain: true,
        data: {
          'about': this.dataPeple.about,
          'blacklist': this.dataPeple.blacklist,
          'branches': this.dataPeple.branches,
          'departments': this.dataPeple.departments,
          'name': this.dataPeple.name,
          'wishlist': this.dataPeple.wishlist,
          'email': this.authData.email,
          'password': this.authData.password,
        },
        success: function(data) {
          console.log(data);
          vm.dataProf = data.data;
          vm.ProfP = !vm.ProfP;
          vm.isReg = !vm.isReg;
        }
      });

    }
  }
}
</script>
