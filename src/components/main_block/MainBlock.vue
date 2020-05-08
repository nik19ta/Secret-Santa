<template>
    <div class="body">
        <div class="circle"></div>
        <div class="wrapper">
            <div class="main">
                <p class='titile_h1'>Тайный</p>
                <p class='titile_h2'>Санта</p>
                <p class="text">уже принимает участие</p>
                <div class="all">
                    <div class="component">
                        <p class='count'>340</p>
                        <p class='countText'>всего</p>
                    </div>
                    <div class="component">
                        <p class='count'>3</p>
                        <p class='countText'>дп</p>
                    </div>
                    <div class="component">
                        <p class='count'>45</p>
                        <p class='countText'>из отдела</p>
                    </div>
                    <div class="component">
                        <p class='count'>268</p>
                        <p class='countText'>комнаты</p>
                    </div>
                </div>
            <router-link class="link" to="/profile"><button>Мой профиль</button></router-link>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "MainBlock"
    }
</script>

<style scoped>
.body {
    padding: 10px;
    height: 1050px;
    background-color: #00A460;
    background-image: url('../../assets/Group_6.png');
    background-repeat: space;
}
.circle {
    position: absolute;
    top: -500px;
    left: -300px;
    min-width: 1400px;
    min-height: 1400px;
    border-radius: 50%;
    background: #FFFFFF;
    border-right: 21px solid #FF645A;
    border-bottom: 21px solid #FF645A;
}
.wrapper {
    position: absolute;
    display: flex;
    flex-wrap: wrap;
    left: 5%;
}
.titile_h1 {
    font-weight: bold;
    font-size: 60px;
    color: #FF645A;
    width: 100%;
    text-transform: lowercase;
}
.titile_h2 {
    color: #FF645A;
    font-weight: bold;
    font-size: 250px;
    width: 100%;
    text-transform: lowercase;
    margin-top: -160px;
    margin-left: -10px;
}
.text {
    font-size: 20px;
    color: #494949;
    font-weight: bold;
    margin-top: -230px;
}
.all {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: -60px;
}
.link {
    text-decoration: none;
    color: white;
}
.component {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-wrap: wrap;
    height: 30px;
}
.count {
    color: #00A460;
    font-size: 60px;
    font-weight: bold;
    text-align: center;
}
.countText {
    font-size: 25px;
    color: #494949;
    font-weight: 300;
    margin-top: -80px;
    width: 100%;
}
button {
    height: 60px;
    margin-top: 140px;
    width: 80%;
    border: none;
    background-color: #FF645A;
    color: white;
    border-radius: 30px;
    font-weight: bold;
    font-size: 24px;
}
button:hover {
    background-color: #b04740;
}
</style>