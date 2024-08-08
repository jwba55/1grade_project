package com.mmt.MyMusicTrade.model;

public class Ranking {
	private Long rankid;
	private Long dailyrank;
	private Long weekrank;
	private Long monthrank;
	private Long totalrank;
	private Long countcode;
	private Counting counting;
	private Music_info music_info;
	
	public Long getRankid() {
		return rankid;
	}
	public void setRankid(Long rankid) {
		this.rankid = rankid;
	}
	public Long getDailyrank() {
		return dailyrank;
	}
	public void setDailyrank(Long dailyrank) {
		this.dailyrank = dailyrank;
	}
	public Long getWeekrank() {
		return weekrank;
	}
	public void setWeekrank(Long weekrank) {
		this.weekrank = weekrank;
	}
	public Long getMonthrank() {
		return monthrank;
	}
	public void setMonthrank(Long monthrank) {
		this.monthrank = monthrank;
	}
	public Long getTotalrank() {
		return totalrank;
	}
	public void setTotalrank(Long totalrank) {
		this.totalrank = totalrank;
	}
	public Long getCountcode() {
		return countcode;
	}
	public void setCountcode(Long countcode) {
		this.countcode = countcode;
	}
	public Counting getCounting() {
		return counting;
	}
	public void setCounting(Counting counting) {
		this.counting = counting;
	}
	public Music_info getMusic_info() {
		return music_info;
	}
	public void setMusic_info(Music_info music_info) {
		this.music_info = music_info;
	}
	

}
