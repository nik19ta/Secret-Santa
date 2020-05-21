<template>
<div id="app">
  <Homepage :loginStatus='loginStatus' :dataProf='dataProf' @endLogin='endLogin' />
</div>
</template>

<script>
import $ from 'jquery'
import Homepage from './components/Homepage.vue'

export default {
  name: 'App',
  components: {
    Homepage
  },
  data() {
    return {
      loginStatus: '',
      dataProf: ''
    }
  },
  mounted() {
    console.log(1);
    console.log(1);
    console.log(1);
    console.log(1);
    console.log(1);
    console.log(1);
    console.log(1);
    const vm = this;
    $.ajax({
      type: "POST",
      url: "http://91.201.54.125:5000/auto_login",
      crossDomain: true,
      success: function(data) {
        console.log(data);
        if (data == 'Error') {
          vm.loginStatus = 'Error'
        }
      }
    });
  },
  methods: {
    endLogin(data) {
      console.log(data);
      console.log(data);
      console.log(data);
      console.log(data);
      console.log(data);
      console.log(data);
      this.dataProf = data;

    }
  }
};
</script>

<style>
#app {
  font-family: CrocWebBold, CrocWebLight, CrocWebRegular;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  display: flex;
  flex-direction: column;
  margin: 0px;
  padding: 0px;
}

body {
  background-color: #00A460;
  padding: 0px;
  margin: 0px;
}
</style>
