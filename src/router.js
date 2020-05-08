import Vue from 'vue'
import Router from 'vue-router'

import Homepage from '@/components/Homepage.vue'
import ProfielPage from '@/components/profile/ProfielPage.vue'

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'Homepage',
      component: Homepage
    },
    {
      path: '/profile',
      name: 'ProfielPage',
      component: ProfielPage
    },
  ]
})