import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import forum from '@/views/modules/forum/list'
    import discussdianyingxinxi from '@/views/modules/discussdianyingxinxi/list'
    import dianyingxinxi from '@/views/modules/dianyingxinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import shujileixing from '@/views/modules/shujileixing/list'
    import dianyingfenlei from '@/views/modules/dianyingfenlei/list'
    import discussshujixinxi from '@/views/modules/discussshujixinxi/list'
    import shujixinxi from '@/views/modules/shujixinxi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/forum',
        name: '社区论坛',
        component: forum
      }
      ,{
	path: '/discussdianyingxinxi',
        name: '电影信息评论',
        component: discussdianyingxinxi
      }
      ,{
	path: '/dianyingxinxi',
        name: '电影信息',
        component: dianyingxinxi
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/shujileixing',
        name: '书籍类型',
        component: shujileixing
      }
      ,{
	path: '/dianyingfenlei',
        name: '电影分类',
        component: dianyingfenlei
      }
      ,{
	path: '/discussshujixinxi',
        name: '书籍信息评论',
        component: discussshujixinxi
      }
      ,{
	path: '/shujixinxi',
        name: '书籍信息',
        component: shujixinxi
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
