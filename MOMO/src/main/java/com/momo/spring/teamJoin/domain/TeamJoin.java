package com.momo.spring.teamJoin.domain;

import java.sql.Date;

public class TeamJoin {

	private int tId;
	private String fromId; //들어가고 싶은 사람 
	private String toId; //공고 작성자
	private String acceptYN;
	private Date acceptDate;
	private Date rejectDate;
	private String teamName;
	
	public TeamJoin() {}

	public TeamJoin(int tId, String fromId, String toId, String acceptYN, Date acceptDate, Date rejectDate,
			String teamName) {
		super();
		this.tId = tId;
		this.fromId = fromId;
		this.toId = toId;
		this.acceptYN = acceptYN;
		this.acceptDate = acceptDate;
		this.rejectDate = rejectDate;
		this.teamName = teamName;
	}

	public int gettId() {
		return tId;
	}

	public void settId(int tId) {
		this.tId = tId;
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

	public String getAcceptYN() {
		return acceptYN;
	}

	public void setAcceptYN(String acceptYN) {
		this.acceptYN = acceptYN;
	}

	public Date getAcceptDate() {
		return acceptDate;
	}

	public void setAcceptDate(Date acceptDate) {
		this.acceptDate = acceptDate;
	}

	public Date getRejectDate() {
		return rejectDate;
	}

	public void setRejectDate(Date rejectDate) {
		this.rejectDate = rejectDate;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	@Override
	public String toString() {
		return "TeamJoin [tId=" + tId + ", fromId=" + fromId + ", toId=" + toId + ", acceptYN=" + acceptYN
				+ ", acceptDate=" + acceptDate + ", rejectDate=" + rejectDate + ", teamName=" + teamName + "]";
	}
	
}
