package com.momo.spring.career.store;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.career.domain.Career;
import com.momo.spring.member.domain.Member;

@Repository("cStore")
public class CareerStoreLogic {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Career selectList() {
		return null;
	}
	
	public Career selectOne(Member mem) {
		return sqlSession.selectOne("careerMapper.selectCareer",mem);
	}
	
	public int insertCareer(Career career) {
		return sqlSession.insert("careerMapper.insertCareer",career);
	}
	
	public int updateCareer(Career career) {
		return sqlSession.update("careerMapper.updateCareer",career);
	}
	
	public int deleteCareer() {
		return 0;
	}
	
}
