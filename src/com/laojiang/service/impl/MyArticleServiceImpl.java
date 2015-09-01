package com.laojiang.service.impl;

import java.util.List;

import com.laojiang.dao.inte.MyArticleDao;
import com.laojiang.entity.MyArticle;
import com.laojiang.service.inte.MyArticleService;

public class MyArticleServiceImpl implements MyArticleService {
	private MyArticleDao myArticleDao;
	
	public void setMyArticleDao(MyArticleDao myArticleDao) {
		this.myArticleDao = myArticleDao;
	}
	//保存实体
	@Override
	public int addMyArticle(MyArticle myArticle) {
		try
		{
			return (Integer) myArticleDao.save(myArticle);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}		
		finally{}
	}
	//获取所有实体
	@Override
	public List<MyArticle> findAllOrderByDate(Class<MyArticle> myArticleClazz) {
		// TODO Auto-generated method stub
		try
		{
			return (List<MyArticle>)myArticleDao.findAllOrderByDate(myArticleClazz);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally{}
	}
	//分页获取实体
	@Override
	public List<MyArticle> findByPageOrderByDate(Class<MyArticle> myArticleClazz,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		try
		{
			return (List<MyArticle>)myArticleDao.findByPageOrderByDate(myArticleClazz,pageNo,pageSize);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally{}	
	}
	//根据ID删除实体
	@Override
	public boolean deleteById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		try
		{
			myArticleDao.delete(MyArticle.class,id);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}	
		finally{}
	}
}
