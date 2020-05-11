<template>
<div id='takepart'>
  <!-- <AboutBlockHeader /> -->
  <AboutBlockBody @ToRed='ToRed' />
</div>
</template>

<script>
import AboutBlockBody from "./FormBlockBody";
export default {
  name: "AboutBlock",
  components: {
    AboutBlockBody
  },
  methods: {
    ToRed(data) {
      this.$emit('ToRed', data)
    }
  }
}
</script>

<style scoped>
</style>
