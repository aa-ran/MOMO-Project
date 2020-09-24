package com.momo.spring.qna.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.qna.domain.Qna;
import com.momo.spring.qna.store.QNAStoreLogic;

@Service("qnaService")
public class QNAServiceImpl implements QNAService {
	
	@Autowired
	private QNAStoreLogic qnaStore;
	
	@Override
	public ArrayList<Qna> selectQnaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Qna selectQnaOne(int qnaId) {
		return qnaStore.selectQnaOne(qnaId);
	}

	@Override
	public int insertQna(Qna qna) {
		return qnaStore.insertQna(qna);
	}

	@Override
	public int updateQna(Qna qna) {
		return qnaStore.updateQna(qna);
	}

	@Override
	public int deleteQna() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int selectLastQnaId() {
		return qnaStore.selectLastQnaId();
	}

}
