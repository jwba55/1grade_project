package com.mmt.MyMusicTrade.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mmt.MyMusicTrade.dao.Music_infoDao;
import com.mmt.MyMusicTrade.model.Fileupload;
import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class Music_infoServiceImpl implements Music_infoService {
	
	@Autowired
	Music_infoDao dao;

	@Override
	public List<Music_info> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}
	
	@Transactional
	@Override
	public void add(Music_info item) {
		dao.add(item);
		
            for (Fileupload fileupload : item.getFileupload()) {
                fileupload.setPlnum(item.getPlnum());
                dao.addFileupload(fileupload);
                
                System.out.println(fileupload);
                
                System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            }
	}

	@Override
	public Music_info item(Long plnum) {

		return dao.item(plnum);
	}

	@Override
	public void update(Music_info item) {
		dao.update(item);

	}

	@Override
	public void delete(Long plnum) {
		dao.delete(plnum);

	}

	@Override
	public List<Music_info> list(HashMap<Long, Integer> plcart) {
		return dao.list(plcart);
	}

}
