<template>
<div v-if='!isReg'>
  <MainBlock />
  <AboutBlock />
  <FormBlock @ToRed='ToRed' />
  <UsersFeed />
</div>
<div v-else>
  <registration @toProf='toProf' />
</div>
</template>

<script>
import UsersFeed from "./user_feed/UsersFeed";
import AboutBlock from "./about_block/AboutBlock"
import FormBlock from "./form_block/FormBlock";
import MainBlock from "./main_block/MainBlock";
import registration from "./registration/RegBlock.vue";

export default {
  components: {
    MainBlock,
    FormBlock,
    UsersFeed,
    AboutBlock,
    registration
  },
  data() {
    return {
      isReg: false,
      dataPeple: '',
      authData: ''
    }
  },
  methods: {
    ToRed(data) {
      this.isReg = true
      this.dataPeple = data;
    },
    toProf(data) {
      this.authData = data;
      this.Auth()
    },
    Auth() {
      console.log(this.dataPeple.about);
      console.log(this.dataPeple.blacklist);
      console.log(this.dataPeple.branches);
      console.log(this.dataPeple.departments);
      console.log(this.dataPeple.name);
      console.log(this.dataPeple.wishlist);
      console.log(this.authData.email);
      console.log(this.authData.password);
    }
  }
}
</script>
