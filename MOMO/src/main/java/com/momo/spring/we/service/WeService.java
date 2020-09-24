package com.momo.spring.we.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.common.Search;
import com.momo.spring.we.domain.We;
import com.momo.spring.we.domain.WePageInfo;

public interface WeService {

	// 1-1. we 게시글 전체 수 조회
	int allListCount();

	// 1-2. we 게시판 전체 조회
	public ArrayList<We> selectWeList(WePageInfo pi);

	// 1-3. we 게시글 상세보기
	public We selectOne(int wId);

	// 1-4. we 게시글 조회수 증가
	int countPlus(int wId);

	// 1-5. we 게시글 등록
	public int insertWe(We we);

	// 1-6. we 게시글 수정
	public int updateWe(We we);

	// 1-7. we 게시글 삭제
	public int deleteWe(int wId);

	// 1-8. we 조회수
	public int addReadCount(int wId);

	// 1-9. we 게시글 검색
	public ArrayList<We> searchWeList(WePageInfo pi, Search search);

	// 1-10. category별 게시글 갯수 세기
	int allCategoryListCount(String category);

	// 1-11. category별 게시글 검색하기
	public ArrayList<We> searchWeCategoryList(WePageInfo pi, String category);

	// 1-12. search한 게시글 갯수 세기
	int allSearchListCount(Search search);

	// 1-13. 기대되는 팀 리스트
	ArrayList<We> selectHighTeamList();
	
	// 1-14. 매치된 팀 리스트
	ArrayList<We> selectInterestTeam(String interest);
}
