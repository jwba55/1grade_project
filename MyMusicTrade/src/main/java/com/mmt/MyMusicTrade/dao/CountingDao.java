package com.mmt.MyMusicTrade.dao;

import com.mmt.MyMusicTrade.model.Counting;

public interface CountingDao {

	void update(Counting item);

	Counting item(Long countcode);

	void resetDailyCount();

	void resetWeekCount();

	void resetMonthCount();

}
