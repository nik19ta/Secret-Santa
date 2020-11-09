<template>
    <div class="list">
        <div class="user1">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user2">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user3">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user4">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user5">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
    </div>
</template>

<script>
    export default {
        name: "UserList"
    }
</script>

<style scoped>
.list {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    padding-bottom: 30px;
  padding-top: 10px;
}
.list div {
    height: 300px;
    width: 200px;
    text-align: center;
    color: white;
}
.list div .avatar {
    height: 170px;
    background-color: #A2A19C;
    border-radius: 50%;
    margin-left: auto;
    margin-right: auto;
}
.name {
    font-family: CrocWebBold;
    font-weight: bold;
    font-size: 18px;
}
.about {
    font-family: CrocWebLight;
}
.user1, .user2,.user3,.user4,.user5 {
  margin: 10px;
}
</style>