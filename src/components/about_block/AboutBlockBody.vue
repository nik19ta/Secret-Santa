<template>
    <div>
        <div class="body">
            <div class="wrapper">
                <div class="steps">
                    <div class="step1">
                        <img src="../../assets/about/1step.svg" alt="">
                        <div class="text">
                            <p class="title">Подаешь заявку</p>
                            <p class="about">В ней нужно немного рассказать о своих увлечениях и помочь Санте намекнуть, какому подарку ты был бы рад, или что точно не хочешь получить.</p>
                        </div>
                    </div>
                    <div class="step2">
                        <img src="../../assets/about/2step.svg" alt="">
                        <div class="text">
                            <p class="title">Получаешь уведомление</p>
                            <p class="about">Оно подтвердит твое участие, а также покажет, для кого ты стал Тайным сантой. В твоем профиле будет информация о коллеге его увлечениях и желаниях.</p>
                        </div>
                    </div>
                    <div class="step3">
                        <img src="../../assets/about/3step.svg" alt="">
                        <div class="text">
                            <p class="title">Готовишь подарок</p>
                            <p class="about">Приготовь подарок, придумай для него название и выбери способ, как ты его подаришь (самостоятельно или через HR*). </p>
                            <p class="ps">*Приноси подарок в к.408 и выбирай поздравительную наклейку, на которой нужно написать название подарка и фамилию, имя коллеги.</p>
                        </div>
                    </div>
                    <div class="step4">
                        <img src="../../assets/about/4step.svg" alt="">
                        <div class="text">
                            <p class="title">Ждешь радостные уведомления</p>
                            <p class="about">Их будет два: о том, что твой подарок забрали и о том, что принесли подарок для тебя. Когда заберешь подарок, в личном кабинете можно будет оставить послание для Тайного Санты и прислать фотку:)</p>
                        </div>
                    </div>
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
    background-color: white;
    justify-content: space-between;
    padding-top: 90px;
    height: 430px;
    width: 100%;
    color: #494949;
}
.redline {
    height: 40px;
    background-color: #FF645A;
    box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
}
.steps {
    display: flex;
    justify-content: space-between;
}
p {
    font-size: 15px;
    text-align: left;
}
.ps {
    font-size: 11px;
    color: #6B6B6B;
}
.title {
    color: #00A460;
}
.text {
    padding: 10px;
    width: 260px;
    border-radius: 28px;
    box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
}
.step1,
.step2,
.step3,
.step4{
    text-align: center;
}
.wrapper {
    margin-right: auto;
    margin-left: auto;
    max-width: 85%;
    padding-right: 10px;
    padding-left: 10px;
}
</style>