package com.mmt.MyMusicTrade.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Ranking;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class RanksDaoImpl implements RanksDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Ranking> list(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("ranking.list");
	}

	@Override
	public void resetDailyrank() {
		
		sql.update("ranking.dailyrank");
	}

	@Override
	public void resetWeekrank() {
		// TODO Auto-generated method stub
		sql.update("ranking.weekrank");
	}

	@Override
	public void resetMonthrank() {
		// TODO Auto-generated method stub
		sql.update("ranking.monthrank");
	}

	@Override
	public List<Ranking> monthlist(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("ranking.monthlist", pager);
	}

	@Override
	public List<Ranking> weeklist(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("ranking.weeklist", pager);
	}

	@Override
	public List<Ranking> dailylist(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("ranking.dailylist", pager);
	}

	@Override
	public List<Ranking> totallist(Pager pager) {

		return sql.selectList("ranking.totallist", pager);
	}

	@Override
	public void totalrank(Ranking item) {
		// TODO Auto-generated method stub
		sql.update("ranking.totalrank", item);
	}}
