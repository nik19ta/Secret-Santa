<template>
    <div class="header">
        <div class="wrapper">
            <h2>Как работает <br>проект</h2>
            <img v-bind:class="[isClosed ? 'opened' : 'closed', 'transition']" @click='open' src="../../assets/arrows.png" alt="">
        </div>
    </div>
</template>

<script>
    export default {
        name: "AboutBlockHeader",
        methods: {
            open() {
                this.$emit('open')
                this.isClosed = !this.isClosed;
            }
        },
        data() {
            return {
                isClosed: false
            }
        }
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
        margin-left: auto;
        max-width: 1700px;
    }
    .closed {
        margin-left: auto;
        align-self: center;
        cursor: pointer;
        height: 92px;
        width: 88px;
    }
    .opened {
        margin-left: auto;
        align-self: center;
        cursor: pointer;
        transform: rotate(90deg);
        height: 92px;
        width: 88px;
    }
    .transition {
        transition: all 0.3s;
    }
</style>