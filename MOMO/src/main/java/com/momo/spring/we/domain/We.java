package com.momo.spring.we.domain;

import java.sql.Date;

public class We {
	
	private int wId;
	private String wWriter;
	private String wTitle;
	private String wContent;
	private String wCategory;
	private Date wCreateDate;
	private Date wModifyDate;
	private int teamMember;
	private Date wDeadline;
	private String wStatus;
	private int wCount;
	private String wFileName;
	private String wFilePath;
	private int wLike;
	private int wDislike;
	private String wTeamName;
	
	public We () {}

	public We(int wId, String wWriter, String wTitle, String wContent, String wCategory, Date wCreateDate,
			Date wModifyDate, int teamMember, Date wDeadline, String wStatus, int wCount, String wFileName,
			String wFilePath, int wLike, int wDislike, String wTeamName) {
		super();
		this.wId = wId;
		this.wWriter = wWriter;
		this.wTitle = wTitle;
		this.wContent = wContent;
		this.wCategory = wCategory;
		this.wCreateDate = wCreateDate;
		this.wModifyDate = wModifyDate;
		this.teamMember = teamMember;
		this.wDeadline = wDeadline;
		this.wStatus = wStatus;
		this.wCount = wCount;
		this.wFileName = wFileName;
		this.wFilePath = wFilePath;
		this.wLike = wLike;
		this.wDislike = wDislike;
		this.wTeamName = wTeamName;
	}

	public int getwId() {
		return wId;
	}

	public void setwId(int wId) {
		this.wId = wId;
	}

	public String getwWriter() {
		return wWriter;
	}

	public void setwWriter(String wWriter) {
		this.wWriter = wWriter;
	}

	public String getwTitle() {
		return wTitle;
	}

	public void setwTitle(String wTitle) {
		this.wTitle = wTitle;
	}

	public String getwContent() {
		return wContent;
	}

	public void setwContent(String wContent) {
		this.wContent = wContent;
	}

	public String getwCategory() {
		return wCategory;
	}

	public void setwCategory(String wCategory) {
		this.wCategory = wCategory;
	}

	public Date getwCreateDate() {
		return wCreateDate;
	}

	public void setwCreateDate(Date wCreateDate) {
		this.wCreateDate = wCreateDate;
	}

	public Date getwModifyDate() {
		return wModifyDate;
	}

	public void setwModifyDate(Date wModifyDate) {
		this.wModifyDate = wModifyDate;
	}

	public int getTeamMember() {
		return teamMember;
	}

	public void setTeamMember(int teamMember) {
		this.teamMember = teamMember;
	}

	public Date getwDeadline() {
		return wDeadline;
	}

	public void setwDeadline(Date wDeadline) {
		this.wDeadline = wDeadline;
	}

	public String getwStatus() {
		return wStatus;
	}

	public void setwStatus(String wStatus) {
		this.wStatus = wStatus;
	}

	public int getwCount() {
		return wCount;
	}

	public void setwCount(int wCount) {
		this.wCount = wCount;
	}

	public String getwFileName() {
		return wFileName;
	}

	public void setwFileName(String wFileName) {
		this.wFileName = wFileName;
	}

	public String getwFilePath() {
		return wFilePath;
	}

	public void setwFilePath(String wFilePath) {
		this.wFilePath = wFilePath;
	}

	public int getwLike() {
		return wLike;
	}

	public void setwLike(int wLike) {
		this.wLike = wLike;
	}

	public int getwDislike() {
		return wDislike;
	}

	public void setwDislike(int wDislike) {
		this.wDislike = wDislike;
	}

	public String getwTeamName() {
		return wTeamName;
	}

	public void setwTeamName(String wTeamName) {
		this.wTeamName = wTeamName;
	}

	@Override
	public String toString() {
		return "We [wId=" + wId + ", wWriter=" + wWriter + ", wTitle=" + wTitle + ", wContent=" + wContent
				+ ", wCategory=" + wCategory + ", wCreateDate=" + wCreateDate + ", wModifyDate=" + wModifyDate
				+ ", teamMember=" + teamMember + ", wDeadline=" + wDeadline + ", wStatus=" + wStatus + ", wCount="
				+ wCount + ", wFileName=" + wFileName + ", wFilePath=" + wFilePath + ", wLike=" + wLike + ", wDislike="
				+ wDislike + ", wTeamName=" + wTeamName + "]";
	}
	
	

}
