package com.j150914.act;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j150914.controller.IAction;
import com.j150914.dao.UsersDao;
import com.j150914.pojo.Users;

public class RegistAct implements IAction {
	private UsersDao usersDao = new UsersDao();
	private boolean root;
	private boolean rootname;
	private Users users = new Users();
	private String validateNum;

	/**
	 * 注册
	 */
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		String rCode = (String) request.getSession().getAttribute("rCode");
		if (rCode.equals(validateNum)) {
			users.setRegtime(new Date());
			int insertNum = usersDao.Insert(users);
			if (insertNum==1) {
				return "@red_login.jsp";
			}
		}
		return "regist.jsp";
	}

	/**
	 * 验证邮箱
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	public String verifyemailn(HttpServletRequest request,
			HttpServletResponse response) {
		root = usersDao.emailExist(users.getEmail());
		return "@json_" + root;
	}

	/**
	 * 验证用户名
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	public String verifynamen(HttpServletRequest request,
			HttpServletResponse response) {
		rootname = usersDao.nameExist(users.getUsername());
		return "@json_" + rootname;
	}

	public boolean isRoot() {
		return root;
	}

	public void setRoot(boolean root) {
		this.root = root;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public boolean isRootname() {
		return rootname;
	}

	public void setRootname(boolean rootname) {
		this.rootname = rootname;
	}

	public String getValidateNum() {
		return validateNum;
	}

	public void setValidateNum(String validateNum) {
		this.validateNum = validateNum;
	}

}
