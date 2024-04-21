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

import com.entity.DianyingxinxiEntity;
import com.entity.view.DianyingxinxiView;

import com.service.DianyingxinxiService;
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
 * 电影信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-12 14:26:37
 */
@RestController
@RequestMapping("/dianyingxinxi")
public class DianyingxinxiController {
    @Autowired
    private DianyingxinxiService dianyingxinxiService;

    @Autowired
    private StoreupService storeupService;



    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DianyingxinxiEntity dianyingxinxi,
		HttpServletRequest request){
        EntityWrapper<DianyingxinxiEntity> ew = new EntityWrapper<DianyingxinxiEntity>();

		PageUtils page = dianyingxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dianyingxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DianyingxinxiEntity dianyingxinxi, 
		HttpServletRequest request){
        EntityWrapper<DianyingxinxiEntity> ew = new EntityWrapper<DianyingxinxiEntity>();

		PageUtils page = dianyingxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dianyingxinxi), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DianyingxinxiEntity dianyingxinxi){
       	EntityWrapper<DianyingxinxiEntity> ew = new EntityWrapper<DianyingxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dianyingxinxi, "dianyingxinxi")); 
        return R.ok().put("data", dianyingxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DianyingxinxiEntity dianyingxinxi){
        EntityWrapper< DianyingxinxiEntity> ew = new EntityWrapper< DianyingxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dianyingxinxi, "dianyingxinxi")); 
		DianyingxinxiView dianyingxinxiView =  dianyingxinxiService.selectView(ew);
		return R.ok("查询电影信息成功").put("data", dianyingxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DianyingxinxiEntity dianyingxinxi = dianyingxinxiService.selectById(id);
		dianyingxinxi.setClicknum(dianyingxinxi.getClicknum()+1);
		dianyingxinxiService.updateById(dianyingxinxi);
        dianyingxinxi = dianyingxinxiService.selectView(new EntityWrapper<DianyingxinxiEntity>().eq("id", id));
        return R.ok().put("data", dianyingxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DianyingxinxiEntity dianyingxinxi = dianyingxinxiService.selectById(id);
		dianyingxinxi.setClicknum(dianyingxinxi.getClicknum()+1);
		dianyingxinxiService.updateById(dianyingxinxi);
        dianyingxinxi = dianyingxinxiService.selectView(new EntityWrapper<DianyingxinxiEntity>().eq("id", id));
        return R.ok().put("data", dianyingxinxi);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        DianyingxinxiEntity dianyingxinxi = dianyingxinxiService.selectById(id);
        if(type.equals("1")) {
        	dianyingxinxi.setThumbsupnum(dianyingxinxi.getThumbsupnum()+1);
        } else {
        	dianyingxinxi.setCrazilynum(dianyingxinxi.getCrazilynum()+1);
        }
        dianyingxinxiService.updateById(dianyingxinxi);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DianyingxinxiEntity dianyingxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dianyingxinxi);
        dianyingxinxiService.insert(dianyingxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DianyingxinxiEntity dianyingxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dianyingxinxi);
        dianyingxinxiService.insert(dianyingxinxi);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody DianyingxinxiEntity dianyingxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dianyingxinxi);
        dianyingxinxiService.updateById(dianyingxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        dianyingxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
