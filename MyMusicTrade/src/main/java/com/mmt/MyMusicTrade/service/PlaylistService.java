package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import com.mmt.MyMusicTrade.model.Playlist;
import com.mmt.MyMusicTrade.pager.Pager;

public interface PlaylistService {
	
	List<Playlist> list(Pager pager);

	Playlist item(Long pllistnum);

	void playlist(String userID, HashMap<Long, Integer> plcart);

}
