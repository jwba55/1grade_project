package com.mmt.MyMusicTrade.model;

import java.util.List;

public class Playlist {
	private String userID;
	private Long pllistnum;
	private String pllistname;
	private List<Pldetail> pldetail;
	private Music_info music_info;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public Long getPllistnum() {
		return pllistnum;
	}
	public void setPllistnum(Long pllistnum) {
		this.pllistnum = pllistnum;
	}
	public String getPllistname() {
		return pllistname;
	}
	public void setPllistname(String pllistname) {
		this.pllistname = pllistname;
	}
	public List<Pldetail> getPldetail() {
		return pldetail;
	}
	public void setPldetail(List<Pldetail> pldetail) {
		this.pldetail = pldetail;
	}
	public Music_info getMusic_info() {
		return music_info;
	}
	public void setMusic_info(Music_info music_info) {
		this.music_info = music_info;
	}
	
	
	

}
