package com.laojiang.service.impl;

import com.laojiang.dao.inte.MyArticleDao;
import com.laojiang.entity.MyArticle;
import com.laojiang.service.inte.MyArticleService;

public class MyArticleServiceImpl implements MyArticleService {
	private MyArticleDao myArticleDao;
	
	public void setMyArticleDao(MyArticleDao myArticleDao) {
		this.myArticleDao = myArticleDao;
	}

	@Override
	public int addMyArticle(MyArticle myArticle) {
		

		return (Integer) myArticleDao.save(myArticle);
	}
	

}
