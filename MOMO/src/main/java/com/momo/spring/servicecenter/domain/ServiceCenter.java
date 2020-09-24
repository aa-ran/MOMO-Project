package com.momo.spring.servicecenter.domain;

public class ServiceCenter {
	
	private int sId;
	private String userId;
	private String sTitle;
	private String sContent;
	
	
	public ServiceCenter () {}


	public ServiceCenter(int sId, String userId, String sTitle, String sContent) {
		super();
		this.sId = sId;
		this.userId = userId;
		this.sTitle = sTitle;
		this.sContent = sContent;
	}


	public int getsId() {
		return sId;
	}


	public void setsId(int sId) {
		this.sId = sId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getsTitle() {
		return sTitle;
	}


	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}


	public String getsContent() {
		return sContent;
	}


	public void setsContent(String sContent) {
		this.sContent = sContent;
	}


	@Override
	public String toString() {
		return "ServiceCenter [sId=" + sId + ", userId=" + userId + ", sTitle=" + sTitle + ", sContent=" + sContent
				+ "]";
	}
	
	

}
