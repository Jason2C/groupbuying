package com.j150914.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.j150914.pojo.Users;

//bid,bname,bookpric,bimgs,bconut,btype,
public class UsersDao extends BaseDao {

	/*
	 * public List<Goods> findByPage(int page, int pageSize) { String sql =
	 * getSelectAll() + "  limit ?,? "; return findSome(sql, page * pageSize,
	 * pageSize);
	 * 
	 * }
	 */

	/*
	 * public int countAll() {
	 * 
	 * try { ResultSet rs = super.query("select count(*) from t_goods"); if
	 * (rs.next()) { return rs.getInt(1); } super.closeConnection(); } catch
	 * (SQLException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } return 0; }
	 */
	public Boolean emailExist(String email) {
		try {
			ResultSet rs = super.query("select * from t_users where email=?",
					email);
			if (rs.next()) {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

	public Boolean nameExist(String name) {
		try {
			ResultSet rs = super.query(
					"select * from t_users where username=?", name);
			if (rs.next()) {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

	public Users findOne(String email) {
		return (Users) super.findOne("select * from t_users where username=?", email);
	}

}
