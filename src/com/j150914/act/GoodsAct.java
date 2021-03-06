package com.j150914.act;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j150914.controller.IAction;
import com.j150914.dao.GoodsDao;
import com.j150914.dao.GoodsTypeDao;
import com.j150914.dao.OrdersDao;
import com.j150914.dao.UsersDao;
import com.j150914.pojo.Goods;
import com.j150914.pojo.GoodsType;
import com.j150914.pojo.Orders;
import com.j150914.pojo.Users;

@SuppressWarnings("all")
public class GoodsAct implements IAction {
	private int currpage = 0;
	private int pageSize = 15;
	private int gid;
	private GoodsDao goodsDao = new GoodsDao();
	private Goods goods = new Goods();
	private GoodsTypeDao typeDao = new GoodsTypeDao();
	private int typeid;

	// 订单
	private OrdersDao orderDao = new OrdersDao();
	private Orders order = new Orders();
	private double allCount;
	private UsersDao usersDao = new UsersDao();

	/**
	 * 物品显示
	 */
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

	/**
	 * 显示一件物品
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	public String showOne(HttpServletRequest request,
			HttpServletResponse response) {
		goods = (Goods) goodsDao.findById(gid);
		request.setAttribute("goods", goods);
		return "showOne.jsp";
	}

	/**
	 * 添加购物车
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String addGWC(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Map<Integer, Integer> gwc;
			gwc = (Map<Integer, Integer>) request.getSession().getAttribute(
					"gwc");
			if (gwc == null) {
				gwc = new HashMap<>();
			}
			Iterator<Integer> keys = gwc.keySet().iterator();
			if (keys.hasNext()) {
				while (keys.hasNext()) {
					Integer integer = (Integer) keys.next();
					if (gid == integer) {
						Integer integer2 = gwc.get(integer) + 1;
						gwc.put(gid, integer2);
						request.getSession().setAttribute("gwc", gwc);
						return "@json_true";
					}
				}
			}
			gwc.put(gid, 1);
			request.getSession().setAttribute("gwc", gwc);
			return "@json_true";
		} catch (Exception e) {
			// TODO: handle exception
			return "@json_fales";
		}
	}

	/**
	 * 去购物车
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings({ "unchecked" })
	public String goGWC(HttpServletRequest request, HttpServletResponse response) {
		if (request.getSession().getAttribute("gwc") != null) {
			Map<Integer, Integer> gwc = (Map<Integer, Integer>) request
					.getSession().getAttribute("gwc");
			int keygwc[] = new int[gwc.size()];
			int valuegwc[] = new int[gwc.size()];
			if (gwc != null) {
				Iterator<Integer> keys = gwc.keySet().iterator();
				for (int i = 0; i < gwc.size(); i++) {
					Integer key = (Integer) keys.next();
					Integer value = gwc.get(key);
					keygwc[i] = key;
					valuegwc[i] = value;
				}
				List<Goods> beanGWC = new ArrayList<>();
				List<Goods> list = goodsDao.findGoodIdIsIn(keygwc);
				for (int i = 0; i < gwc.size(); i++) {
					for (int j = 0; j < list.size(); j++) {
						if (list.get(j).getId() == keygwc[i]) {
							list.get(j).setTuangoucount(valuegwc[i]);
							beanGWC.add(list.get(j));
						}
					}
				}
				request.getSession().setAttribute("showGwc", beanGWC);
			}
		}

		return "showGwc.jsp";
	}

	/**
	 * 下订单
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	public String addOrder(HttpServletRequest request,
			HttpServletResponse response) {
		// 设置订单时间
		order.setTime(new Date());
		// 取得购物车
		List<Goods> gwcList = (List<Goods>) request.getSession().getAttribute(
				"showGwc");
		Users user = (Users) request.getSession().getAttribute("user");
		// 设置物品已售件数
		for (Goods goods : gwcList) {
			int gwcc = goods.getTuangoucount();
			int gsold = goods.getSold();
			goods.setSold(gsold + gwcc);
			goodsDao.Update(goods);
		}
		// 更新用户余额
		double acount = user.getAcount() - allCount;
		user.setAcount(acount);
		usersDao.Update(user);

		// 添加一条历史订单
		order.setOrderid(new Date().getTime() + "");
		order.setUserid(user.getId());
		order.setTotal(allCount);
		order.setStatus(1);
		orderDao.Insert(order);
		// 5 清空购物车的信息
		request.getSession().removeAttribute("showGwc");
		request.getSession().removeAttribute("gwc");
		// 订单的默认状态为未派送， 操作成功后提示“交易成功！”，并转发回首页。
		return "@red_index.jsp";
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

	public double getAllCount() {
		return allCount;
	}

	public void setAllCount(double allCount) {
		this.allCount = allCount;
	}

}
