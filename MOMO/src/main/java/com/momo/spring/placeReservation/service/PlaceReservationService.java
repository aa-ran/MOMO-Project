package com.momo.spring.placeReservation.service;

import java.util.ArrayList;

import com.momo.spring.placeReservation.domain.PageInfo;
import com.momo.spring.placeReservation.domain.PlaceReservation;


public interface PlaceReservationService {

	public ArrayList<PlaceReservation> selectPrList(PageInfo pi);
	
	public PlaceReservationService insertPr();
	
	
	public int updatePr() ;
	
	
	public int deletePr() ;

	public int getListCount(String userId);
	
}
