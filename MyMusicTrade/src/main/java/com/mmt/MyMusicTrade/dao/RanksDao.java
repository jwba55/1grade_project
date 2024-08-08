package com.mmt.MyMusicTrade.dao;

import java.util.List;

import com.mmt.MyMusicTrade.model.Ranking;
import com.mmt.MyMusicTrade.pager.Pager;

public interface RanksDao {

	List<Ranking> list(Pager pager);

	void resetDailyrank();

	void resetWeekrank();

	void resetMonthrank();

	List<Ranking> monthlist(Pager pager);

	List<Ranking> weeklist(Pager pager);

	List<Ranking> dailylist(Pager pager);

	List<Ranking> totallist(Pager pager);

	void totalrank(Ranking item);

}
