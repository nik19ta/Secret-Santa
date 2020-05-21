<template>
    <div class="body">
        <div class="wrapper">
            <p class="title">Уже принимают <br>участие</p>
            <UserList />
        </div>
    </div>
</template>

<script>
import UserList from './UserList'
    export default {
        name: "UsersFeed",
        components: {
            UserList
        }
    }
</script>

<style scoped>
.body {
    padding-top: 10px;
    background-color: #00A460;
}
.wrapper {
    margin-right: auto;
    margin-left:  auto;
    max-width: 85%;
    padding-right: 10px;
    padding-left:  10px;
}
.title  {
    font-size: 40px;
    line-height: 32px;
    color: white;
}
</style>