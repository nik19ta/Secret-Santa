<template>
<div class="body">
  <div class="cards">
    <ProfileCard />
    <ProfilePresentCard />
  </div>
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

<style scoped>
.body {
  min-height: 100vh;
  background-color: #00A460;
  padding-bottom: 30px;
}

.cards {
  display: flex;
  justify-content: space-between;
}
</style>
