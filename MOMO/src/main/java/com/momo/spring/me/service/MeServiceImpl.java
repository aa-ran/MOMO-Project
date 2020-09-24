package com.momo.spring.me.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.me.domain.Me;
import com.momo.spring.me.domain.MePageInfo;
import com.momo.spring.me.store.MeStoreLogic;

@Service("meService")
public class MeServiceImpl implements MeService {

	@Autowired
	private MeStoreLogic meStore;
	
	
	/**
	 * we 게시글 전체 수 세기
	 */
	@Override
	public int allListCount() {
		return meStore.allListCount();
	}
	
	//게시글 전체조회
		@Override
		public ArrayList<Me> selectMeList(MePageInfo pi) {
			return meStore.selectMeList(pi);
		}
	
	@Override
	public Me selectOne(int mId) {
		return meStore.selectOne(mId);
	}
	
	@Override
	public int insertMe(Me me, HttpServletRequest request) {
		me.setmContent(me.getmContent().replace("\n", "<br>"));
		return meStore.insertMe(me);
	}
	
	@Override
	public int updateMe(Me me) {
		me.setmContent(me.getmContent().replace("\n", "<br>"));
		return meStore.updateMe(me);
	}

	@Override
	public int deleteMe(int mId) {
		return meStore.deleteMe(mId);
	}
	
	@Override
	public int addReadCount(int mId) {
		return meStore.meCount(mId);
	}
	@Override
	public ArrayList<Me> selectNewMe() {
		return meStore.selectNewMe();
	}

	

	@Override
	public ArrayList<Me> searchMeList(MePageInfo pi, com.momo.spring.common.Search search) {
		return meStore.searchMeList(pi, search);

	}

	@Override
	public int allSearchListCount(com.momo.spring.common.Search search) {
		return meStore.allSearchListCount(search);

	}

	@Override
	public int allCategoryListCount(String category) {
		return meStore.allCategoryListCount(category);
	}

	/**
	 * 카테고리 리스트
	 */
	@Override
	public ArrayList<Me> selectMeCategoryList(MePageInfo pi, String category) {
		return meStore.selectMeCategoryList(pi, category);
	}



}
