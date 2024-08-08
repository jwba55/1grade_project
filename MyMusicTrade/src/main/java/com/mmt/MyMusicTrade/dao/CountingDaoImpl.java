package com.mmt.MyMusicTrade.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Counting;

@Repository
public class CountingDaoImpl implements CountingDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void update(Counting item) {
		sql.update("counting.update", item);

	}

	@Override
	public Counting item(Long countcode) {

		return sql.selectOne("countcode.item", countcode);
	}

	@Override
	public void resetDailyCount() {
		sql.update("counting.resetDailyCount");

	}

	@Override
	public void resetWeekCount() {
		sql.update("counting.resetWeekCount");
	}

	@Override
	public void resetMonthCount() {
		sql.update("counting.resetMonthCount");
		
	}

}
