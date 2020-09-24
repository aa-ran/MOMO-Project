package com.momo.spring.place.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.common.PlaceSearch;
import com.momo.spring.place.domain.Place;

@Repository("pStore")
public class PlaceStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Place> selectPlaceList() {
		return (ArrayList)sqlSession.selectList("placeMapper.selectList");
	}
	
	public Place selectOne(int pNo) {
		return sqlSession.selectOne("placeMapper.selectOne", pNo);
	}
	
	public int insertPlace(Place place) {
		return sqlSession.insert("placeMapper.insertPlace", place);
	}
	
	public int deletePlace(int pNo) {
		return sqlSession.delete("placeMapper.deletePlace", pNo);
	}
	
	public int updatePlace(Place place) {
		return sqlSession.update("placeMapper.updatePlace", place);
	}
	public ArrayList<Place> selectNewPlace() {
		return (ArrayList)sqlSession.selectList("placeMapper.selectNewPlace");
	}
	/**
	 * 장소 검색
	 * @return
	 */
	public ArrayList<Place> searchPlace(PlaceSearch pSearch) {
		return (ArrayList)sqlSession.selectList("placeMapper.searchPlace", pSearch);
	}
}
