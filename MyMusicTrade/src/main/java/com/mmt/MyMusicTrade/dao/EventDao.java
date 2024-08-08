package com.mmt.MyMusicTrade.dao;

import java.util.List;

import com.mmt.MyMusicTrade.model.Event;
import com.mmt.MyMusicTrade.pager.Pager;

public interface EventDao {

	int total(Pager pager);

	void add(Event item);

	List<Event> list(Pager pager);

}
