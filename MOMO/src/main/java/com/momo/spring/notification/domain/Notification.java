package com.momo.spring.notification.domain;

import java.sql.Date;

public class Notification {

	private int notId;
	private String userId;
	private String notContent;
	private Date notCreateDate;
	private int qnaId;
	
	
	public Notification () {}


	public int getNotId() {
		return notId;
	}


	public void setNotId(int notId) {
		this.notId = notId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getNotContent() {
		return notContent;
	}


	public void setNotContent(String notContent) {
		this.notContent = notContent;
	}


	public Date getNotCreateDate() {
		return notCreateDate;
	}


	public void setNotCreateDate(Date notCreateDate) {
		this.notCreateDate = notCreateDate;
	}


	public int getQnaId() {
		return qnaId;
	}


	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}


	public Notification(int notId, String userId, String notContent, Date notCreateDate, int qnaId) {
		super();
		this.notId = notId;
		this.userId = userId;
		this.notContent = notContent;
		this.notCreateDate = notCreateDate;
		this.qnaId = qnaId;
	}
	@Override
	public String toString() {
		return "Notification [notId=" + notId + ", userId=" + userId + ", notContent=" + notContent + ", notCreateDate="
				+ notCreateDate + ", qnaId=" + qnaId + "]";
	}
}