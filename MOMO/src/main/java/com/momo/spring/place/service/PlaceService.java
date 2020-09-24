package com.momo.spring.place.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.common.PlaceSearch;
import com.momo.spring.place.domain.Place;

public interface PlaceService {
	
	/**대관 전체 조회 서비스
	 * 
	 * @return list
	 */
	public abstract ArrayList<Place> selectPlaceList ();
	
	/**대관 등록서비스
	 * @param place
	 * @return result
	 */
	public abstract int insertPlace(Place place, MultipartFile file, HttpServletRequest request);
	
	/**대관 상세조회서비스
	 * @param 
	 * @return place
	 */
	public abstract Place selectOne(int pNo);
	
	/**
	 * @param
	 * @return 
	 */
	public int deletePlace(int pNo);
	
	/**대관 검색 서비스
	 * @param
	 * @return
	 */
	public abstract ArrayList<Place> searchList(PlaceSearch pSearch);

	/**
	 * 대관 정보 수정 서비스
	 * @return
	 */
	public int updatePlace(Place place);
	
	/**
	 * 최신장소리스트
	 * @return
	 */
	public abstract ArrayList<Place> selectNewPlace();


}
