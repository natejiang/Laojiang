package com.laojiang.action;

import com.laojiang.service.inte.MyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3449260016111628106L;
	private String username;
	private String password;
	private MyService ms;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public MyService getMs() {
		return ms;
	}
	public void setMs(MyService ms) {
		this.ms = ms;
	}
	public String login() throws Exception
	{
		if (ms.validLogin(getUsername(),getPassword())>0)
		{
			ActionContext ctx = ActionContext.getContext();
			ctx.getSession().put("username", getUsername());
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String logout() throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
		ctx.getSession().put("username", "");
		return "logout";
	}
	
}
