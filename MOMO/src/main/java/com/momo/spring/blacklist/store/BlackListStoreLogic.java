package com.momo.spring.blacklist.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.blacklist.domain.BlackList;

@Repository("bStore")
public class BlackListStoreLogic {
	
	@Autowired
	private SqlSessionTemplate  sqlSession;
	
	//전체조회
	public ArrayList<BlackList> selectList(){
		return (ArrayList)sqlSession.selectList("blacklistMapper.selectList");
	}
	//블랙리스트 추가
	public int insertBlackList(BlackList blacklist) {
		return sqlSession.insert("blacklistMapper.insertBlackList", blacklist);
	}
	
	//블랙리스트 삭제
	public int deleteBlackList(String userId) {
		return sqlSession.delete("blacklistMapper.deleteBlackList",userId);
	}
	
}
