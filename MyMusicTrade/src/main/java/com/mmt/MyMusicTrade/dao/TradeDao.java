package com.mmt.MyMusicTrade.dao;

import java.util.List;

import com.mmt.MyMusicTrade.model.Detail;
import com.mmt.MyMusicTrade.model.Trade;
import com.mmt.MyMusicTrade.pager.Pager;

public interface TradeDao {

	List<Trade> list(Pager pager);

	int total(Pager pager);

	Trade item(Long ordersid);

	void add(Trade item);

	void addDetail(Detail detail);

}
