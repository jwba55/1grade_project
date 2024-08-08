package com.mmt.MyMusicTrade.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Detail;
import com.mmt.MyMusicTrade.model.Trade;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class TradeDaoImpl implements TradeDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Trade> list(Pager pager) {

		return sql.selectList("trade.list", pager);
	}

	@Override
	public int total(Pager pager) {

		return sql.selectOne("trade.total", pager);
	}

	@Override
	public Trade item(Long ordersid) {

		return sql.selectOne("trade.item", ordersid);
	}

	@Override
	public void add(Trade item) {
		sql.insert("trade.add", item);
		
	}

	@Override
	public void addDetail(Detail detail) {
		sql.insert("trade.add_detail", detail);
	}

}
