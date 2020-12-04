<template lang="html">
  <div class="Main">
    <div class="content">
      <header>
        <p>тайный <br> санта</p>
        <div class="flexBtns">
          <button @click='to_form_the_pairs' type="button" class='btn' name="button">Сформировать пары</button>
          <a type="button" href='http://194.242.120.163:3650/get_users_in_csv' class='btn' name="button">Выгрузить аналитику</a>
        </div>
      </header>

      <div class="table">

        <table>
          <tr>
            <th>Тайный санта</th>
            <th>Департамент</th>
            <th>Отдел</th>
            <th>Адрес</th>
            <th>Номер</th>
            <th>Удобные даты доставки</th>
            <th>Статус</th>
            <th>Почта</th>
            <th>Одоряемый</th>
            <th>Департамент</th>
            <th>Отдел</th>
            <th>Адрес</th>
            <th>Название подарка</th>
            <th>Как будет дарить</th>
            <th>Как будет дарить</th>
            <th>Статус</th>
          </tr>
          <tr v-for='item in data'  >
            <td>{{item.Name ==  '' || item.Name == null ? 'Не указанно' : item.Name }}</td>
            <td>{{item.department ==  '' || item.department == null ? 'Не указанно' : item.department}}</td>
            <td>{{item.branch  ==  '' || item.branch == null ? 'Не указанно' : item.branch }}</td>
            <td>{{item.adress}}</td>
            <td>{{item.phone  == null ? 'Не указанно' : item.phone}}</td>
            <td>{{item.deliveryDate  == null ? 'Не указанно' : item.deliveryDate}}</td>
            <td>{{item.status}}</td>
            <td>{{item.gmail}}</td>
            <td>{{item.isPart == false ?  "Нет одоряемого":item.isPart }}</td>
            <td>{{get_user(item.gmail)['department'] == null? 'Нет данных': get_user(item.gmail)['department']}}</td>
            <td>{{get_user(item.gmail)['branch'] == null? 'Нет данных':get_user(item.gmail)['branch'] }}</td>
            <td>{{get_user(item.gmail)['adress'] == null? 'Нет данных':get_user(item.gmail)['adress'] }}</td>
            <td>Нет данных</td>
            <td>Нет данных</td>
            <td>Нет данных</td>
            <td>{{get_user(item.gmail)['status'] == null? 'Нет данных':get_user(item.gmail)['status'] }}</td>
          </tr>
        </table>
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
      url: "http://194.242.120.163:3650/all_users",
      success: function(data) {
        console.log(data);
        vm.data = data.data;
      }
    });
  },
  data() {
    return {
      data: ''
    }
  },
  methods: {
    get_user(email){
      for (let i = 0; i < this.data.length; i++) {
        if (this.data[i].isPart==email) {
          return this.data[i]
        }
        return false
      } 
    },
    other(data) {

      if ($("#" + data).css('display') == 'none') {
        $("#" + data).addClass("Wiew")
      } else {
        $("#" + data).removeClass('Wiew')
      }

    },
    to_form_the_pairs() {
      const vm = this;

      console.log('!!')
      alert('Пары сформированны')
      fetch(` http://194.242.120.163:3650/algoritm`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
      })
      .then(response => response.text())
      .then((response) => {
        console.log(response);

        $.ajax({
      type: "GET",
      url: "http://194.242.120.163:3650/all_users",
      success: function(data) {
        console.log(data);
        vm.data = data.data;
      }
    });
      })
      .catch(err => console.log(err))
    }

  }
}
</script>

<style lang="css" scoped>
TD, TH {
    padding: 5px; /* Поля вокруг текста */
    border: 1px solid #000; /* Рамка вокруг ячеек */
   }
   TABLE {
    /* background: #dc0; Цвет фона таблицы */
    border: 1px solid #000; /* Рамка вокруг таблицы */
   }
.none{
  display: none;
}
/* .titleTr, .lineContent{
  width: 98%;
  display: flex;
  justify-content:space-around;
  border-bottom: 1px solid #E5E5E5;
} */
.lineContent{
  cursor: pointer;
  width: 100%;
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
  width: calc(100vw - 20px);
  display: flex;
  /* padding: 10px; */
  justify-content: center;
  flex-wrap: wrap;
  margin-left: -20px;
}
.div{
  width: 20px;
}
.contentdiv{
  width: 200px;
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
  line-height: 40px;
  text-decoration: none;
  color: black;
  text-align: center;
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
