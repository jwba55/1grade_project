package com.mmt.MyMusicTrade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mmt.MyMusicTrade.dao.RanksDao;
import com.mmt.MyMusicTrade.model.Ranking;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class RanksServiceImpl implements RanksService {
	
	@Autowired
	RanksDao dao;
	
	@Override
	public List<Ranking> list(Pager pager) {

		return dao.list(pager);
	}

	@Override
	public void resetDailyrank() {
		
		dao.resetDailyrank();
	}

	@Override
	public void resetWeekrank() {
		
		dao.resetWeekrank();
	}

	@Override
	public void resetMonthrank() {
		// TODO Auto-generated method stub
		dao.resetMonthrank();
	}

	@Override
	public List<Ranking> monthlist(Pager pager) {
		// TODO Auto-generated method stub
		return dao.monthlist(pager);
	}

	@Override
	public List<Ranking> weeklist(Pager pager) {
		// TODO Auto-generated method stub
		return dao.weeklist(pager);
	}

	@Override
	public List<Ranking> dailylist(Pager pager) {
		// TODO Auto-generated method stub
		return dao.dailylist(pager);
	}

	@Override
	public List<Ranking> totallist(Pager pager) {
		// TODO Auto-generated method stub
		return dao.totallist(pager);
	}

	@Override
	public void totalrank(Ranking item) {
		// TODO Auto-generated method stub
		dao.totalrank(item);
	}

}
