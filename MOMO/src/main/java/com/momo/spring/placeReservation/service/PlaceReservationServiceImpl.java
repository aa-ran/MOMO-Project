package com.momo.spring.placeReservation.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.placeReservation.domain.PageInfo;
import com.momo.spring.placeReservation.domain.PlaceReservation;
import com.momo.spring.placeReservation.store.PlaceReservationStoreLogic;

@Service("prService")
public class PlaceReservationServiceImpl implements PlaceReservationService  {

	@Autowired
	private PlaceReservationStoreLogic prStore;
	
	
	@Override
	public ArrayList<PlaceReservation> selectPrList(PageInfo pi) {
		return prStore.selectPrList(pi);
	}
	
	//전체 게시글 갯수 
	@Override
	public int getListCount(String userId) {
		return prStore.getListCount(userId);
	}

	@Override
	public PlaceReservationService insertPr() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatePr() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePr() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
