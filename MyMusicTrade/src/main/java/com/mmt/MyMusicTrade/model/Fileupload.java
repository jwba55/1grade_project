package com.mmt.MyMusicTrade.model;

import org.springframework.web.multipart.MultipartFile;

public class Fileupload {
	private MultipartFile Fileupload;
	private String filename;
	private String uuid;
	private Long plnum;
	private Long filenum;
	private String fileExtension;
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public MultipartFile getFileupload() {
		return Fileupload;
	}
	public void setFileupload(MultipartFile Fileupload) {
		this.Fileupload = Fileupload;
	}
	public Long getFilenum() {
		return filenum;
	}
	public void setFilenum(Long filenum) {
		this.filenum = filenum;
	}
	public Long getPlnum() {
		return plnum;
	}
	public void setPlnum(Long plnum) {
		this.plnum = plnum;
	}
	public String getFileExtension() {
		return fileExtension;
	}
	public void setFileExtension(String fileExtension) {
		this.fileExtension = fileExtension;
	}
}
