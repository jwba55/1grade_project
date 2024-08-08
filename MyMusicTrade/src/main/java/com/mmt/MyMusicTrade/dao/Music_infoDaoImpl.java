package com.mmt.MyMusicTrade.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Fileupload;
import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class Music_infoDaoImpl implements Music_infoDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		return sql.selectOne("music_info.total", pager);
	}

	@Override
	public List<Music_info> list(Pager pager) {
		
		return sql.selectList("music_info.list", pager);
	}

	@Override
	public void add(Music_info item) {
		sql.insert("music_info.add", item);
	}

	@Override
	public Music_info item(Long plnum) {
	
		return sql.selectOne("music_info.item", plnum);
	}

	@Override
	public void update(Music_info item) {
		sql.update("music_info.update", item);
	}

	@Override
	public void delete(Long plnum) {
		sql.delete("music_info.delete", plnum);
	}

	@Override
	public void addFileupload(Fileupload fileupload) {
		sql.insert("music_info.add_fileupload", fileupload);
	}

	@Override
	public List<Music_info> list(HashMap<Long, Integer> plcart) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("plcart", plcart);
		
		return sql.selectList("music_info.list_plcart", map);
	}
}
