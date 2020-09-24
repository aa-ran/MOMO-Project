package com.momo.spring.wecomment.service;

import java.util.ArrayList;

import com.momo.spring.wecomment.domain.WeComment;

public interface WeCommentService {
	public ArrayList<WeComment> selectWcList(int wId);
	
	public int insertWc(WeComment wec);
	
	public int updateWc(WeComment wec);
	
	public int deleteWc(int wecId);
}
