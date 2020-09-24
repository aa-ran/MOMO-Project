package com.momo.spring.qna.service;

import java.util.ArrayList;

import com.momo.spring.qna.domain.Qna;

public interface QNAService {

	public ArrayList<Qna> selectQnaList();
	
	public Qna selectQnaOne(int qnaId);
	
	public int insertQna(Qna qna);
	
	public int updateQna(Qna qna);
	
	public int deleteQna();

	public int selectLastQnaId();
}
