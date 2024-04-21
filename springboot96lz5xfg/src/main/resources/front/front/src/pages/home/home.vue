<template>
<div class="home-preview" :style='{"margin":"0 auto","flexWrap":"wrap","flexDirection":"row","background":"none","display":"flex","width":"100%","justifyContent":"center"}'>

	<!-- 搜索 -->
	<div id="search" class="search animate__animated" :style='{"padding":"10px 10%","margin":"0px auto 0","borderColor":"#eee","flexWrap":"wrap","background":"#eee","borderWidth":"0px","display":"none","width":"100%","borderStyle":"solid","justifyContent":"flex-end","height":"auto","zIndex":"1002"}'>
		<div :style='{"margin":"0 10px 0 0"}' class="select">
			<el-select v-model="queryIndex">
				<el-option
				  v-for="(item,index) in queryList"
				  :key="index"
				  :label="item.queryName"
				  :value="index"
				></el-option>
			</el-select>
		</div>
		<div :style='{"margin":"0 0px 0 0"}' class="input" v-if="queryIndex==0">
			<el-input v-model="dianyingxinxidianyingmingcheng" placeholder="电影名称"></el-input>
		</div>
		<div :style='{"margin":"0"}' class="btn" v-if="queryIndex==0">
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 16px","margin":"0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"2px","background":"#eccc19","width":"auto","lineHeight":"32px","fontSize":"16px","height":"32px"}' type="primary" @click="search('dianyingxinxi')">
				<span class="icon iconfont icon-chakan14" :style='{"color":"rgba(255, 255, 255, 1)","margin":"0 4px 0 0","fontSize":"20px"}'></span>
				
			</el-button>
		</div>
		<div :style='{"margin":"0 0px 0 0"}' class="input" v-if="queryIndex==1">
			<el-input v-model="shujixinxishujimingcheng" placeholder="书籍名称"></el-input>
		</div>
		<div :style='{"margin":"0"}' class="btn" v-if="queryIndex==1">
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 16px","margin":"0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"2px","background":"#eccc19","width":"auto","lineHeight":"32px","fontSize":"16px","height":"32px"}' type="primary" @click="search('shujixinxi')">
				<span class="icon iconfont icon-chakan14" :style='{"color":"rgba(255, 255, 255, 1)","margin":"0 4px 0 0","fontSize":"20px"}'></span>
				
			</el-button>
		</div>
	</div>
	<!-- 搜索 -->



		



<!-- 特价商品 -->
<div id="animate_listdianyingxinxi" class="lists animate__animated" :style='{"width":"100%","padding":"30px calc((100% - 1200px)/2) 40px","margin":"0 auto","position":"relative","background":"#efeeec","order":"4"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"auto","margin":"0 auto","textAlign":"center","background":"none","height":"60px"}'>
	  <span :style='{"padding":"0","fontSize":"22px","color":"#222","fontWeight":"600","display":"block","font":"\"宋体\""}'>电影信息展示</span>
	</div>
	
	
	<!-- 样式一 -->
	<div class="list list1 index-pv1" :style='{"padding":"0 calc((100% - 1200px)/2)","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}'>
		<div :style='{"cursor":"pointer","margin":"0","background":"none","display":"inline-block","width":"18.8%","position":"relative","height":"auto"}' v-for="(item,index) in dianyingxinxiList" :key="index" @click="toDetail('dianyingxinxiDetail', item)" class="list-item animation-box">
			<img :style='{"border":"1px solid #ccc","padding":"20px 10px","objectFit":"contain","background":"#fff","display":"block","width":"100%","height":"240px"}' v-if="preHttp(item.fengmiantu)" :src="item.fengmiantu.split(',')[0]" alt="" />
			<img :style='{"border":"1px solid #ccc","padding":"20px 10px","objectFit":"contain","background":"#fff","display":"block","width":"100%","height":"240px"}' v-else :src="baseUrl + (item.fengmiantu?item.fengmiantu.split(',')[0]:'')" alt="" />
			<div class="name line1" :style='{"padding":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis"}'>{{item.dianyingmingcheng}}</div>
			<div class="name line1" :style='{"padding":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis"}'>{{item.daoyan}}</div>
			<div :style='{"width":"100%","padding":"0 0px","display":"none"}'>
			  <span class="icon iconfont icon-shijian21" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.addtime}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-zan10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.thumbsupnum}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-shoucang10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.storeupnum}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-chakan2" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.clicknum}}</span>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	






	
	
	<div @click="moreBtn('dianyingxinxi')" :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"2px 2px 2px 6px","margin":"0","top":"40px","borderRadius":"4px","textAlign":"center","background":"#ca1913","display":"block","width":"auto","position":"absolute","right":"calc((100% - 1200px)/2)"}'>
		<span :style='{"color":"#fff","fontSize":"12px"}'>MORE+</span>
		<i :style='{"color":"#fff","fontSize":"16px","display":"inline-block"}' class="icon iconfont "></i>
	</div>
	

