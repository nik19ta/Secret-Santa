<template>
    <div class="body">
        <div class="wrapper">
            <h1>Информация для <br>Санты</h1>
            <AboutBlockForm />
        </div>
    </div>
</template>

<script>
import AboutBlockForm from "./FormBlockInputs";
export default {
    name: "AboutBlockBody",
    components: {
        AboutBlockForm
    }
}
</script>

<style scoped>
.body {
    padding-top: 40px;
    height: 1142px;
}
h1 {
    font-size: 64px;
    color: #ff645a;
}
.wrapper {
    display: flex;
    flex-direction: column;
    margin-right: auto;
    margin-left:  auto;
    max-width: 1700px;
    padding-right: 10px;
    padding-left:  10px;
}
</style>