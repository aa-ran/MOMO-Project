package com.momo.spring.place.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.common.PlaceSearch;
import com.momo.spring.place.domain.Place;
import com.momo.spring.place.store.PlaceStoreLogic;

@Service("pService")
public class PlaceServiceImpl implements PlaceService {

	@Autowired
	private PlaceStoreLogic pStore;

	@Override
	public int insertPlace(Place place, MultipartFile file, HttpServletRequest request) {
		place.setpOption(place.getpOption().replace("\n", "<br>"));
		return pStore.insertPlace(place);
	}

	@Override
	public Place selectOne(int pNo) {
		return pStore.selectOne(pNo);
	}

	@Override
	public int deletePlace(int pNo) {
		return pStore.deletePlace(pNo);
	}

	@Override
	public ArrayList<Place> searchList(PlaceSearch pSearch) {
		return pStore.searchPlace(pSearch);
	}

	@Override
	public ArrayList<Place> selectPlaceList() {
		return pStore.selectPlaceList();
	}

	@Override
	public int updatePlace(Place place) {
		place.setpOption(place.getpOption().replace("\n", "<br>"));
		return pStore.updatePlace(place);
	}
	
	@Override
	public ArrayList<Place> selectNewPlace() {
		return pStore.selectNewPlace();
	}

}
