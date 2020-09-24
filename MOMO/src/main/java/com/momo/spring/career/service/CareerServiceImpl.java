package com.momo.spring.career.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.career.domain.Career;
import com.momo.spring.career.store.CareerStoreLogic;
import com.momo.spring.member.domain.Member;

@Service("cService")
public class CareerServiceImpl implements CareerService{

	@Autowired
	private CareerStoreLogic cStore;
	
	@Override
	public ArrayList<Career> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertCareer(Career career, MultipartFile cFileName, HttpServletRequest request) {
		return cStore.insertCareer(career);
	}

	@Override
	public Career selectOne(Member mem) {
		return cStore.selectOne(mem);
	}

	@Override
	public int updateCareer(Career career) {
		/*career.setAwards(career.getAwards().replace("\n", "<br>"));
		career.setCareer(career.getCareer().replace("\n", "<br>"));
		career.setPortfolio(career.getPortfolio().replace("\n", "<br>"));*/
		return cStore.updateCareer(career);
	}

	@Override
	public Career deleteCareer() {
		// TODO Auto-generated method stub
		return null;
	}

}
