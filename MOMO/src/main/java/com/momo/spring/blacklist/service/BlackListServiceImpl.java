package com.momo.spring.blacklist.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.blacklist.domain.BlackList;
import com.momo.spring.blacklist.store.BlackListStoreLogic;

@Service("bService")
public class BlackListServiceImpl implements BlackListService{

	@Autowired
	private BlackListStoreLogic bStore;
	
	//전체조회
	@Override
	public ArrayList<BlackList> selectList() {
		return bStore.selectList();
	}

	//블랙리스트 추가
	@Override
	public int insertBlackList(BlackList blacklist, HttpServletRequest request) {
		return bStore.insertBlackList(blacklist);
	}

	@Override
	public int deleteBlackList(String userId) {
		return bStore.deleteBlackList(userId);
	}

	

	




	

}
