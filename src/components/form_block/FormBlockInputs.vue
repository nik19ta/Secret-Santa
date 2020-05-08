<template>
    <div class="wrapper">
        <div class="form">
            <label for="name">Имя Фамилия</label>
            <div class="input_block">
                <input id="name" type="text">
            </div>

            <label for="about">Немного о себе</label>
            <div class="input_block">
                <input id="about" type="text">
                <div class="info_visited"></div>
            </div>

            <label for="wishlist">Список желаний</label>
            <div class="input_block">
                <input id="wishlist" type="text">
                <div class="info"></div>
            </div>

            <label for="blacklist">То, что совсем не нравится</label>
            <div class="input_block">
                <input id="blacklist" type="text">
                <div class="info"></div>
            </div>

            <select name="departments" v-model="departments">
                <option value="">Первый департамент</option>
                <option value="">Второй департамент</option>
                <option value="">Третий департамент</option>
                <option value="">Четверый департамент</option>
            </select>

            <select name="branches" v-model="branches">
                <option value="">Первый отдел</option>
                <option value="">Второй отдел</option>
                <option value="">Третий отдел</option>
                <option value="">Четверый отдел</option>
            </select>

            <button>Подать заявку</button>
        </div>
    </div>
</template>

<script>
    export default {
        name: "AboutBlockForm"
    }
</script>

<style scoped>
.form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}
label {
    color: #6B6B6B;
    padding-left: 20px;
    padding-bottom: 10px;
    padding-top: 20px;
    font-size: 20px;
}
input {
    padding-left: 10px;
    padding-right: 10px;
    font-size: 20px;
    border-radius: 30px;
    border-style: solid;
    border-color: #DDDDDD   ;
    height: 50px;
    width: 700px;
}
.input_block {
    display: flex;
}
.info {
    height: 65px;
    width: 69px;
    margin-left: 30px;
    margin-top: -10px;
    background-image: url("../../assets/green_info.png");
}
.info_visited {
    height: 65px;
    width: 69px;
    margin-left: 30px;
    margin-top: -10px;
    background-image: url("../../assets/visited_info.png");
}
select {
    width: 725px;
    height: 40px;
    font-size: 20px;
    border-radius: 30px;
    padding-left: 10px;
    margin-top: 30px;
}
button {
    height: 60px;
    margin-top: 30px;
    width: 100%;
    background-color: #FF645A;
    color: white;
    border-radius: 30px;
    font-weight: bold;
    font-size: 24px;
}
.wrapper {
    margin-right: auto;
    margin-left:  auto;
    max-width: 1700px;
    padding-right: 10px;
    padding-left:  10px;
}
</style>