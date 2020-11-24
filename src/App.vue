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
    const vm = this;


    // fetch('http://localhost:3650/auto_login', {
    //         headers: {
    //             'Accept': 'application/json',
    //             'Content-Type': 'application/json'
    //         },
    //         method: "POST",
    //     })
    //     .then(response => response.text())
    //     .then((response) => {
    //       console.log(JSON.parse(response));
    //       // vm.numbers1 = JSON.parse(response).counts;
    //     })
    //     .catch(err => console.log(err))
    
    // $.ajax({
    //   type: "POST",
    //   xhrFields: { withCredentials:true },
    //   url: "http://localhost:3650/auto_login",
    //   crossDomain: true,
    //   success: function(data) {
    //     console.log(data);
    //     if (data == 'Error') {
    //       vm.loginStatus = 'Error'
    //     }
    //   }
    // });
    vm.loginStatus = 'Error'
  },
  methods: {
    endLogin(data) {
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
