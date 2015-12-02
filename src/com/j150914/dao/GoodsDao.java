package com.j150914.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.j150914.pojo.Goods;

//bid,bname,bookpric,bimgs,bconut,btype,
public class GoodsDao extends BaseDao {

	public List<Goods> findByPage(int page, int pageSize) {
		String sql = getSelectAll() + "  limit ?,? ";
		return findSome(sql, page * pageSize, pageSize);

	}

	public List<Goods> findByTypePage(int typeid, int page, int pageSize) {
		String sql = "select * from t_goods where type = ? limit ?,? ";
		return findSome(sql, typeid, page * pageSize, pageSize);
	}

	public int countAll() {

		try {
			ResultSet rs = super.query("select count(*) from t_goods");
			if (rs.next()) {
				return rs.getInt(1);
			}
			super.closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
