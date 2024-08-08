package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mmt.MyMusicTrade.dao.TradeDao;
import com.mmt.MyMusicTrade.model.Detail;
import com.mmt.MyMusicTrade.model.Trade;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class TradeServiceImpl implements TradeService {
	
	@Autowired
	TradeDao dao;

	@Override
	public List<Trade> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);

		return dao.list(pager);
	}

	@Override
	public Trade item(Long ordersid) {

		return dao.item(ordersid);
	}

	@Transactional
	@Override
	public void trade(String userID, HashMap<Long, Integer> cart) {
		Trade item = new Trade();
		item.setUserID(userID);
		
		dao.add(item);
		
		for(Long plnum : cart.keySet()) {
			Detail detail = new Detail();
			detail.setPlnum(plnum);
			detail.setOrdersid(item.getOrdersid());
			detail.setAmount((long) cart.get(plnum));
			
			dao.addDetail(detail);
		}
		
	}

}
