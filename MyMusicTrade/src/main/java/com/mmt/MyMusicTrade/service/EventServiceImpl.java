package com.mmt.MyMusicTrade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mmt.MyMusicTrade.dao.EventDao;
import com.mmt.MyMusicTrade.model.Event;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	EventDao dao;

	@Override
	public List<Event> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);

		return dao.list(pager);
	}

	@Override
	public void add(Event item) {
		dao.add(item);
	}

}
