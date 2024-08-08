package com.mmt.MyMusicTrade.dao;

import java.util.HashMap;
import java.util.List;

import com.mmt.MyMusicTrade.model.Fileupload;
import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.pager.Pager;

public interface Music_infoDao {

	int total(Pager pager);

	List<Music_info> list(Pager pager);

	void add(Music_info item);

	Music_info item(Long plnum);

	void update(Music_info item);

	void delete(Long plnum);

	void addFileupload(Fileupload fileupload);

	List<Music_info> list(HashMap<Long, Integer> plcart);

}
