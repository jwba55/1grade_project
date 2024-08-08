package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mmt.MyMusicTrade.dao.PlaylistDao;
import com.mmt.MyMusicTrade.model.Playlist;
import com.mmt.MyMusicTrade.model.Pldetail;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class PlaylistServiceImpl implements PlaylistService {
	
	@Autowired
	PlaylistDao dao;

	@Override
	public List<Playlist> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		System.out.println(dao.list(pager));

		return dao.list(pager);
	}

	@Override
	public Playlist item(Long pllistnum) {

		return dao.item(pllistnum);
	}
	
	@Transactional
	@Override
	public void playlist(String userID, HashMap<Long, Integer> plcart) {
		Playlist item = new Playlist();
		
		item.setUserID(userID);
		
		dao.add(item);
		
		for(Long plnum : plcart.keySet()) {
			Pldetail pldetail = new Pldetail();
			pldetail.setPllistnum(item.getPllistnum());
			pldetail.setPlnum(plnum);
			pldetail.setAmount((long) plcart.get(plnum));
			
			dao.addPldetail(pldetail);
		}

	}

}
