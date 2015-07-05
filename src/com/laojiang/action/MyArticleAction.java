package com.laojiang.action;

import com.laojiang.entity.MyArticle;
import com.laojiang.service.inte.MyArticleService;
import com.opensymphony.xwork2.ActionSupport;

public class MyArticleAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6799957017661927781L;
	private MyArticle article;
	private MyArticleService myArticleService;
	//依赖注入MyArticleService组件必需的setter方法
	//该方法的方法名要与MyArticleService的配置id对应

	public void setMyArticleService(MyArticleService myArticleService) {
		this.myArticleService = myArticleService;
	}
	
	public MyArticle getArticle() {
		return article;
	}

	public void setArticle(MyArticle article) {
		this.article = article;
	}



	public String add() throws Exception
	{
		int result = myArticleService.addMyArticle(article);
		if(result > 0)
		{
			return SUCCESS;
		}
		return ERROR;		
	}
}
