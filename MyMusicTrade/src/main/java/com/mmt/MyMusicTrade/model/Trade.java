package com.mmt.MyMusicTrade.model;

import java.util.Date;
import java.util.List;

public class Trade {
	private Long ordersid;
	private Date orderdate;
	private Long saleprice= 0L;
	private String userID;
	private List<Detail> details;
	
	public Long getOrdersid() {
		return ordersid;
	}
	public void setOrdersid(Long ordersid) {
		this.ordersid = ordersid;
	}
	
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public Long getSaleprice() {
		return saleprice;
	}
	public void setSaleprice(Long saleprice) {
		this.saleprice = saleprice;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public List<Detail> getDetails() {
		return details;
	}
	public void setDetails(List<Detail> details) {
		this.details = details;
	}

}
