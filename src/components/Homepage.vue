<template>
  <div>
    <MainBlock />
    <AboutBlock />
    <FormBlock />
    <UsersFeed />
  </div>
</template>

<script>
import UsersFeed from "./user_feed/UsersFeed";
import AboutBlock from "./about_block/AboutBlock"
import FormBlock from "./form_block/FormBlock";
import MainBlock from "./main_block/MainBlock";
export default {
  components: {
    MainBlock, FormBlock, UsersFeed, AboutBlock
  }
}
</script>