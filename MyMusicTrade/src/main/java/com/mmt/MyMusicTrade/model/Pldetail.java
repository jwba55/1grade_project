package com.mmt.MyMusicTrade.model;

public class Pldetail {
	private Long plcode;
	private Long pllistnum;
	private Long plnum;
	private Long amount;
	
	private Playlist playlist;

	public Long getPlcode() {
		return plcode;
	}

	public void setPlcode(Long plcode) {
		this.plcode = plcode;
	}

	public Long getPllistnum() {
		return pllistnum;
	}

	public void setPllistnum(Long pllistnum) {
		this.pllistnum = pllistnum;
	}

	public Long getPlnum() {
		return plnum;
	}

	public void setPlnum(Long plnum) {
		this.plnum = plnum;
	}

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}
	public Playlist getPlaylist() {
		return playlist;
	}

	public void setPlaylist(Playlist playlist) {
		this.playlist = playlist;
	}

}
