package com.momo.spring.member.domain;

public class Mail {

	private String setfrom;
	private String tomail;
	private String title;
	private String content;
	
	public Mail(String setfrom, String tomail, String title, String content) {
		super();
		this.setfrom = setfrom;
		this.tomail = tomail;
		this.title = title;
		this.content = content;
	}
	
	public String getSetfrom() {
		return setfrom;
	}
	public void setSetfrom(String setfrom) {
		this.setfrom = setfrom;
	}
	public String getTomail() {
		return tomail;
	}
	public void setTomail(String tomail) {
		this.tomail = tomail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
	
}
