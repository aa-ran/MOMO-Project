package com.momo.spring.me.store;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import com.momo.spring.common.Search;
import com.momo.spring.me.domain.Me;
import com.momo.spring.me.domain.MePageInfo;

@Repository("meStore")
public class MeStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	/**
	 * me 게시글 전체 갯수
	 * @return
	 */
	public int allListCount() {
		int allListCount = sqlSession.selectOne("meMapper.allListCount");
		return allListCount;
	}
	
	//리스트 전체조회
	public ArrayList<Me> selectMeList(MePageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("meMapper.selectMeList",null, rowBounds);
	}
	
	public Me selectOne(int mId) {
		return sqlSession.selectOne("meMapper.selectOne", mId);
	}
	
	public int insertMe(Me me) {
		return sqlSession.insert("meMapper.insertMe",me);
	}
	
	public int updateMe(Me me) {
		return sqlSession.update("meMapper.updateMe",me);
	}
	
	public int deleteMe(int mId) {
		return sqlSession.delete("meMapper.deleteMe",mId);
	}
	public int meCount(int mId) {
		return sqlSession.update("meMapper.meCount", mId);
	}
	public ArrayList<Me> selectNewMe() {
		return (ArrayList)sqlSession.selectList("meMapper.selectNewMe");
	}
	/**
	 * We 게시글 검색
	 * @param pi
	 * @param search
	 * @return
	 */
	public ArrayList<Me> searchMeList(MePageInfo pi, Search search){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("meMapper.searchMeList",search, rowBounds);
	}
	
	public int allCategoryListCount(String category) {
		int allListCount = sqlSession.selectOne("meMapper.allListCategoryCount", category);
		return allListCount;
	}
	
	/**
	 * search한 게시글 갯수 세기
	 * @param search
	 * @return
	 */
	public int allSearchListCount(Search search) {
		int allListCount = sqlSession.selectOne("meMapper.allListSearchCount", search);
		return allListCount;
	}
	
	//카테고리 리스트 전체조회
	public ArrayList<Me> selectMeCategoryList(MePageInfo pi, String category) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		//mybatis의 RowBounds 클래스의 offset 사용 => offset이란 얼마나 건너띌 것인지, 증가값 표현
		//limit : 고정된 값, 내가 한번에 가져오고 싶은 갯수
		//offset(5) + boardLimit(10) = 15개를 가져옴  
		//15건을 가져오는데 5건만큼 건너뛰고 결과값을 가져오게함 => (15-5)10개 
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("meMapper.selectMeCategoryList",category, rowBounds);
	}

	
}
