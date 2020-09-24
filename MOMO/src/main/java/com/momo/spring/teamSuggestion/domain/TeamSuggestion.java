package com.momo.spring.teamSuggestion.domain;

public class TeamSuggestion {

	private String fromId;
	private int mId;
	private String toId;
	private String acceptStatus;
	
	public TeamSuggestion() {}

	public TeamSuggestion(String fromId, int mId, String toId, String acceptStatus) {
		super();
		this.fromId = fromId;
		this.mId = mId;
		this.toId = toId;
		this.acceptStatus = acceptStatus;
	}

	public String getFromId() {
		return fromId;
	}

	public void setFromId(String fromId) {
		this.fromId = fromId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getToId() {
		return toId;
	}

	public void setToId(String toId) {
		this.toId = toId;
	}

	public String getAcceptStatus() {
		return acceptStatus;
	}

	public void setAcceptStatus(String acceptStatus) {
		this.acceptStatus = acceptStatus;
	}

	@Override
	public String toString() {
		return "TeamSuggestion [fromId=" + fromId + ", mId=" + mId + ", toId=" + toId + ", acceptStatus=" + acceptStatus
				+ "]";
	}
	
	
}
