package com.laojiang.dao.impl;

import java.util.List;

import com.laojiang.dao.inte.MyArticleDao;
import com.laojiang.entity.MyArticle;

public class MyArticleDaoHibernate4 extends BaseDaoHibernate4<MyArticle>
	implements MyArticleDao
{
		//获取所有实体按日期和时间排序
		@Override
		public List<MyArticle> findAllOrderByDate(Class<MyArticle> entityClazz) {
			return find("select en from " + entityClazz.getSimpleName() + " en" + " order by en.date desc,en.time desc");
		}
		//分页获取实体按日期和时间排序
		public List<MyArticle> findByPageOrderByDate(Class<MyArticle> entityClazz,int pageNo,int pageSize)
		{
			String hql = "select en from " + entityClazz.getSimpleName() + " en" + " order by en.date desc,en.time desc";
			return findByPage(hql,pageNo,pageSize);			
		}
}
