import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Forum from '../pages/forum/list'
import ForumAdd from '../pages/forum/add'
import ForumDetail from '../pages/forum/detail'
import MyForumList from '../pages/forum/myForumList'
import Storeup from '../pages/storeup/list'
import payList from '../pages/pay'

import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import dianyingfenleiList from '../pages/dianyingfenlei/list'
import dianyingfenleiDetail from '../pages/dianyingfenlei/detail'
import dianyingfenleiAdd from '../pages/dianyingfenlei/add'
import dianyingxinxiList from '../pages/dianyingxinxi/list'
import dianyingxinxiDetail from '../pages/dianyingxinxi/detail'
import dianyingxinxiAdd from '../pages/dianyingxinxi/add'
import shujileixingList from '../pages/shujileixing/list'
import shujileixingDetail from '../pages/shujileixing/detail'
import shujileixingAdd from '../pages/shujileixing/add'
import shujixinxiList from '../pages/shujixinxi/list'
import shujixinxiDetail from '../pages/shujixinxi/detail'
import shujixinxiAdd from '../pages/shujixinxi/add'
import discussdianyingxinxiList from '../pages/discussdianyingxinxi/list'
import discussdianyingxinxiDetail from '../pages/discussdianyingxinxi/detail'
import discussdianyingxinxiAdd from '../pages/discussdianyingxinxi/add'
import discussshujixinxiList from '../pages/discussshujixinxi/list'
import discussshujixinxiDetail from '../pages/discussshujixinxi/detail'
import discussshujixinxiAdd from '../pages/discussshujixinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'pay',
					component: payList,
				},
				{
					path: 'forum',
					component: Forum
				},
				{
					path: 'forumAdd',
					component: ForumAdd
				},
				{
					path: 'forumDetail',
					component: ForumDetail
				},
				{
					path: 'myForumList',
					component: MyForumList
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'dianyingfenlei',
					component: dianyingfenleiList
				},
				{
					path: 'dianyingfenleiDetail',
					component: dianyingfenleiDetail
				},
				{
					path: 'dianyingfenleiAdd',
					component: dianyingfenleiAdd
				},
				{
					path: 'dianyingxinxi',
					component: dianyingxinxiList
				},
				{
					path: 'dianyingxinxiDetail',
					component: dianyingxinxiDetail
				},
				{
					path: 'dianyingxinxiAdd',
					component: dianyingxinxiAdd
				},
				{
					path: 'shujileixing',
					component: shujileixingList
				},
				{
					path: 'shujileixingDetail',
					component: shujileixingDetail
				},
				{
					path: 'shujileixingAdd',
					component: shujileixingAdd
				},
				{
					path: 'shujixinxi',
					component: shujixinxiList
				},
				{
					path: 'shujixinxiDetail',
					component: shujixinxiDetail
				},
				{
					path: 'shujixinxiAdd',
					component: shujixinxiAdd
				},
				{
					path: 'discussdianyingxinxi',
					component: discussdianyingxinxiList
				},
				{
					path: 'discussdianyingxinxiDetail',
					component: discussdianyingxinxiDetail
				},
				{
					path: 'discussdianyingxinxiAdd',
					component: discussdianyingxinxiAdd
				},
				{
					path: 'discussshujixinxi',
					component: discussshujixinxiList
				},
				{
					path: 'discussshujixinxiDetail',
					component: discussshujixinxiDetail
				},
				{
					path: 'discussshujixinxiAdd',
					component: discussshujixinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
