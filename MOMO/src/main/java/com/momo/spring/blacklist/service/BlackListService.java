package com.momo.spring.blacklist.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.momo.spring.blacklist.domain.BlackList;

public interface BlackListService {
	
	/**블랙리스트 전체조회
	 * 
	 * @return list
	 */
	public abstract ArrayList<BlackList> selectList(); 
	
	

	/** 블랙리스트 등록
	 * @param
	 * @return result
	 */
	public abstract int insertBlackList(BlackList blacklist, HttpServletRequest request);
	
	/**블랙리스트 삭제
	 * @param
	 * @return result
	 */
	public abstract int deleteBlackList(String userId);


	
	
	

}
