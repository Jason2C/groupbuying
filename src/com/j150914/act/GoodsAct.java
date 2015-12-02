package com.j150914.act;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j150914.controller.IAction;
import com.j150914.dao.GoodsDao;
import com.j150914.dao.GoodsTypeDao;
import com.j150914.pojo.Goods;
import com.j150914.pojo.GoodsType;

public class GoodsAct implements IAction {
	private int currpage = 0;
	private int pageSize = 15;
	private int gid;
	private GoodsDao goodsDao = new GoodsDao();
	private Goods goods = new Goods();
	private GoodsTypeDao typeDao = new GoodsTypeDao();
	private int typeid;

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) {
		List<GoodsType> gtList = typeDao.findAll();
		request.setAttribute("gtList", gtList);
		List<Goods> goodList;
		int last = 0;
		request.setAttribute("typeid", typeid);
		if (typeid == 0 || "".equals(typeid) || "undefined".equals(typeid)) {
			goodList = goodsDao.findByPage(currpage, pageSize);
			last = goodsDao.countAll();
		} else {
			goodList = goodsDao.findByTypePage(typeid, currpage, pageSize);
			last = goodsDao.countType(typeid);
		}
		request.setAttribute("goodList", goodList);
		request.setAttribute("glSize", goodList.size());
		request.setAttribute("currpage", currpage);
		request.setAttribute("pageSize", pageSize);
		 
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
		request.setAttribute("goods", goods);
		return "showOne.jsp";
	}
	public String addGWC(HttpServletRequest request,
			HttpServletResponse response) {
		Map<Integer, Integer> gwc=new HashMap<>();
		gwc.put(gid, 1);

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

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public int getTypeid() {
		return typeid;
	}

	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
}
