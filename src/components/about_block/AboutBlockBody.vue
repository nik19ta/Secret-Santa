<template>
    <div>
        <div class="body">
            <div class="wrapper">
                <div class="steps">
                    <div class="step1">
                        <img src="../../assets/about/1step.svg" class="icon" alt="">
                        <div class="text">
                            <p class="title">Подаешь заявку</p>
                            <p class="about">В ней нужно немного рассказать о своих увлечениях и помочь Санте намекнуть,
                                какому подарку ты был бы рад, или что точно не хочешь получить.</p>
                        </div>
                    </div>

                    <div class="greenLine" />

                    <div class="step2">
                        <img src="../../assets/about/2step.svg" class="icon" alt="">
                        <div class="text">
                            <p class="title">Получаешь уведомление</p>
                            <p class="about">Оно подтвердит твое участие, а также покажет, для кого ты стал Тайным
                                сантой. В твоем профиле будет информация о коллеге его увлечениях и желаниях.</p>
                        </div>
                    </div>

                    <div class="greenLine" />

                    <div class="step3">
                        <img src="../../assets/about/3step.svg" class="icon" alt="">
                        <div class="text">
                            <p class="title">Готовишь подарок</p>
                            <p class="about">Приготовь подарок, придумай для него название и выбери способ, как ты его
                                подаришь (самостоятельно или через HR*). </p>
                            <p class="ps">*Приноси подарок в к.408 и выбирай поздравительную наклейку, на которой нужно
                                написать название подарка и фамилию, имя коллеги.</p>
                        </div>
                    </div>

                    <div class="greenLine" />

                    <div class="step4">
                        <img src="../../assets/about/4step.svg" class="icon" alt="">
                        <div class="text">
                            <p class="title">Ждешь радостные уведомления</p>
                            <p class="about">Их будет два: о том, что твой подарок забрали и о том, что принесли подарок
                                для тебя. Когда заберешь подарок, в личном кабинете можно будет оставить послание для
                                Тайного Санты и прислать фотку:)</p>
                        </div>
                    </div>
                <div class="discount">
                    <p class="discountText">За участие в Тайном Санте ты получишь скидку в Боброшопе.
                        Как только ты отправишь подарок, станет доступной беспроигрышная лотерея: участвуй и получай
                        свою скидку от 10% до 60% на любой лот в декабрьской Бобромании и радуй себя новогодними
                        покупками за бобры!
                    </p>
                </div>
                </div>
            </div>
        </div>
        <div class="redline"></div>
    </div>
</template>

<script>

</script>

<style scoped>
    .body {
        background-color: white;
        justify-content: space-between;
        padding-top: 90px;
        width: 100%;
        color: #494949;
    }
    .redline {
        height: 40px;
        background-color: #FF645A;
        box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
    }
    .greenLine {
        height: 2px;
        width: 85px;
        background-color: #00A460;
        box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
        /* position: absolute;
        right: -60px;
        top: 40px; */
        margin-top: 50px;
    }
    .steps {
        display: flex;
        justify-content: space-between;
        position: relative;
        padding-bottom: 250px;
    }
    p {
        font-size: 15px;
        text-align: left;
    }
    .discount {
        position: absolute;
        right: 0px;
        /* margin-top: 40px; */
        bottom: 0;
        padding: 5px 20px;
        width: 450px;
        background: #FF645A;
        border-radius: 20px 20px 0 0;
        /* box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1); */
    }
    .discountText {
        font-size: 18px;
        font-family: CrocWebBold;
        color: white;
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
        position: relative;
        text-align: center;
    }
    .wrapper {
        margin-right: auto;
        margin-left: auto;
        max-width: 85%;
        padding-right: 10px;
        padding-left: 10px;
    }
    @media screen and (max-width: 1665px) {
        /* .greenLine {
        height: 2px;
        width: 70px;
        background-color: #00A460;
        box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
        position: absolute;
        right: -40px;
        top: 40px;
        } */
        img {
            height: 70px;
        }
        .text {
            padding: 10px;
            width: 220px;
            border-radius: 28px;
            box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
        }
        .discountText {
            font-size: 16px;
        }
    }

    @media screen and (max-width: 1430px) {
        /* .greenLine {
            height: 2px;
            width: 70px;
            background-color: #00A460;
            box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
            position: absolute;
            right: -60px;
            top: 40px;
        } */
        .body {
            padding-top: 70px;
        }
        img {
            height: 70px;
        }
        .text {
            padding: 10px;
            width: 180px;
            border-radius: 28px;
            box-shadow: 3px 3px 8px rgba(0, 0, 0, 0.1);
        }
        p {
            font-size: 12px;
            text-align: left;
        }
        .ps {
            font-size: 10px;
            color: #6B6B6B;
        }
        .discount {
            padding: 10px;
            width: 400px;
        }
    }

    @media screen and (max-width: 1240px) {
        /* .greenLine {
        height: 2px;
        width: 70px;
        background-color: #00A460;
        box-shadow: 0px 4px 7px rgba(0, 0, 0, 0.1);
        position: absolute;
        right: -50px;
        top: 40px;
        } */
    }
</style>