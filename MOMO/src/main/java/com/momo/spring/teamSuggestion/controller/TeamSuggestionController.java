package com.momo.spring.teamSuggestion.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.momo.spring.teamSuggestion.domain.TeamSuggestion;
import com.momo.spring.teamSuggestion.service.TeamSuggestionService;

public class TeamSuggestionController {
	@Autowired
	private TeamSuggestionService sugService;

	public ArrayList<TeamSuggestion> selectSugList() {
		return null;
	}
	
	public TeamSuggestion selectOne() {
		return null;
	}
	
	public TeamSuggestion insertSug() {
		return null;
	}
	
	public int updateSug() {
		return 0;
	}
	
	public int deleteSug() {
		return 0;
	}
}
