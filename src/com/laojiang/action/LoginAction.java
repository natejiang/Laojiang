package com.laojiang.action;

import com.laojiang.service.inte.MyService;
import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport
{
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
	public String execute() throws Exception
	{
		if (ms.validLogin(getUsername(),getPassword())>0)
		{
			addActionMessage("哈哈，整合成功！");
			return SUCCESS;
		}
		return ERROR;
	}
}
