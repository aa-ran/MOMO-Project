package com.momo.spring.message.domain;

import java.sql.Date;

public class Message {

	private int msId;
	private String fromId;
	private String toId;
	private String msContent;
	private Date msCreateDate;
	private int rowNum;
	
	public Message () {}

	public Message(int msId, String fromId, String toId, String msContent, Date msCreateDate,int rowNum) {
		super();
		this.msId = msId;
		this.fromId = fromId;
		this.toId = toId;
		this.msContent = msContent;
		this.msCreateDate = msCreateDate;
		this.rowNum = rowNum;
	}

	public int getMsId() {
		return msId;
	}

	public void setMsId(int msId) {
		this.msId = msId;
	}

	public String getFromId() {
		return fromId;
	}

	public void setFromId(String fromId) {
		this.fromId = fromId;
	}

	public String getToId() {
		return toId;
	}

	public void setToId(String toId) {
		this.toId = toId;
	}

	public String getMsContent() {
		return msContent;
	}

	public void setMsContent(String msContent) {
		this.msContent = msContent;
	}

	public Date getMsCreateDate() {
		return msCreateDate;
	}

	public void setMsCreateDate(Date msCreateDate) {
		this.msCreateDate = msCreateDate;
	}
	
	
	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	@Override
	public String toString() {
		return "Message [msId=" + msId + ", fromId=" + fromId + ", toId=" + toId + ", msContent=" + msContent
				+ ", msCreateDate=" + msCreateDate + ", rowNum=" + rowNum + "]";
	}


	
}
