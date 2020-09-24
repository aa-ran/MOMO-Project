package com.momo.spring.common;

import java.sql.Date;

public class PlaceSearch {
	private String pTime;
	private int pAcceptNum;
	private int pPrice;
	private Date pRegDate;

	public PlaceSearch() {
	}

	public PlaceSearch(String pTime, int pAcceptNum, int pPrice, Date pRegDate) {
		super();
		this.pTime = pTime;
		this.pAcceptNum = pAcceptNum;
		this.pPrice = pPrice;
		this.pRegDate = pRegDate;
	}

	public String getpTime() {
		return pTime;
	}

	public void setpTime(String pTime) {
		this.pTime = pTime;
	}

	public int getpAcceptNum() {
		return pAcceptNum;
	}

	public void setpAcceptNum(int pAcceptNum) {
		this.pAcceptNum = pAcceptNum;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public Date getpRegDate() {
		return pRegDate;
	}

	public void setpRegDate(Date pRegDate) {
		this.pRegDate = pRegDate;
	}

	@Override
	public String toString() {
		return "PlaceSearch [pTime=" + pTime + ", pAcceptNum=" + pAcceptNum + ", pPrice=" + pPrice + ", pRegDate="
				+ pRegDate + "]";
	}

}

