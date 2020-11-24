<template>
    <div class="list">
        <div class="user1">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">{{data[0].name}}</p>
            <p class="about">{{data[0].Position}}</p>
        </div>
        <div class="user2">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">{{data[1].name}}</p>
            <p class="about">{{data[1].Position}}</p>
        </div>
        <div class="user3">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">{{data[2].name}}</p>
            <p class="about">{{data[2].Position}}</p>
        </div>
        <div class="user4">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">{{data[3].name}}</p>
            <p class="about">{{data[3].Position}}</p>
        </div>
        <div class="user5">
            <img src="../../assets/avatar.png" class="avatar">
            <p class="name">{{data[4].name}}</p>
            <p class="about">{{data[4].Position}}</p>
        </div>
    </div>
</template>

<script>
    export default {
        name: "UserList",
        data: function() {
            return {
                data: []
            }
        },
        mounted() {
            let vm = this;
            fetch('http://194.242.120.163:3650/get_count_users', {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "GET",
        })
        .then(response => response.text())
        .then((response) => {
        console.log(JSON.parse(response).success);
        vm.data = JSON.parse(response).success;
          
        })
        .catch(err => console.log(err))
        }
    }
</script>

<style scoped>
    .list {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        padding-bottom: 30px;
    }
    .list div {
        height: 300px;
        width: 200px;
        text-align: center;
        color: white;
    }
    .list div .avatar {
        height: 170px;
        background-color: #A2A19C;
        border-radius: 50%;
        margin-left: auto;
        margin-right: auto;
    }
    .name {
        font-family: CrocWebBold;
        font-weight: bold;
        font-size: 18px;
    }
    .about {
        font-family: CrocWebLight;
    }
    @media screen and (max-width: 1665px) {
        .list div {
            height: 250px;
            width: 150px;
            text-align: center;
            color: white;
        }
        .list div .avatar {
            height: 140px;
            background-color: #A2A19C;
            border-radius: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .name {
            font-family: CrocWebBold;
            font-weight: bold;
            font-size: 16px;
        }
    }
    @media screen and (max-width: 1430px) {
        .list div {
            height: 220px;
            width: 120px;
            text-align: center;
            color: white;
        }
        .list div .avatar {
            height: 110px;
            background-color: #A2A19C;
            border-radius: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .name {
            font-family: CrocWebBold;
            font-weight: bold;
            font-size: 12px;
        }
    }
</style>
