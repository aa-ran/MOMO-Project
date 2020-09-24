package com.momo.spring.career.domain;

public class Career {

	private String userId;
	private String awards;
	private String career;
	private String portfolio;
	private String cFileName;
	private String cFilePath;
	
	public Career() {}

	public Career(String userId, String awards, String career, String portfolio, String cFileName, String cFilePath) {
		super();
		this.userId = userId;
		this.awards = awards;
		this.career = career;
		this.portfolio = portfolio;
		this.cFileName = cFileName;
		this.cFilePath = cFilePath;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAwards() {
		return awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPortfolio() {
		return portfolio;
	}

	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}

	public String getcFileName() {
		return cFileName;
	}

	public void setcFileName(String cFileName) {
		this.cFileName = cFileName;
	}

	public String getcFilePath() {
		return cFilePath;
	}

	public void setcFilePath(String cFilePath) {
		this.cFilePath = cFilePath;
	}

	@Override
	public String toString() {
		return "Career [userId=" + userId + ", awards=" + awards + ", career=" + career + ", portfolio=" + portfolio
				+ ", cFileName=" + cFileName + ", cFilePath=" + cFilePath + "]";
	}
	
	
	
}
