package com.momo.spring.wecomment.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.wecomment.domain.WeComment;

@Repository("wcStore")
public class WeCommentStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<WeComment> selectWcList(int wId) {
		return (ArrayList)sqlSession.selectList("weCommentMapper.selectList",wId);
	}
	
	public int insertWc(WeComment wec) {
		return sqlSession.insert("weCommentMapper.insertComment", wec);
	}
	
	public int updateWc(WeComment wec) {
		return sqlSession.update("weCommentMapper.updateComment", wec);
	}
	
	public int deleteWc(int wecId) {
		return sqlSession.delete("weCommentMapper.deleteComment", wecId);
	}
}
