package com.momo.spring.qna.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.qna.domain.Qna;

@Repository("qnaStore")
public class QNAStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Qna> selectQnaList() {
		return null;
	}
	
	public Qna selectQnaOne(int qnaId) {
		return sqlSession.selectOne("qnaMapper.selectQnaOne",qnaId);
	}
	
	public int insertQna(Qna qna) {
		return sqlSession.insert("qnaMapper.insertQna",qna);
	}
	
	public int updateQna(Qna qna) {
		return sqlSession.update("qnaMapper.updateQna", qna);
	}
	
	public int deleteQna() {
		return 0;
	}
	
	public int selectLastQnaId() {
		return sqlSession.selectOne("qnaMapper.selectLastQnaId");
	}
}
