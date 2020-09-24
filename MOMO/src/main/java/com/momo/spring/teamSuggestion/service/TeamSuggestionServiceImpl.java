package com.momo.spring.teamSuggestion.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.momo.spring.teamSuggestion.domain.TeamSuggestion;
import com.momo.spring.teamSuggestion.store.TeamSuggestionStoreLogic;

public class TeamSuggestionServiceImpl implements TeamSuggestionService {
	
	@Autowired
	private TeamSuggestionStoreLogic sugStore;

	@Override
	public ArrayList<TeamSuggestion> selectSugList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TeamSuggestion selectOne() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TeamSuggestion insertSug() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateSug() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSug() {
		// TODO Auto-generated method stub
		return 0;
	}

}
