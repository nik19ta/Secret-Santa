<template>
<div class="body">
  <div class="wrapper">
    <h1>Информация для <br>Санты</h1>
    <FormBlockInputs @myEvent='myEvent' />
  </div>
</div>
</template>

<script>
import FormBlockInputs from "./FormBlockInputs";

export default {
  name: "AboutBlockBody",
  components: {
    FormBlockInputs
  },
  methods: {
    myEvent(data) {
      this.$emit('ToRed', data)
    }
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
  margin-left: auto;
  max-width: 1700px;
  padding-right: 10px;
  padding-left: 10px;
}
</style>
