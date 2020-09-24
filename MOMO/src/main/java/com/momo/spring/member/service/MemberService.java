package com.momo.spring.member.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.career.domain.Career;
import com.momo.spring.member.domain.Member;


public interface MemberService {
	
	/**
	 * 멤버전체조회
	 * @return
	 */
	public abstract ArrayList<Member> selectList();

	/**
	 * �쉶�썝 濡쒓렇�씤 �꽌鍮꾩뒪瑜� �쐞�븳 硫붿냼�뱶
	 * @param mem
	 * @return loginUser
	 */
	public Member loginMember(Member mem);

	/**
	 * 아이디 중복 검사
	 * @param id
	 * @return result
	 */
	public int checkIdDup(String userId);
	
	/**
	 * �쉶�썝 媛��엯 �꽌鍮꾩뒪瑜� �쐞�븳 硫붿냼�뱶
	 * @param mem
	 * @return result
	 */
	public int insertMember(Member mem);

	/**
	 * �쉶�썝 �젙蹂� �닔�젙 �꽌鍮꾩뒪瑜� �쐞�븳 硫붿냼�뱶
	 * @param mem
	 * @return result
	 */
	public int updateMember(Member mem);
	
	/**
	 * �쉶�썝 �깉�눜 �꽌鍮꾩뒪瑜� �쐞�븳 硫붿냼�뱶
	 * @param id
	 * @return result
	 */
	public int deleteMember(Member mem);
	
	/**
	 * �씠�젰�꽌 異붽�瑜� �쐞�븳 硫붿냼�뱶
	 * @param career
	 * @param uploadFile
	 * @param request
	 * @return
	 */
	public int insertCareer(Career career, MultipartFile uploadFile, HttpServletRequest request);

	Member findId(String email);

	Member findPwd(Member mem);
	
	/**
	 * 硫ㅻ쾭 寃��깋�쓣 �쐞�븳 硫붿냼�뱶
	 * @param userId
	 * @return
	 */
	public Member selectMember(Member mem);
	
	/**
	 * 팀조인
	 * @param fromId
	 * @return
	 */
	
	public abstract Member selectJoinMember(String fromId);
}
