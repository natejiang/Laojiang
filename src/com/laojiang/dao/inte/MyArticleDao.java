package com.laojiang.dao.inte;

import java.util.List;

import com.laojiang.entity.MyArticle;

public interface MyArticleDao extends BaseDao<MyArticle>{
		//获取所有实体按日期和时间排序
		List<MyArticle> findAllOrderByDate(Class<MyArticle> entityClazz);	
		//分页获取实体按日期和时间排序
		List<MyArticle> findByPageOrderByDate(Class<MyArticle> entityClazz,int pageNo,int Size);
}
