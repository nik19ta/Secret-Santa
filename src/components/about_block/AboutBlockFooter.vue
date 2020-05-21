<template>
    <div class="footer">
        <div class="wrapper">
            <div class="footertext">
                <h2>адресные наклейки</h2>
                <p>Выбери одну из адресных наклеек для подарка (ты можешь взять их в 408, когда принесешь подарок)</p>
            </div>
            <div class="stickers">
                <img src="../../assets/stickers/sticker1.png" alt="">
                <img src="../../assets/stickers/sticker2.png" alt="">
                <img src="../../assets/stickers/stciker3.png" alt="">
                <img src="../../assets/stickers/sticker4.png" alt="">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "AboutBlockFooter"
    }
</script>

<style scoped>
p {
    font-size: 15px;
    text-align: left;
    width: 400px;
}
h2 {
    font-size: 20px;
    color: #FF645A;
}
.footer .wrapper {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-right: auto;
    margin-left:  auto;
    max-width: 60%;
    padding-right: 10px;
    padding-left:  10px;
}
img {
    height: 100px;
}
.stickers {
    align-self: center;
}
.footer {
    background-color: white;
    padding-bottom: 20px;
}
</style>