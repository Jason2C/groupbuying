package com.j150914.act;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j150914.controller.IAction;
import com.j150914.dao.GoodsDao;
import com.j150914.pojo.Goods;

public class GoodsAct implements IAction {
	private int currpage = 0;
	private int pageSize = 15;
	private int gid;
	private GoodsDao goodsDao = new GoodsDao();
	private Goods goods;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		List<Goods> goodList = goodsDao.findByPage(currpage, pageSize);
		// List<Bookinfo> bookList = bookinfoDao.findAll();
		request.setAttribute("goodList", goodList);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pageSize", pageSize);
		int last = goodsDao.countAll();
		if (last % pageSize == 0) {
			last = last / pageSize;
		} else {
			last = (last / pageSize) + 1;
		}
		request.setAttribute("last", last);
		return "index.jsp";
	}

	public String showOne(HttpServletRequest request,
			HttpServletResponse response) {
		goods = (Goods) goodsDao.findById(gid);
		return "showOne.jsp";
	}

	public int getCurrpage() {
		return currpage;
	}

	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

}
