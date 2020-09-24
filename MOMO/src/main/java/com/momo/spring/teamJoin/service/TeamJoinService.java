package com.momo.spring.teamJoin.service;

import java.util.ArrayList;

import com.momo.spring.teamJoin.domain.TeamJoin;

public interface TeamJoinService {

public ArrayList<TeamJoin> selectJoinList(TeamJoin teamJoin);
	
	public TeamJoin selectOne(TeamJoin teamJoin);
	
	public int insertJoin(TeamJoin teamJoin);
	
	public int updateJoin();
		
	public int deleteJoin(TeamJoin teamJoin);

	public ArrayList<TeamJoin> selectJoinList(int wId);

	public int joinCount(int wId);

}
