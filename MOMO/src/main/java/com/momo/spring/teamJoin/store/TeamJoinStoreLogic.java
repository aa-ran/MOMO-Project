package com.momo.spring.teamJoin.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.teamJoin.domain.TeamJoin;

@Repository("joinStore")
public class TeamJoinStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<TeamJoin> selectJoinList(TeamJoin teamJoin) {
		return (ArrayList)sqlSession.selectList("teamJoinMapper.selectJoinList", teamJoin);
	}
	
	public TeamJoin selectOne(TeamJoin teamJoin) {
		return sqlSession.selectOne("teamJoinMapper.selectOne",teamJoin);
	}
	
	public int insertJoin(TeamJoin teamJoin) {
		return sqlSession.insert("teamJoinMapper.insertTeamJoin", teamJoin);
	}
	
	
	public int updateJoin() {
		return 0;
		
	}
	
	public int deleteJoin(TeamJoin teamJoin) {
		return sqlSession.delete("teamJoinMapper.deleteJoin",teamJoin);
	}

	public ArrayList<TeamJoin> selectJoinList(int wId) {
		return (ArrayList)sqlSession.selectList("teamJoinMapper.selectJoinList",wId);
	}

	public int joinCount(int wId) {
		return sqlSession.selectOne("teamJoinMapper.joinCount",wId);
	}
}
