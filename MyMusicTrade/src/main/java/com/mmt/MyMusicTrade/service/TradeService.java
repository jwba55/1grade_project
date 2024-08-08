package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import com.mmt.MyMusicTrade.model.Trade;
import com.mmt.MyMusicTrade.pager.Pager;


public interface TradeService {

	List<Trade> list(Pager pager);
	
	Trade item(Long ordersid);

	void trade(String userID, HashMap<Long, Integer> cart);

}
