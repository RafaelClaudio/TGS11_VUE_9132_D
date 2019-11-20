import Vue from 'vue'
import Router from 'vue-router'

const DashboardLayout = () => import(/*webpackChunkName:"dashboard"*/ '../components/dashboardLayout.vue')
const Login = () => import ('../components/loginController.vue')
function loadView(view){
    return () => import(/*webpackChunkName:"view-[request]"*/ `../components/dashboardContents/${view}.vue`)
}

const routes = [
    {
        path: '/DashboardLayout',
        component: DashboardLayout,
        children: [
            {
                name: 'UserController',
                path: '/user',
                component: loadView('userController')
            },
            {
                name: 'ServiceController',
                path: '/service',
                component: loadView('servicesController')
            },
            {
                name: 'LandingController',
                path: '',
                component: loadView('landingController')
            }
        ]
    },
    {
        name: 'loginController',
        path: '/',
        component: Login,
    },
]
Vue.use(Router)

const router = new Router({mode: 'history', routes: routes})
export default router