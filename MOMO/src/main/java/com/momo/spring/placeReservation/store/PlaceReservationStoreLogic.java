package com.momo.spring.placeReservation.store;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.placeReservation.domain.PageInfo;
import com.momo.spring.placeReservation.domain.PlaceReservation;

@Repository("prStore")
public class PlaceReservationStoreLogic {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<PlaceReservation> selectPrList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("placeReservationMapper.selectPrList",pi,rowBounds);
	}
	
	//전체 게시글 갯수
	public int getListCount(String userId) {
		return sqlSession.selectOne("placeReservationMapper.getListCount",userId);
	}
	
	public PlaceReservation insertPr() {
		return null;
	}
	
	public int updatePr() {
		return 0;
	}
	
	public int deletePr() {
		return 0;
	}

	
}
