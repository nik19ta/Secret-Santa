<template>
    <div>
        <AboutBlockHeader @open='open' />
        <AboutBlockBody id='div2' style="display : none" />
    </div>
</template>

<script>
    import AboutBlockHeader from "./AboutBlockHeader"
    import AboutBlockBody from "./AboutBlockBody";
    import $ from 'jquery'
    export default {
        name: 'AboutBlock',
        mounted() {
            console.log('mik');
        },
        components: {
            AboutBlockHeader,
            AboutBlockBody
        },
        methods: {
            open() {
                console.log('open');
                $("div#div2").slideToggle();
            }
        }
    }
</script>