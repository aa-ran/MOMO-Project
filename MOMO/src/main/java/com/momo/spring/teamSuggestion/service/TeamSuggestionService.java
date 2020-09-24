package com.momo.spring.teamSuggestion.service;

import java.util.ArrayList;

import com.momo.spring.teamSuggestion.domain.TeamSuggestion;

public interface TeamSuggestionService {
	public ArrayList<TeamSuggestion> selectSugList();
	
	public TeamSuggestion selectOne();
	
	public TeamSuggestion insertSug();
	
	public int updateSug();
	
	public int deleteSug();
}
