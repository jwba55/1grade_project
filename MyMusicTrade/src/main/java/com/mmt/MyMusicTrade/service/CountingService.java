package com.mmt.MyMusicTrade.service;

import com.mmt.MyMusicTrade.model.Counting;

public interface CountingService {

	void update(Counting item);

	Counting item(Long countcode);

	void resetDailyCount();

	void resetWeekCount();

	void resetMonthCount();

}
