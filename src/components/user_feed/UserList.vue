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
        justify-content: space-between;
        padding-bottom: 30px;
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
    @media screen and (max-width: 1665px) {
        .list div {
            height: 250px;
            width: 150px;
            text-align: center;
            color: white;
        }
        .list div .avatar {
            height: 140px;
            background-color: #A2A19C;
            border-radius: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .name {
            font-family: CrocWebBold;
            font-weight: bold;
            font-size: 16px;
        }
    }
    @media screen and (max-width: 1430px) {
        .list div {
            height: 220px;
            width: 120px;
            text-align: center;
            color: white;
        }
        .list div .avatar {
            height: 110px;
            background-color: #A2A19C;
            border-radius: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .name {
            font-family: CrocWebBold;
            font-weight: bold;
            font-size: 12px;
        }
    }
</style>
