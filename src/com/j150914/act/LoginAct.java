package com.j150914.act;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j150914.controller.IAction;
import com.j150914.dao.UsersDao;
import com.j150914.pojo.Users;

public class LoginAct implements IAction {
	private UsersDao usersDao = new UsersDao();
	private Users users = new Users();
	private String validateNum;
	private String save_pwd;

	/**
	 * 登陆退出
	 */
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String rCode = (String) request.getSession().getAttribute("rCode");
		if (rCode.equals(validateNum)) {
			if (users.getUsername() != null && users.getUserpwd() != null) {
				Users userf = usersDao.findOne(users.getUsername());
				if (users.getUserpwd().equals(userf.getUserpwd())) {
					HttpSession session = request.getSession();
					session.setAttribute("name", users.getUsername());
					session.setAttribute("pw", users.getUserpwd());
					session.setAttribute("gwc", null);
				} else {
					return "@red_login.jsp";
				}
				String value = null;
				if ("on".equals(save_pwd)) {
					value = save_pwd;
				}
				setCookie(
						response,
						"rememberme&freelogin",
						value + "," + users.getUsername() + ","
								+ users.getUserpwd(), 60 * 60 * 24 * 7 * 2);
				return "index.jsp";
			}
		} else {
			request.getSession().invalidate();
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if ("rememberme&freelogin".equals(cookie.getName())) {
					setCookie(response, "rememberme&freelogin", null, 0);
				}
			}
		}
		return "@red_login.jsp";
	}

	private void setCookie(HttpServletResponse response, String name,
			String value, int time) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(time);
		cookie.setPath("/");
		response.addCookie(cookie);
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getValidateNum() {
		return validateNum;
	}

	public void setValidateNum(String validateNum) {
		this.validateNum = validateNum;
	}

	public String getSave_pwd() {
		return save_pwd;
	}

	public void setSave_pwd(String save_pwd) {
		this.save_pwd = save_pwd;
	}

}
