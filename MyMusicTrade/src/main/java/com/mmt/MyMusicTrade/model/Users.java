package com.mmt.MyMusicTrade.model;

public class Users {
	public static final int ADMIN = 99;
	public static final int PARTNER = 5;
	public static final int NORMAL = 1;
	public String roleString;
	
	private String userID;
	private String userPwd;
	private String userName;
	private String userNoBir;
	private String userNoSec;
	private String userEmail;
	private String emailaddr;
	private String userHomeNo;
	private String userAddr1;
	private String userAddr2;
	private String userHP;
	private String job;
	private String chkMailSMS;
	private String pl;
	private Long rankid;
	private int role;
	private Music_info music_info;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNoBir() {
		return userNoBir;
	}
	public void setUserNoBir(String userNoBir) {
		this.userNoBir = userNoBir;
	}
	public String getUserNoSec() {
		return userNoSec;
	}
	public void setUserNoSec(String userNoSec) {
		this.userNoSec = userNoSec;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserHomeNo() {
		return userHomeNo;
	}
	public void setUserHomeNo(String userHomeNo) {
		this.userHomeNo = userHomeNo;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getUserHP() {
		return userHP;
	}
	public void setUserHP(String userHP) {
		this.userHP = userHP;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getChkMailSMS() {
		return chkMailSMS;
	}
	public void setChkMailSMS(String chkMailSMS) {
		this.chkMailSMS = chkMailSMS;
	}
	public String getPl() {
		return pl;
	}
	public void setPl(String pl) {
		this.pl = pl;
	}
	public String getEmailaddr() {
		return emailaddr;
	}
	public void setEmailaddr(String emailaddr) {
		this.emailaddr = emailaddr;
	}
	public Long getRankid() {
		return rankid;
	}
	public void setRankid(Long rankid) {
		this.rankid = rankid;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	public String getRoleString() {
		return getRoleString(role);
	}
	
	public static String getRoleString(int role) {
		if(role == Users.ADMIN) return "admin";
		else if(role == Users.PARTNER) return "partner";
		else if(role == Users.NORMAL) return "normal";
		else
			return String.valueOf(role);
	}
	public Music_info getMusic_info() {
		return music_info;
	}
	public void setMusic_info(Music_info music_info) {
		this.music_info = music_info;
	}
}
