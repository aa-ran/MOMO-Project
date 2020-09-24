package com.momo.spring.we.store;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.common.Search;
import com.momo.spring.we.domain.We;
import com.momo.spring.we.domain.WePageInfo;

@Repository("wStore")
public class WeStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * we 게시글 전체 갯수
	 * @return
	 */
	public int allListCount() {
		int allListCount = sqlSession.selectOne("weMapper.allListCount");
		return allListCount;
	}

	/**
	 * we 리스트 전체 조회
	 * @param pi
	 * @return
	 */
	public ArrayList<We> selectWeList(WePageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("weMapper.selectWeList",null, rowBounds);
	}
	
	/**
	 * 게시글 상세보기
	 * @param wId
	 * @return
	 */
	public We selectOne(int wId) {
		return sqlSession.selectOne("weMapper.selectWeOne",wId);
	}
	
	/**
	 * 조회수 증가
	 * @param wId
	 * @return
	 */
	public int countPlus(int wId) {
		return sqlSession.update("weMapper.countPlus",wId);
	}
	
	/**
	 * We 게시글 등록
	 * @return
	 */
	public int insertWe(We we) {
		return sqlSession.insert("weMapper.insertWe",we);
	}
	
	/**
	 * We 게시글 수정
	 * @param we
	 * @return
	 */
	public int updateWe(We we) {
		return sqlSession.update("weMapper.updateWe",we);
	}
	
	/**
	 * We 게시글 삭제
	 * @param wId
	 * @return
	 */
	public int deleteWe(int wId) {
		return sqlSession.delete("weMapper.deleteWe",wId);
	}
	
	public int weCount(int wId) {
		return sqlSession.update("weMapper.weCount", wId);
	}
	
	/**
	 * We 게시글 검색
	 * @param pi
	 * @param search
	 * @return
	 */
	public ArrayList<We> searchWeList(WePageInfo pi, Search search){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("weMapper.searchWeList",search, rowBounds);
	}
	
	
	/**
	 * 카테고리별 게시글 세기
	 * @param category
	 * @return
	 */
	public int allCategoryListCount(String category) {
		int allListCount = sqlSession.selectOne("weMapper.allListCategoryCount", category);
		return allListCount;
	}
	
	/**
	 * search한 게시글 갯수 세기
	 * @param search
	 * @return
	 */
	public int allSearchListCount(Search search) {
		int allListCount = sqlSession.selectOne("weMapper.allListSearchCount", search);
		return allListCount;
	}
	
	/**
	 * we 카테고리별 검색
	 * @param pi
	 * @param category
	 * @return
	 */
	public ArrayList<We> searchWeCategoryList(WePageInfo pi, String category){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("weMapper.searchWeCategoryList",category, rowBounds);
	}
	
	/**
	 * 기대되는 팀 리스트
	 * @return
	 */
	public ArrayList<We> selectHighTeamList(){
		return (ArrayList)sqlSession.selectList("weMapper.selectHighTeamList");
	}
	
	/**
	 * 관심 리스트
	 * @param interest
	 * @return
	 */
	public ArrayList<We> selectInterestTeam(String interest) {
		return (ArrayList)sqlSession.selectList("weMapper.selectInterestTeam",interest);
	}
	

}
