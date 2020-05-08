<template>
    <div class="header">
        <div class="wrapper">
            <h2>Как работает <br>проект</h2>
            <img src="../../assets/arrows.png" alt="" class="opened">
        </div>
    </div>
</template>

<script>
    export default {
        name: "AboutBlockHeader"
    }
</script>

<style scoped>
.header {
    height: 245px;
    background-color: #FF645A;
}
h2 {
    color: #ffffff;
    font-size: 64px;
}
.wrapper {
    display: flex;
    flex-direction: row;
    margin-right: auto;
    margin-left:  auto;
    max-width: 1700px;
}
.closed {
    margin-left: auto;
    align-self: center;
    height: 92px;
    width: 88px;
}
.opened {
    margin-left: auto;
    align-self: center;
    transform: rotate(90deg);
    height: 92px;
    width: 88px;
}
</style>