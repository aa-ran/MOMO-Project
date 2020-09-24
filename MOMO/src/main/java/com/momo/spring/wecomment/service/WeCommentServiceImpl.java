package com.momo.spring.wecomment.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.wecomment.domain.WeComment;
import com.momo.spring.wecomment.store.WeCommentStoreLogic;

@Service("wcService")
public class WeCommentServiceImpl implements WeCommentService {
	
	@Autowired
	private WeCommentStoreLogic wcStore;

	@Override
	public ArrayList<WeComment> selectWcList(int wId) {
		return wcStore.selectWcList(wId);
	}

	@Override
	public int insertWc(WeComment wec) {
		return wcStore.insertWc(wec);
	}

	@Override
	public int updateWc(WeComment wec) {
		return wcStore.updateWc(wec);
	}

	@Override
	public int deleteWc(int wecId) {
		return wcStore.deleteWc(wecId);
	}


}
