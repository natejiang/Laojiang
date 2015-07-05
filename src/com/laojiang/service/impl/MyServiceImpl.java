package com.laojiang.service.impl;

import com.laojiang.service.inte.MyService;

public class MyServiceImpl implements MyService
{
	/**
	 * 密码验证插件
	 */

	@Override
	public int validLogin(String username,String password) {
		if (username.equals("jiangnan") && password.equals("cttbj10050"))
		{
			return 99;
		}
		return -1;
	}
	
}
