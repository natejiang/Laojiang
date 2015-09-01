package com.laojiang.service.inte;

import java.util.List;

import com.laojiang.entity.MyArticle;

public interface MyArticleService  {
	int addMyArticle(MyArticle myArticle);
	List<MyArticle> findAllOrderByDate(Class<MyArticle> myArticleClazz);
	List<MyArticle> findByPageOrderByDate(Class<MyArticle> myArticleClazz,int pageNo,int pageSize);
	boolean deleteById(Integer sid) throws Exception;
}
