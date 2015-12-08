package com.j150914.act;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j150914.controller.IAction;

public class UserAct implements IAction  {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String goUserInfo(HttpServletRequest request,
			HttpServletResponse response) {
		request.getSession().getAttribute("user");
		
		return null;
	}

}
