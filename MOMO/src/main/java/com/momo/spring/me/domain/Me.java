package com.momo.spring.me.domain;

import java.sql.Date;

public class Me {

	private int mId;
	private String mWriter;
	private String mTitle;
	private String mContent;
	private String mCategory;
	private Date mCreateDate;
	private Date mModifyDate;
	private String meStatus;
	private int meCount;
	private int mLike;
	private int mDisLike;
	
	public Me() {}

	public Me(int mId, String mWriter, String mTitle, String mContent, String mCategory, Date mCreateDate,
			Date mModifyDate, String meStatus, int meCount, int mLike, int mDisLike) {
		super();
		this.mId = mId;
		this.mWriter = mWriter;
		this.mTitle = mTitle;
		this.mContent = mContent;
		this.mCategory = mCategory;
		this.mCreateDate = mCreateDate;
		this.mModifyDate = mModifyDate;
		this.meStatus = meStatus;
		this.meCount = meCount;
		this.mLike = mLike;
		this.mDisLike = mDisLike;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getmWriter() {
		return mWriter;
	}

	public void setmWriter(String mWriter) {
		this.mWriter = mWriter;
	}

	public String getmTitle() {
		return mTitle;
	}

	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}

	public String getmContent() {
		return mContent;
	}

	public void setmContent(String mContent) {
		this.mContent = mContent;
	}

	public String getmCategory() {
		return mCategory;
	}

	public void setmCategory(String mCategory) {
		this.mCategory = mCategory;
	}

	public Date getmCreateDate() {
		return mCreateDate;
	}

	public void setmCreateDate(Date mCreateDate) {
		this.mCreateDate = mCreateDate;
	}

	public Date getmModifyDate() {
		return mModifyDate;
	}

	public void setmModifyDate(Date mModifyDate) {
		this.mModifyDate = mModifyDate;
	}

	public String getMeStatus() {
		return meStatus;
	}

	public void setMeStatus(String meStatus) {
		this.meStatus = meStatus;
	}

	public int getMeCount() {
		return meCount;
	}

	public void setMeCount(int meCount) {
		this.meCount = meCount;
	}

	public int getmLike() {
		return mLike;
	}

	public void setmLike(int mLike) {
		this.mLike = mLike;
	}

	public int getmDisLike() {
		return mDisLike;
	}

	public void setmDisLike(int mDisLike) {
		this.mDisLike = mDisLike;
	}

	@Override
	public String toString() {
		return "Me [mId=" + mId + ", mWriter=" + mWriter + ", mTitle=" + mTitle + ", mContent=" + mContent
				+ ", mCategory=" + mCategory + ", mCreateDate=" + mCreateDate + ", mModifyDate=" + mModifyDate
				+ ", meStatus=" + meStatus + ", meCount=" + meCount + ", mLike=" + mLike + ", mDisLike=" + mDisLike
				+ "]";
	}
	
}
