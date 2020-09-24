package com.momo.spring.we.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.common.Search;
import com.momo.spring.we.domain.We;
import com.momo.spring.we.domain.WePageInfo;
import com.momo.spring.we.store.WeStoreLogic;

@Service("wService")
public class WeServiceImpl implements WeService {
	
	@Autowired
	private WeStoreLogic wStore;

	/**
	 * we 게시글 전체 수 세기
	 */
	@Override
	public int allListCount() {
		return wStore.allListCount();
	}
	
	/**
	 * we 게시글 전체 조회
	 */
	@Override
	public ArrayList<We> selectWeList(WePageInfo pi) {
		return wStore.selectWeList(pi);
	}

	/**
	 * We 게시글 등록
	 */
	@Override
	public int insertWe(We we) {
		return wStore.insertWe(we);
	}

	/**
	 * 조회수 증가
	 */
	@Override
	public int countPlus(int wId) {
		return wStore.countPlus(wId);
	}

	/**
	 * 게시글 상세보기 
	 */
	@Override
	public We selectOne(int wId) {
		return wStore.selectOne(wId);
	}

	/**
	 * we 게시글 수정
	 */
	@Override
	public int updateWe(We we) {
		return wStore.updateWe(we);
	}

	/**
	 * we 게시글 삭제
	 */
	@Override
	public int deleteWe(int wId) {
		return wStore.deleteWe(wId);
	}

	/**
	 * we 조회수
	 */
	@Override
	public int addReadCount(int wId) {
		return wStore.weCount(wId);
	}
	
	/**
	 * we 게시글 검색
	 */
	@Override
	public ArrayList<We> searchWeList(WePageInfo pi, Search search) {
		return wStore.searchWeList(pi, search);
	}

	/**
	 * we 게시글 카테고리별로 세기
	 */
	@Override
	public int allCategoryListCount(String category) {
		return wStore.allCategoryListCount(category);
	}

	/**
	 * we 게시글 카테고리별 검색
	 */
	@Override
	public ArrayList<We> searchWeCategoryList(WePageInfo pi, String category) {
		return wStore.searchWeCategoryList(pi, category);
	}
	
	/**
	 * we 게시글 search 갯수 세기
	 */
	@Override
	public int allSearchListCount(Search search) {
		return wStore.allSearchListCount(search);
	}
	
	/**
	 * 기대되는 팀 리스트
	 */
	@Override
	public ArrayList<We> selectHighTeamList() {
		return wStore.selectHighTeamList();
	}

	/**
	 * interest teamList
	 */
	@Override
	public ArrayList<We> selectInterestTeam(String interest) {
		return wStore.selectInterestTeam(interest);
	}


}
