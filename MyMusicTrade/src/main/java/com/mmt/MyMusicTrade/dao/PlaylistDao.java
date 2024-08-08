package com.mmt.MyMusicTrade.dao;

import java.util.List;

import com.mmt.MyMusicTrade.model.Playlist;
import com.mmt.MyMusicTrade.model.Pldetail;
import com.mmt.MyMusicTrade.pager.Pager;

public interface PlaylistDao {

	int total(Pager pager);

	List<Playlist> list(Pager pager);

	Playlist item(Long pllistnum);

	void add(Playlist item);

	void addPldetail(Pldetail pldetail);

}
