package com.momo.spring.servicecenter.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.momo.spring.servicecenter.domain.ServiceCenter;
import com.momo.spring.servicecenter.store.ServiceCenterStoreLogic;

@Service("svcService")
public class ServiceCenterServiceImpl implements ServiceCenterService {
	
	@Autowired
	private ServiceCenterStoreLogic scStore;

	@Override
	public ArrayList<ServiceCenter> selectServiceList() {
		return scStore.selectList();
	}

	@Override
	public ServiceCenter selectOne(int sId) {
		return scStore.selectOne(sId);
	}

	@Override
	public int deleteService(int sId) {
		return scStore.deleteService(sId);
	}

	@Override
	public int insertService(ServiceCenter svCenter, HttpServletRequest request) {
		svCenter.setsContent(svCenter.getsContent().replace("\n","<br>"));
		return scStore.insertService(svCenter);
	}



}
