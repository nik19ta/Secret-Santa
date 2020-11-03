<template lang="html">
  <div class="Main">
    <div class="content">
      <header>
        <p>тайный <br> санта</p>
        <div class="flexBtns">
          <button type="button" class='btn' name="button">Сформировать пары</button>
          <button type="button" class='btn' name="button">Выгрузить аналитику</button>
        </div>
      </header>

      <div class="table">
        <div class='titleTr' >
          <div class='contentdiv' >Тайный санта </div>
          <div class='contentdiv' >Департамент</div>
          <div class='contentdiv' >Отдел</div>
          <div class='contentdiv' >Почта</div>
          <div class='contentdiv' >Одоряемый</div>
          <div class='contentdiv' >Департамент</div>
          <div class='contentdiv' >Отдел</div>
          <div class='contentdiv' >Почта</div>
          <div class='contentdiv' >Название подарка</div>
          <div class='contentdiv' >Как будет дарить</div>
          <div class='contentdiv' >Отправить подарок</div>
          <div class='contentdiv' >Статус</div>
        </div>
        <div v-for='item in data.success' v-bind:key='item'  class="">


        <div @click='other(item[0])' class="lineContent" >
          <div class='contentdiv name' >{{item[5]}} </div>
          <div class='contentdiv' >{{item[4]}} </div>
          <div class='contentdiv' >{{item[3]}} </div>
          <div class='contentdiv' >{{item[7]}}</div>
          <div class='contentdiv name' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' >-</div>
          <div class='contentdiv' > <input class='inputIndiv' type="text" name="" value=""> </div>
        </div>
        <div :id='item[0]' class="none">
          <button type="button" class='btn1' name="button">Отправить пару</button>
          <button type="button" class='btn1' name="button">Отправить подарок</button>
          <button type="button" class='btn1' name="button">одарок получен</button>
          <button type="button" class='btn1' name="button">Напомнить ТС </button>
          <button type="button" class='btn1' name="button">Напомнить сотруднику</button>
        </div>

        </div>
      </div>

    </div>
  </div>
</template>

<script>
import $ from "jquery"


export default {
  mounted() {
    const vm = this;
    $.ajax({
      type: "GET",
      url: "http://194.242.120.163:3001/AllData",
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
  },
  methods: {
    other(data) {

      if ($("#" + data).css('display') == 'none') {
        $("#" + data).addClass("Wiew")
      } else {
        $("#" + data).removeClass('Wiew')
      }

    }
  }
}
</script>

<style lang="css" scoped>
.none{
  display: none;
}
.titleTr, .lineContent{
  width: 98%;
  display: flex;
  justify-content:space-around;
  border-bottom: 1px solid #E5E5E5;
}
.lineContent{
  cursor: pointer;
}
header{
  display: flex;
  justify-content: space-between;
}
.flexBtns{
  display: flex;
  justify-content: space-around;
}
header p{
  color: #FF645A;
  font-family: 'CrocWebBold';
  font-style: normal;
  font-weight: bold;
  line-height: 30px;
  font-size: 35px;
  margin-top: -10px;
  /* margin-top: -30px; */
}
.Main{
  position: absolute;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content{
    width: calc(100vw - 60px);
    height: calc(100vh - 60px);
    background-color: #fff;
    border-radius: 40px;
    padding: 20px;
}
.titleTr{
  background: rgba(229, 229, 229, 0.2);
  padding: 10px;
}
.table{
  width: calc(100vw - 60px);
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  margin-left: -20px;
}
.div{
  width: 20px;
}
.contentdiv{
  min-width: calc(calc(100vw - 60px) /13);
  max-width: calc(calc(100vw - 60px) /13);
  white-space: nowrap; /* Отменяем перенос текста */
  overflow: hidden; /* Обрезаем содержимое */
  padding: 4px;
}
.inputIndiv{
  width: 100%;
}
.btn{
  border: 1px solid #494949;
  border-radius: 30px;
  width: 170px;
  font-size: 14px;
  height: 40px;
  background-color: inherit;
  margin-right: 20px;
  cursor: pointer;
  color: 494949;
}
.btn1{
  border: 1px solid #494949;
  border-radius: 30px;
  width: 150px;
  font-size: 12px;
  height: 30px;
  background-color: inherit;
  margin-right: 20px;
  cursor: pointer;
  color: 494949;
}
.Wiew{
  display: flex;
  justify-content:  flex-end;
  height: 40px;
  align-items: center;
}
</style>
