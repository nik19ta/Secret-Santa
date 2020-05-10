<template>
<div class="body">
  <button type="button" @click='toAdmin' v-if='!isAdmin' name="button"> Перейти в админ панель </button>
  <div class="cards">
    <ProfileCard v-if='!isAdmin' />
    <ProfilePresentCard v-if='!isAdmin' />
    <admin v-if='isAdmin' />
  </div>
</div>
</template>

<script>
import ProfileCard from './ProfileCard'
import ProfilePresentCard from './ProfilePresentCard'
import admin from '../admin/admin'

export default {
  name: 'ProfilePage',
  components: {
    ProfileCard,
    ProfilePresentCard,
    admin
  },
  data() {
    return {
      isAdmin: false
    }
  },
  methods: {
    toAdmin() {
      console.log('ni');
      this.isAdmin = !this.isAdmin;
    }
  }
}
</script>

<style scoped>
.body {
  padding-top: 40px;
  min-height: 100vh;
  background-color: #00A460;
  padding-bottom: 40px;
}

.cards {
  display: flex;
  justify-content: space-between;
}

button {
  position: absolute;
  top: 10px;
  right: 40px;
  padding: 15px;
  background: #FF645A;
  border: 0;
  font-size: 20px;
  border-radius: 15px;
  color: #fff;
  cursor: pointer;
}
</style>
