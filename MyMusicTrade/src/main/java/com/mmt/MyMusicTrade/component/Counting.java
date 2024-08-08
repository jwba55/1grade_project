package com.mmt.MyMusicTrade.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import com.mmt.MyMusicTrade.service.CountingService;
import com.mmt.MyMusicTrade.service.RanksService;

@Component
public class Counting {
	
    @Autowired
    CountingService service;
    
    @Autowired
    RanksService Service;

    @Scheduled(cron = "0 0 0 * * ?")
    public void resetDailyCount() {
    	service.resetDailyCount();
    	
    	Service.resetDailyrank();
    }

	// 주간 조회수 초기화 (매주 월요일 자정에 실행)
    @Scheduled(cron = "0 0 0 * * MON")
    public void resetWeekCount() {
    	service.resetWeekCount();
    	
    	Service.resetWeekrank();
    }
    
    // 월간 조회수 초기화 (매월 1일 자정에 실행)
    @Scheduled(cron = "0 0 0 1 * *")
    public void resetMonthCount() {
    	service.resetMonthCount();
    	
    	Service.resetMonthrank();
    }
    
    

}
