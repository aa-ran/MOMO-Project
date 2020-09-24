package com.momo.spring.place.domain;

import java.sql.Date;

public class Place {

	private int pNo;
	private String pName;
	private String pTime;
	private String pOption;
	private int pPrice;
	private String pFileName;
	private String pFilePath;
	private int pAcceptNum;
	private String pAddress;
	private String pStatus;
	private Date pRegDate;
	
	public Place () {}

	public Place(int pNo, String pName, String pTime, String pOption, int pPrice, String pFileName, String pFilePath,
			int pAcceptNum, String pAddress, String pStatus, Date pRegDate) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pTime = pTime;
		this.pOption = pOption;
		this.pPrice = pPrice;
		this.pFileName = pFileName;
		this.pFilePath = pFilePath;
		this.pAcceptNum = pAcceptNum;
		this.pAddress = pAddress;
		this.pStatus = pStatus;
		this.pRegDate = pRegDate;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpTime() {
		return pTime;
	}

	public void setpTime(String pTime) {
		this.pTime = pTime;
	}

	public String getpOption() {
		return pOption;
	}

	public void setpOption(String pOption) {
		this.pOption = pOption;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public String getpFileName() {
		return pFileName;
	}

	public void setpFileName(String pFileName) {
		this.pFileName = pFileName;
	}

	public String getpFilePath() {
		return pFilePath;
	}

	public void setpFilePath(String pFilePath) {
		this.pFilePath = pFilePath;
	}

	public int getpAcceptNum() {
		return pAcceptNum;
	}

	public void setpAcceptNum(int pAcceptNum) {
		this.pAcceptNum = pAcceptNum;
	}

	public String getpAddress() {
		return pAddress;
	}

	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	public Date getpRegDate() {
		return pRegDate;
	}

	public void setpRegDate(Date pRegDate) {
		this.pRegDate = pRegDate;
	}

	@Override
	public String toString() {
		return "Place [pNo=" + pNo + ", pName=" + pName + ", pTime=" + pTime + ", pOption=" + pOption + ", pPrice="
				+ pPrice + ", pFileName=" + pFileName + ", pFilePath=" + pFilePath + ", pAcceptNum=" + pAcceptNum
				+ ", pAddress=" + pAddress + ", pStatus=" + pStatus + ", pRegDate=" + pRegDate + "]";
	}

}
