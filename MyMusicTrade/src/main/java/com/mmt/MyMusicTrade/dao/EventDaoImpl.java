package com.mmt.MyMusicTrade.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Event;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class EventDaoImpl implements EventDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {

		return sql.selectOne("event.total", pager);
	}

	@Override
	public void add(Event item) {
		sql.insert("event.add", item);

	}

	@Override
	public List<Event> list(Pager pager) {

		return sql.selectList("event.list", pager);
	}

}
