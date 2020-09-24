package com.momo.spring.meComment.domain;

import java.sql.Date;

public class MeComment {

	private int mecId;
	private String mecWriter;
	private int mId;
	private String mecContent;
	private Date mecCreateDate;
	
	public MeComment() {}

	public MeComment(int mecId, String mecWriter, int mId, String mecContent, Date mecCreateDate) {
		super();
		this.mecId = mecId;
		this.mecWriter = mecWriter;
		this.mId = mId;
		this.mecContent = mecContent;
		this.mecCreateDate = mecCreateDate;
	}

	public int getMecId() {
		return mecId;
	}

	public void setMecId(int mecId) {
		this.mecId = mecId;
	}

	public String getMecWriter() {
		return mecWriter;
	}

	public void setMecWriter(String mecWriter) {
		this.mecWriter = mecWriter;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getMecContent() {
		return mecContent;
	}

	public void setMecContent(String mecContent) {
		this.mecContent = mecContent;
	}

	public Date getMecCreateDate() {
		return mecCreateDate;
	}

	public void setMecCreateDate(Date mecCreateDate) {
		this.mecCreateDate = mecCreateDate;
	}

	@Override
	public String toString() {
		return "MeComment [mecId=" + mecId + ", mecWriter=" + mecWriter + ", mId=" + mId + ", mecContent=" + mecContent
				+ ", mecCreateDate=" + mecCreateDate + "]";
	}
	
	
}
