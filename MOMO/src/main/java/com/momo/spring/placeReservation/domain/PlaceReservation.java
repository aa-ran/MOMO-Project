package com.momo.spring.placeReservation.domain;

import java.sql.Date;

public class PlaceReservation {

	private int prId;
	private String userId;
	private int pNo;
	private Date prDate;
	private String pName;
	private String pOption;
	private String pTime;
	
	public PlaceReservation() {}

	public PlaceReservation(int prId, String userId, int pNo, Date prDate, String pName, String pOption, String pTime) {
		super();
		this.prId = prId;
		this.userId = userId;
		this.pNo = pNo;
		this.prDate = prDate;
		this.pName = pName;
		this.pOption = pOption;
		this.pTime = pTime;
	}

	public int getPrId() {
		return prId;
	}

	public void setPrId(int prId) {
		this.prId = prId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public Date getPrDate() {
		return prDate;
	}

	public void setPrDate(Date prDate) {
		this.prDate = prDate;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpOption() {
		return pOption;
	}

	public void setpOption(String pOption) {
		this.pOption = pOption;
	}

	public String getpTime() {
		return pTime;
	}

	public void setpTime(String pTime) {
		this.pTime = pTime;
	}

	@Override
	public String toString() {
		return "PlaceReservation [prId=" + prId + ", userId=" + userId + ", pNo=" + pNo + ", prDate=" + prDate
				+ ", pName=" + pName + ", pOption=" + pOption + ", pTime=" + pTime + "]";
	}

}
