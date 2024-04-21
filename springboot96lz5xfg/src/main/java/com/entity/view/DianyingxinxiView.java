package com.entity.view;

import com.entity.DianyingxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 电影信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-12 14:26:37
 */
@TableName("dianyingxinxi")
public class DianyingxinxiView  extends DianyingxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianyingxinxiView(){
	}
 
 	public DianyingxinxiView(DianyingxinxiEntity dianyingxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, dianyingxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
