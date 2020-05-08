<template>
    <div class="list">
        <img src="../../assets/star.png" alt="">
        <div class="user1">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user2">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user3">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user4">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user5">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user6">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <div class="user7">
            <div class="avatar"></div>
            <p class="name">Имя Фамилия</p>
            <p class="about">Инженер Разработчик</p>
        </div>
        <img src="../../assets/star.png" alt="">
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
}
.list div {
    height: 300px;
    width: 200px;
    text-align: center;
    color: white;
}
.list div .avatar {
    height: 150px;
    width: 150px;
    background-color: #A2A19C;
    border-radius: 50%;
    margin-bottom: 20px;
    margin-left: auto;
    margin-right: auto;
}
img {
    margin-top: 20px;
    height: 120px;
}
.name {
    font-weight: bold;
    font-size: 18px;
}
.about {

}
</style>