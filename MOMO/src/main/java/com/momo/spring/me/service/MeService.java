package com.momo.spring.me.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.common.Search;
import com.momo.spring.me.domain.Me;
import com.momo.spring.me.domain.MePageInfo;

public interface MeService {
	// me 게시글 전체 수 조회
	int allListCount();

	/**
	 * me 게시판 전체 조회
	 * 
	 * @param bId
	 * @return
	 */
	public ArrayList<Me> selectMeList(MePageInfo pi);

	/**
	 * me 게시판 상세 조회
	 * 
	 * @param mId
	 * @return
	 */
	public abstract Me selectOne(int mId);

	/**
	 * me 조회수
	 * 
	 * @param mId
	 * @return
	 */
	public int addReadCount(int mId);

	/**
	 * 게시판 등록 서비스
	 * 
	 * @param me
	 * @return result
	 */
	public abstract int insertMe(Me me, HttpServletRequest request);

	/**
	 * 게시판 수정용 서비스
	 * 
	 * @param notice
	 * @return result
	 */
	public abstract int updateMe(Me me);

	/**
	 * 게시판 삭제용 서비스
	 * 
	 * @param nId
	 * @return result
	 */
	public abstract int deleteMe(int mId);

	/**
	 * 최신 메이트
	 * 
	 * @return
	 */
	public ArrayList<Me> selectNewMe();

	/**
	 * 게시판 검색용 서비스
	 * 
	 * @param search
	 * @return searchList
	 */
	public abstract ArrayList<Me> searchMeList(MePageInfo pi, Search search);

	/**
	 * search 페이지 갯수
	 * 
	 * @param search
	 * @return
	 */
	public int allSearchListCount(Search search);

	// category별 게시글 갯수 세기
	int allCategoryListCount(String category);
	
	/**
	 * me 게시판 카테고리 전체 조회
	 * 
	 * @param bId
	 * @return
	 */
	public ArrayList<Me> selectMeCategoryList(MePageInfo pi, String category);

}
