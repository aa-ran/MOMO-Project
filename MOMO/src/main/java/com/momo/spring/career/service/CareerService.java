package com.momo.spring.career.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.career.domain.Career;
import com.momo.spring.member.domain.Member;

public interface CareerService {
	
	/**
	 * @return list
	 */
	public abstract ArrayList<Career> selectList();

	/**
	 * @param request 
	 * @param cFileName 
	 * @param career 
	 * @param
	 * @return result
	 */
	public abstract int insertCareer(Career career, MultipartFile cFileName, HttpServletRequest request);
	
	/**
	 * 
	 * @param mem
	 * @return
	 */
	public abstract Career selectOne(Member mem);
	
	/**
	 * @param
	 * @return result
	 */
	public abstract int updateCareer(Career career);
	
	/**
	 * @param
	 * @return result
	 */
	public abstract Career deleteCareer();
}
