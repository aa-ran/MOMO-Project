package com.momo.spring.meComment.service;

import java.util.ArrayList;

import com.momo.spring.meComment.domain.MeComment;

public interface MeCommentService {
	public ArrayList<MeComment> selectMcList(int mId);
	
	public int insertMc(MeComment mec);
	
	public int updateMc(MeComment mec);

	public int deleteMc(int mecId);

}