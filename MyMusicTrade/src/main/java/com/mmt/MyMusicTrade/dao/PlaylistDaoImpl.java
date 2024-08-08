package com.mmt.MyMusicTrade.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Playlist;
import com.mmt.MyMusicTrade.model.Pldetail;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class PlaylistDaoImpl implements PlaylistDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {

		return sql.selectOne("playlist.total", pager);
	}

	@Override
	public List<Playlist> list(Pager pager) {
		
		return sql.selectList("playlist.list", pager);
	}

	@Override
	public Playlist item(Long pllistnum) {
		
		return sql.selectOne("playlist.item", pllistnum);
	}

	@Override
	public void add(Playlist item) {

		sql.insert("playlist.add", item);
	}

	@Override
	public void addPldetail(Pldetail pldetail) {
		
		sql.insert("playlist.add_pldetail", pldetail);
	}

}
