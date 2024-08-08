package com.mmt.MyMusicTrade.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mmt.MyMusicTrade.dao.CountingDao;
import com.mmt.MyMusicTrade.model.Counting;

@Service
public class CountingServiceImpl implements CountingService {

	@Autowired
	CountingDao dao;
	
	@Override
	public void update(Counting item) {
		dao.update(item);
	}

	@Override
	public Counting item(Long countcode) {

		return dao.item(countcode);
	}

	@Override
	public void resetDailyCount() {
		
		dao.resetDailyCount();
	}

	@Override
	public void resetWeekCount() {
		// TODO Auto-generated method stub
		dao.resetWeekCount();
	}

	@Override
	public void resetMonthCount() {
		// TODO Auto-generated method stub
		dao.resetMonthCount();
	}

}
