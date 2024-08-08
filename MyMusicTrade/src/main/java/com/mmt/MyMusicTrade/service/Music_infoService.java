package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.pager.Pager;

public interface Music_infoService {

	List<Music_info> list(HashMap<Long, Integer> plcart);

	void add(Music_info item);

	Music_info item(Long plnum);

	void update(Music_info item);

	void delete(Long plnum);
	
	List<Music_info> list(Pager pager);

}
