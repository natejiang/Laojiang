package com.laojiang.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4036934942989308429L;

	private String page;

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
	public String execute() throws Exception
	{
		return page;
	}
	
}
