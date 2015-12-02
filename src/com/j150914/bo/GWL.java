package com.j150914.bo;

import java.io.Serializable;

//Âß¼­¶ÔÏó
public class GWL implements Serializable {
	
	private int count;
	
	//add
	public void add(){
		count++;
	}
	
	public void sub(){
		count--;
	}
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	

}
