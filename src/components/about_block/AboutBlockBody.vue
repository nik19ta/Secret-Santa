<template>
    <div>
        <div class="wrapper">
            <div class="body">
                <div class="santa1">
                    <img src="../../assets/santas/santa1.png" alt="">
                    <div class="text">
                        <p>Подай заявку. Расскажи о себе, какие у тебя есть мечты и что ты не любишь. Получи сообщение на почту, для кого ты стал Тайным Сантой</p>
                    </div>
                </div>
                <div class="santa2">
                    <img src="../../assets/santas/santa2.png" alt="">
                    <div class="text">
                        <p>Зайди в личный кабинет, узнай о желаниях и хобби коллеги, для которого ты стал Тайным Сантой.</p>
                        <p>Подготовь подарок. В личном кабинете придумай название подарка, выбери как ты будешь дарить (через HR| или самостоятельно)</p>
                    </div>
                </div>
                <div class="santa3">
                    <img src="../../assets/santas/santa3.png" alt="">
                    <div class="text">
                        <p>Приноси подарок в HR (408), наклеивай адресную наклейку с названием подарка.</p>
                        <p>Жди когда твой подарок заберут, а тебе придет извещение о том, что Танйый Санта приготовил подарок тебе. Приходи его забирать (408). Оставляй послание и выкладывай фото своего подарка</p>
                    </div>
                    <a class='link' href="#takepart"><button @click="openSlide('takepart')">Принять участие</button></a>
                </div>
            </div>
        </div>
        <AboutBlockFooter />
        <div class="redline"></div>
    </div>
</template>

<script>
    import AboutBlockFooter from "./AboutBlockFooter";
    export default {
        name: "AboutBlockBody",
        components: {
            AboutBlockFooter
        }
    }
</script>

<style scoped>
    .body {
        margin-top: 90px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        height: 900px;
        color: #494949;
    }
    .redline {
        height: 115px;
        background-color: #FF645A;
    }
    p {
        font-size: 20px;
        text-align: left;
        width: 400px;
    }
    .text {
        margin-top: -20px;
        padding: 10px;
        width: 450px;
        border-radius: 28px;
        box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
    }
    .body p::before {
        content: '';
        height: 10px;
        width: 10px;
        margin-right: 10px;
        border-radius: 50%;
        background-color: #FF645A;
        display: inline-block;
    }
    .santa1,
    .santa2,
    .santa3 {
        text-align: center;
    }
    .santa2 {
        align-self: center;
    }
    .wrapper {
        margin-right: auto;
        margin-left: auto;
        max-width: 1700px;
        padding-right: 10px;
        padding-left: 10px;
    }
    button {
        outline: none;
        height: 60px;
        margin-top: 30px;
        width: 100%;
        border: none;
        cursor: pointer;
        background-color: #FF645A;
        color: white;
        border-radius: 30px;
        font-weight: bold;
        font-size: 24px;
        text-decoration: none;
    }
    button:hover {
        background-color: #b04740;
    }
    .link {
        color: #fff;
        text-decoration: none;
    }
</style>