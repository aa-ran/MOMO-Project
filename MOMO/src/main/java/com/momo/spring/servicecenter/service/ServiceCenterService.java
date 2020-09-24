package com.momo.spring.servicecenter.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;


import com.momo.spring.servicecenter.domain.ServiceCenter;

public interface ServiceCenterService {

	//전체조회
	public ArrayList<ServiceCenter> selectServiceList();
	
	//상세조회
	public abstract ServiceCenter selectOne(int sId) ;
	
	//글작성
	public abstract int insertService(ServiceCenter svCenter, HttpServletRequest request);
	
	//삭제
	public abstract int deleteService(int sId);
}
