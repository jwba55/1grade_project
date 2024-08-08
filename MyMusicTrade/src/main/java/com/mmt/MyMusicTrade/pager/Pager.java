package com.mmt.MyMusicTrade.pager;

import java.util.ArrayList;
import java.util.List;

public class Pager {
	private int page = 1;
	private int perPage = 10;
	private float total;
	private int perGroup = 3;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public int getPerGroup() {
		return perGroup;
	}

	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}
	
	public int getLast() {
		return (int) Math.ceil(total / perPage);
	}
	
	public List<Integer> getList() {
		List<Integer> list = new ArrayList<>();
		
		int startPage = (((page - 1) / perGroup) + 0) * perGroup + 1;
		
		for(int i=startPage; i < (startPage + perGroup) && i <= getLast(); i++)
			list.add(i);
		
		if(list.isEmpty())
			list.add(1);
		
		return list;
	}
	
	public int getPrev() {
		return page <= perGroup ? 1 : (((page - 1) / perGroup) - 1) * perGroup + 1;
	}
	
	public int getNext() {
		int next = (((page - 1) / perGroup) + 1) * perGroup + 1;
		int last = getLast();
		
		return next < last ? next : last;
	}

}
