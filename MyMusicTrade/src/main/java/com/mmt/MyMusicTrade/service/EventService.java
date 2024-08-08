package com.mmt.MyMusicTrade.service;

import java.util.List;

import com.mmt.MyMusicTrade.model.Event;
import com.mmt.MyMusicTrade.pager.Pager;

public interface EventService {

	List<Event> list(Pager pager);

	void add(Event item);

}
