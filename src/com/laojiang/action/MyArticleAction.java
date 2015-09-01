package com.laojiang.action;

import java.util.List;
import java.util.TreeMap;
import com.laojiang.entity.MyArticle;
import com.laojiang.service.inte.MyArticleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyArticleAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6799957017661927781L;
	private MyArticle article;
	private int pageNo;
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
	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String add() throws Exception
	{
		int result = myArticleService.addMyArticle(article);
			
		if(result > 0)
		{
			List<MyArticle> articleList = myArticleService.findByPageOrderByDate(MyArticle.class, pageNo,5);	
			//创建ActionContext实例
			ActionContext ctx = ActionContext.getContext();
			ctx.getSession().put("articles", articleList);
			ctx.getSession().put("size", articleList.size());
			return "add_success";
		}else
		{
			return ERROR;		
		}				
	}	
	public String findAllOrderByDate() throws Exception
	{
		List<MyArticle> articles = myArticleService.findAllOrderByDate(MyArticle.class);
		//创建ActionContext实例
		if (articles != null && articles.size() > 0)
		{
			ActionContext ctx = ActionContext.getContext();
			ctx.getSession().put("articles", articles);
			ctx.getSession().put("size", articles.size());
			return SUCCESS;				
		}else
		{
			return ERROR;
		}			
	}
	public String findByPageOrderByDate() throws Exception
	{
		List<MyArticle> articles = myArticleService.findByPageOrderByDate(MyArticle.class, pageNo,5);
		//创建ActionContext实例
		if (articles != null && articles.size() > 0)
		{
			ActionContext ctx = ActionContext.getContext();
			ctx.getSession().put("articles", articles);
			ctx.getSession().put("size", articles.size());
			return SUCCESS;								
		}else
		{
			return ERROR;
		}	
	}
	public String deleteById() throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
		TreeMap<String, Object> Params =  (TreeMap<String, Object>) ctx.getParameters();
		//返回值为数组
		String[] ids = (String[]) Params.get("id");
		myArticleService.deleteById( Integer.parseInt(ids[0]));
		return "delete_success";	
	}
}
