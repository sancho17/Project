package com.entity.view;

import com.entity.DianyingfenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 电影分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-12 14:26:37
 */
@TableName("dianyingfenlei")
public class DianyingfenleiView  extends DianyingfenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianyingfenleiView(){
	}
 
 	public DianyingfenleiView(DianyingfenleiEntity dianyingfenleiEntity){
 	try {
			BeanUtils.copyProperties(this, dianyingfenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
