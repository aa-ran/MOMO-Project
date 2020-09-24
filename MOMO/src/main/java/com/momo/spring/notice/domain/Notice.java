package com.momo.spring.notice.domain;

import java.sql.Date;

public class Notice {

	private int nId;
	private String nWriter;
	private String nTitle;
	private String nContent;
	private Date nCreateDate;
	private int nCount;
	
	public Notice() {}

	public Notice(int nId, String nWriter, String nTitle, String nContent, Date nCreateDate, int nCount) {
		super();
		this.nId = nId;
		this.nWriter = nWriter;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nCreateDate = nCreateDate;
		this.nCount = nCount;
	}

	public int getnId() {
		return nId;
	}

	public void setnId(int nId) {
		this.nId = nId;
	}

	public String getnWriter() {
		return nWriter;
	}

	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnCreateDate() {
		return nCreateDate;
	}

	public void setnCreateDate(Date nCreateDate) {
		this.nCreateDate = nCreateDate;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", nWriter=" + nWriter + ", nTitle=" + nTitle + ", nContent=" + nContent
				+ ", nCreateDate=" + nCreateDate + ", nCount=" + nCount + "]";
	}
	
}
