package com.j150914.pojo;

import java.util.Date;

public class Goods {

	private int id;
	private int traderid;
	private int type;
	private String name;
	private double price;
	private String details;
	private String goodspic;
	private int sold;
	private int istuangou;
	private double tuangouprice;
	private Date begintime;
	private Date endtime;
	private int tuangoucount;
	private int limitcount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTraderid() {
		return traderid;
	}

	public void setTraderid(int traderid) {
		this.traderid = traderid;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getGoodspic() {
		return goodspic;
	}

	public void setGoodspic(String goodspic) {
		this.goodspic = goodspic;
	}

	public int getSold() {
		return sold;
	}

	public void setSold(int sold) {
		this.sold = sold;
	}

	public int getIstuangou() {
		return istuangou;
	}

	public void setIstuangou(int istuangou) {
		this.istuangou = istuangou;
	}

	public double getTuangouprice() {
		return tuangouprice;
	}

	public void setTuangouprice(double tuangouprice) {
		this.tuangouprice = tuangouprice;
	}

	public Date getBegintime() {
		return begintime;
	}

	public void setBegintime(Date begintime) {
		this.begintime = begintime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getTuangoucount() {
		return tuangoucount;
	}

	public void setTuangoucount(int tuangoucount) {
		this.tuangoucount = tuangoucount;
	}

	public int getLimitcount() {
		return limitcount;
	}

	public void setLimitcount(int limitcount) {
		this.limitcount = limitcount;
	}

}
