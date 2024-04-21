package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShujixinxiEntity;
import com.entity.view.ShujixinxiView;

import com.service.ShujixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 书籍信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-12 14:26:37
 */
@RestController
@RequestMapping("/shujixinxi")
public class ShujixinxiController {
    @Autowired
    private ShujixinxiService shujixinxiService;

    @Autowired
    private StoreupService storeupService;



    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShujixinxiEntity shujixinxi,
		HttpServletRequest request){
        EntityWrapper<ShujixinxiEntity> ew = new EntityWrapper<ShujixinxiEntity>();

		PageUtils page = shujixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shujixinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShujixinxiEntity shujixinxi, 
		HttpServletRequest request){
        EntityWrapper<ShujixinxiEntity> ew = new EntityWrapper<ShujixinxiEntity>();

		PageUtils page = shujixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shujixinxi), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShujixinxiEntity shujixinxi){
       	EntityWrapper<ShujixinxiEntity> ew = new EntityWrapper<ShujixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shujixinxi, "shujixinxi")); 
        return R.ok().put("data", shujixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShujixinxiEntity shujixinxi){
        EntityWrapper< ShujixinxiEntity> ew = new EntityWrapper< ShujixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shujixinxi, "shujixinxi")); 
		ShujixinxiView shujixinxiView =  shujixinxiService.selectView(ew);
		return R.ok("查询书籍信息成功").put("data", shujixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShujixinxiEntity shujixinxi = shujixinxiService.selectById(id);
		shujixinxi.setClicknum(shujixinxi.getClicknum()+1);
		shujixinxiService.updateById(shujixinxi);
        shujixinxi = shujixinxiService.selectView(new EntityWrapper<ShujixinxiEntity>().eq("id", id));
        return R.ok().put("data", shujixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShujixinxiEntity shujixinxi = shujixinxiService.selectById(id);
		shujixinxi.setClicknum(shujixinxi.getClicknum()+1);
		shujixinxiService.updateById(shujixinxi);
        shujixinxi = shujixinxiService.selectView(new EntityWrapper<ShujixinxiEntity>().eq("id", id));
        return R.ok().put("data", shujixinxi);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        ShujixinxiEntity shujixinxi = shujixinxiService.selectById(id);
        if(type.equals("1")) {
        	shujixinxi.setThumbsupnum(shujixinxi.getThumbsupnum()+1);
        } else {
        	shujixinxi.setCrazilynum(shujixinxi.getCrazilynum()+1);
        }
        shujixinxiService.updateById(shujixinxi);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShujixinxiEntity shujixinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shujixinxi);
        shujixinxiService.insert(shujixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShujixinxiEntity shujixinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shujixinxi);
        shujixinxiService.insert(shujixinxi);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ShujixinxiEntity shujixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shujixinxi);
        shujixinxiService.updateById(shujixinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shujixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
