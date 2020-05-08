<template>
<div class="">
  <h1>efgh</h1>
  <ProfileCard />
  <ProfilePresentCard />
</div>
</template>

<script>
import ProfileCard from './ProfileCard'
import ProfilePresentCard from './ProfilePresentCard'
export default {
  name: 'ProfilePage',
  components: {
    ProfileCard,
    ProfilePresentCard
  }
}
</script>

<style>
body {
  height: 1320px;
  background-color: #00A460;
}
</style>
