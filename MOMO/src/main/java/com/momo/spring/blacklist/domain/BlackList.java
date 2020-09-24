package com.momo.spring.blacklist.domain;

public class BlackList {
	
	private String userId;
	private String reason;
	
	public BlackList() {}
	
	
	public BlackList(String userId, String reason) {
		super();
		this.userId = userId;
		this.reason = reason;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	@Override
	public String toString() {
		return "BlackList [userId=" + userId + ", reason=" + reason + "]";
	}




}
