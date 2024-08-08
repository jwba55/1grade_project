package com.mmt.MyMusicTrade.model;

import java.util.List;

public class Music_info {
	private Long plnum;
	private String plname;
	private String genre;
	private String artist;
	private String userID;
	private Long price;
	private Counting counting;
	private Ranking ranking;
	private List<Fileupload> fileupload;
	
	public Long getPlnum() {
		return plnum;
	}
	public void setPlnum(Long plnum) {
		this.plnum = plnum;
	}
	public String getPlname() {
		return plname;
	}
	public void setPlname(String plname) {
		this.plname = plname;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public List<Fileupload> getFileupload() {
		return fileupload;
	}
	public void setFileupload(List<Fileupload> fileupload) {
		this.fileupload = fileupload;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public Counting getCounting() {
		return counting;
	}
	public void setCounting(Counting counting) {
		this.counting = counting;
	}
	public Ranking getRanking() {
		return ranking;
	}
	public void setRanking(Ranking ranking) {
		this.ranking = ranking;
	}
}