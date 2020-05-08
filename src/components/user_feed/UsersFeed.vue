<template>
    <div class="body">
        <div class="wrapper">
            <h2>Уже принимают участие</h2>
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
    height: 500px;
    padding-top: 50px;
    background-color: #00A460;
}
.wrapper {
    margin-right: auto;
    margin-left:  auto;
    max-width: 1700px;
    padding-right: 10px;
    padding-left:  10px;
}
h2  {
    font-size: 64px;
    color: white;
}
</style>