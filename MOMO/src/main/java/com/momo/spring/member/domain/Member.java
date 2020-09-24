package com.momo.spring.member.domain;

import java.sql.Date;

public class Member {

	private String userId;
	private String password;
	private String userName;
	private String nickName;
	private Date birth;
	private String address;
	private String phone;
	private String email;
	private String interest;
	private String mStatus;
	private String gender;
	
	public Member() {}

	public Member(String userId, String password, String userName, String nickName, Date birth, String address,
			String phone, String email, String interest, String mStatus) {
		super();
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.nickName = nickName;
		this.birth = birth;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.interest = interest;
		this.mStatus = mStatus;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", password=" + password + ", userName=" + userName + ", nickName="
				+ nickName + ", birth=" + birth + ", address=" + address + ", phone=" + phone + ", email=" + email
				+ ", interest=" + interest + ", mStatus=" + mStatus + "]";
	}
	
}
