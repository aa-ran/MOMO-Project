package com.momo.spring.wecomment.domain;

import java.sql.Date;

public class WeComment {
	
	private int wcId;
	private String wcWriter;
	private int wId;
	private String wcContent;
	private Date wcCreateDate;
	
	public WeComment () {}

	public WeComment(int wcId, String wcWriter, int wId, String wcContent, Date wcCreateDate) {
		super();
		this.wcId = wcId;
		this.wcWriter = wcWriter;
		this.wId = wId;
		this.wcContent = wcContent;
		this.wcCreateDate = wcCreateDate;
	}

	public int getWcId() {
		return wcId;
	}

	public void setWcId(int wcId) {
		this.wcId = wcId;
	}

	public String getWcWriter() {
		return wcWriter;
	}

	public void setWcWriter(String wcWriter) {
		this.wcWriter = wcWriter;
	}

	public int getwId() {
		return wId;
	}

	public void setwId(int wId) {
		this.wId = wId;
	}

	public String getWcContent() {
		return wcContent;
	}

	public void setWcContent(String wcContent) {
		this.wcContent = wcContent;
	}

	public Date getWcCreateDate() {
		return wcCreateDate;
	}

	public void setWcCreateDate(Date wcCreateDate) {
		this.wcCreateDate = wcCreateDate;
	}

	@Override
	public String toString() {
		return "WeComment [wcId=" + wcId + ", wcWriter=" + wcWriter + ", wId=" + wId + ", wcContent=" + wcContent
				+ ", wcCreateDate=" + wcCreateDate + "]";
	}
	
	

}
