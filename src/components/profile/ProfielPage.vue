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
            ProfileCard, ProfilePresentCard
        }
    }
</script>

<style scoped>
.body {
    height: 1320px;
    background-color: #00A460;
}
.cards {
    display: flex;
    justify-content: space-between;
}
</style>