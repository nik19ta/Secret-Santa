<template>
<div class="body">
  <div class="wrapper">
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
  background-color: white;
  padding-top: 40px;
  padding-bottom: 50px;
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
  max-width: 85%;
  padding-right: 10px;
  padding-left: 10px;
}
</style>
