package com.momo.spring.meComment.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.meComment.domain.MeComment;
import com.momo.spring.meComment.store.MeCommentStoreLogic;

@Service("mecService")
public class MeCommentServiceImpl implements MeCommentService {
	
	@Autowired
	private MeCommentStoreLogic mecStore;

	@Override
	public ArrayList<MeComment> selectMcList(int mId) {
		return mecStore.selectMcList(mId);
	}

	@Override
	public int insertMc(MeComment mec) {
		return mecStore.insertMc(mec);
	}

	@Override
	public int updateMc(MeComment mec) {
		return mecStore.updateMc(mec);
	}

	@Override
	public int deleteMc(int mecId) {
		return mecStore.deleteMc(mecId);
	}

}
