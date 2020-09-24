package com.momo.spring.servicecenter.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.servicecenter.domain.ServiceCenter;

@Repository("svStore")
public class ServiceCenterStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	
	public ArrayList<ServiceCenter> selectList() {
		return (ArrayList)sqlsession.selectList("serviceCenterMapper.selectList");
	}
	
	//상세보기
	public ServiceCenter selectOne(int sId) {
		return sqlsession.selectOne("serviceCenterMapper.selectOne" , sId);
	}
	
	// 고객센터 글추가
	public int insertService(ServiceCenter svCenter) {
		return sqlsession.insert("serviceCenterMapper.insertsvCenter", svCenter);
	}
	
	// 고객센터 글삭제
	public int deleteService(int sId) {
		return sqlsession.delete("serviceCenterMapper.deleteCenter", sId);
	}
}