</div>
<!-- 特价商品 -->

<!-- 特价商品 -->
<div id="animate_listshujixinxi" class="lists animate__animated" :style='{"width":"100%","padding":"30px calc((100% - 1200px)/2) 40px","margin":"0 auto","position":"relative","background":"#efeeec","order":"4"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"auto","margin":"0 auto","textAlign":"center","background":"none","height":"60px"}'>
	  <span :style='{"padding":"0","fontSize":"22px","color":"#222","fontWeight":"600","display":"block","font":"\"宋体\""}'>书籍信息展示</span>
	</div>
	
	
	<!-- 样式一 -->
	<div class="list list1 index-pv1" :style='{"padding":"0 calc((100% - 1200px)/2)","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}'>
		<div :style='{"cursor":"pointer","margin":"0","background":"none","display":"inline-block","width":"18.8%","position":"relative","height":"auto"}' v-for="(item,index) in shujixinxiList" :key="index" @click="toDetail('shujixinxiDetail', item)" class="list-item animation-box">
			<img :style='{"border":"1px solid #ccc","padding":"20px 10px","objectFit":"contain","background":"#fff","display":"block","width":"100%","height":"240px"}' v-if="preHttp(item.tupian)" :src="item.tupian.split(',')[0]" alt="" />
			<img :style='{"border":"1px solid #ccc","padding":"20px 10px","objectFit":"contain","background":"#fff","display":"block","width":"100%","height":"240px"}' v-else :src="baseUrl + (item.tupian?item.tupian.split(',')[0]:'')" alt="" />
			<div class="name line1" :style='{"padding":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis"}'>{{item.shujimingcheng}}</div>
			<div class="name line1" :style='{"padding":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis"}'>作者:{{item.zuozhe}}</div>
			<div :style='{"width":"100%","padding":"0 0px","display":"none"}'>
			  <span class="icon iconfont icon-shijian21" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.addtime}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-zan10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.thumbsupnum}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-shoucang10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.storeupnum}}</span>
			</div>
			<div :style='{"padding":"0 0px","margin":"0 5px 0 0","display":"inline-block"}'>
			  <span class="icon iconfont icon-chakan2" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#666"}'></span>
			  <span class="text" :style='{"color":"#666","lineHeight":"1.5","fontSize":"12px"}'>{{item.clicknum}}</span>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	






	
	
	<div @click="moreBtn('shujixinxi')" :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"2px 2px 2px 6px","margin":"0","top":"40px","borderRadius":"4px","textAlign":"center","background":"#ca1913","display":"block","width":"auto","position":"absolute","right":"calc((100% - 1200px)/2)"}'>
		<span :style='{"color":"#fff","fontSize":"12px"}'>MORE+</span>
		<i :style='{"color":"#fff","fontSize":"16px","display":"inline-block"}' class="icon iconfont "></i>
	</div>
	

</div>
<!-- 特价商品 -->
	
</div>
</template>

