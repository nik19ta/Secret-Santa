<template lang="html">
  <div class="app">
    <table>
        <tr>
          <td>Тайный санта </td>
          <td>Департамент</td>
          <td>Отдел</td>
          <td>Как будет дарить</td>
          <td>Одоряемый</td>
          <td>Департамент</td>
          <td>Отдел</td>
          <td>Название подарка</td>
          <td>Статус</td>
        </tr>
        <tr v-for='item in data.success' v-bind:key='item' >
          <td>{{item[2]}} </td>
          <td>{{item[8]}} </td>
          <td>{{item[7]}} </td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
          <td> <input class='inputInTd' type="text" name="" value=""> </td>
        </tr>
</table>

  </div>
</template>

<script>
import $ from "jquery"


export default {
  mounted() {
    const vm = this;
    $.ajax({
      type: "GET",
      url: "http://localhost:5000/AllData",
      success: function(data) {
        console.log(data);
        vm.data = data;
      }
    });
  },
  data() {
    return {
      data: ''
    }
  }
}
</script>

<style lang="css" scoped>
table{
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
table{
  width: 100%;
}
td{
  min-width: 200px;
  height: 50px;
  background: #fff;
}
.inputInTd{
  width: 100%;
  height: 100%;
  border: 0;
  font-size: 15px;
}
</style>
