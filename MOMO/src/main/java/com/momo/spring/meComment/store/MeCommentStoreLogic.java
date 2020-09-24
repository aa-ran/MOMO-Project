package com.momo.spring.meComment.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.meComment.domain.MeComment;

@Repository("mecStore")
public class MeCommentStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<MeComment> selectMcList(int mId) {
		return (ArrayList)sqlSession.selectList("meCommentMapper.selectList", mId);
	}
	
	public int insertMc(MeComment mec) {
		return sqlSession.insert("meCommentMapper.insertComment", mec);
	}
	
	public int updateMc(MeComment mec) {
		return sqlSession.update("meCommentMapper.updateComment", mec);
	}
	
	public int deleteMc(int mecId) {
		return sqlSession.delete("meCommentMapper.deleteComment", mecId);
	}
}