<script>
import 'animate.css'
import Swiper from "swiper";

  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        queryList:[
          {
              queryName:"电影名称",
          },
          {
              queryName:"书籍名称",
          },
        ],
        queryIndex: 0,
        dianyingxinxidianyingmingcheng: '',
        shujixinxishujimingcheng: '',
        newsList: [],

        dianyingxinxiList: [],
        shujixinxiList: [],




      }
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.getList();
    },
	mounted() {
		window.addEventListener('scroll', this.handleScroll)
		setTimeout(()=>{
			this.handleScroll()
		},100)
		
		this.swiperChanges()
	},
	beforeDestroy() {
	  window.removeEventListener('scroll', this.handleScroll)
	},
    //方法集合
    methods: {
		swiperChanges() {
			setTimeout(()=>{
			},750)
		},


		handleScroll() {
			let arr = [
				{id:'search',css:'animate__fadeInUp'},
				{id:'about',css:'animate__'},
				{id:'system',css:'animate__'},
				{id:'animate_listdianyingxinxi',css:'animate__'},
				{id:'animate_listshujixinxi',css:'animate__'},
				{id:'msgs',css:'animate__'},
				{id:'friendly',css:'animate__'}
			]
			
			for (let i in arr) {
				let doc = document.getElementById(arr[i].id)
				if (doc) {
					let top = doc.offsetTop
					let win_top = window.innerHeight + window.pageYOffset
					// console.log(top,win_top)
					if (win_top > top && doc.classList.value.indexOf(arr[i].css) < 0) {
						// console.log(doc)
						doc.classList.add(arr[i].css)
					}
				}
			}
		},
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
      search(tablename) {
        if (this.queryIndex == 0 && this.dianyingxinxidianyingmingcheng) {
          this.$router.push({path: '/index/' + tablename, query: {indexQueryCondition: this.dianyingxinxidianyingmingcheng}});
        }
        if (this.queryIndex == 1 && this.shujixinxishujimingcheng) {
          this.$router.push({path: '/index/' + tablename, query: {indexQueryCondition: this.shujixinxishujimingcheng}});
        }
      },
		getList() {
			let autoSortUrl = "";
			let data = {}
			
			data = {
				page: 1,
				limit: 5,
			}
			this.$http.get('dianyingxinxi/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.dianyingxinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			data = {
				page: 1,
				limit: 5,
			}
			this.$http.get('shujixinxi/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.shujixinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {id: item.id}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
		// -------- search --------
		.search .select /deep/ .el-input__inner {
			border: 0px solid #ddd;
			border-radius: 2px;
			padding: 0 30px 0 10px;
			box-shadow: 0 0 0px rgba(64, 158, 255, .3);
			outline: none;
			color: rgba(64, 158, 255, 1);
			width: 180px;
			font-size: 14px;
			height: 32px;
		}
		
		.search .input /deep/ .el-input__inner {
			border-radius: 2px;
			padding: 0 10px;
			color: rgba(64, 158, 255, 1);
			width: 280px;
			font-size: 14px;
			border-color: #ddd;
			border-width: 0px;
			border-style: solid;
			height: 32px;
		}
		// -------- search --------
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				box-shadow: 0px 0px 0px 0px #e7e7e7;
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(0.98) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
	

	.home-preview .news .list13 .newsSwiper13 .swiper-pagination /deep/ span.swiper-pagination-bullet {
				border-radius: 100%;
				margin: 0 4px;
				background: #fff;
				display: inline-block;
				width: 10px;
				opacity: .2;
				height: 10px;
			}
	
	.home-preview .news .list13 .newsSwiper13 .swiper-pagination /deep/ span.swiper-pagination-bullet:hover {
				background: rgba(202,25,19,1);
				opacity: 1;
			}
	
	.home-preview .news .list13 .newsSwiper13 .swiper-pagination /deep/ span.swiper-pagination-bullet.swiper-pagination-bullet-active {
				background: rgba(202,25,19,1);
				opacity: 1;
			}







	.home-preview .recommend .list17 .item .image {
				border: 1px solid #ddd;
				border-radius: 2px;
				padding: 20px 10px;
				background: #fff;
				object-fit: contain;
				display: block;
				width: 100%;
				transition: 0.3s;
				height: 240px;
			}

	.home-preview .recommend .list17 .item:hover .image {
				transform: scale(1);
			}
	
	.home-preview .recommend .list17 .item .content {
				border-radius: 0px;
				padding: 0px 0;
				left: 0;
				bottom: 0;
				background: none;
				display: flex;
				width: 100%;
				position: inherit;
				transition: 0.3s;
				height: auto;
			}
	
	.home-preview .recommend .list17 .item:hover .content {
				bottom: 0;
			}


</style>
