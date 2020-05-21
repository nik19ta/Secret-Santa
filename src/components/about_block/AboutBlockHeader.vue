<template>
    <div class="header">
        <div class="wrapper">
            <h2>Как работает <br>проект</h2>
            <img src="../../assets/arrows.svg" v-bind:class="[isClosed ? 'opened' : 'closed', 'transition']" @click='open' alt="">
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
    padding-top: 40px;
    background-color: white;
}
h2 {
    color: #00A460;
    font-size: 40px;
    line-height: 32px;
}
.wrapper {
    display: flex;
    margin-right: auto;
    margin-left: auto;
    max-width: 85%;
}

.closed {
    margin-left: 10%;
    align-self: center;
    cursor: pointer;
    height: 120px;
    width: 120px;
}
.opened {
    margin-left: 10%;
    align-self: center;
    cursor: pointer;
    transform: rotate(90deg);
    height: 120px;
    width: 120px;
}
.transition {
    transition: all 0.3s;
}
</style>