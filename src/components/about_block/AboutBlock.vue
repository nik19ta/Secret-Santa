<template>
    <div>
        <AboutBlockHeader />
        <AboutBlockBody />
    </div>
</template>

<script>
import AboutBlockHeader from "./AboutBlockHeader"
import AboutBlockBody from "./AboutBlockBody";
    export default {
        name: 'AboutBlock',
        components: {
            AboutBlockHeader, AboutBlockBody
        }
    }
</script>