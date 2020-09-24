package com.momo.spring.member.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.career.domain.Career;
import com.momo.spring.member.domain.Member;

@Repository
public class MemberStoreLogic {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Member> selectList(){
		return (ArrayList)sqlSession.selectList("memberMapper.selectList");
	}
	
	/**
	 * 濡쒓렇�씤
	 * @param mem
	 * @return
	 */
	public Member selectMember(Member mem) {
		Member loginUser 
		= sqlSession.selectOne("memberMapper.selectOne", mem);
		return loginUser;
	}
	
	public Member loginCheck(Member mem) {
		Member loginUser=sqlSession.selectOne("memberMapper.login",mem);
		return loginUser;
	}

	public int checkId(String userId) {
		                                   
		int result = sqlSession.selectOne("memberMapper.checkIdDup", userId);
		return result;
	}

	/**
	 * �쉶�썝媛��엯
	 * @param mem
	 * @return
	 */
	public int insertMember(Member mem) {
		return sqlSession.insert("memberMapper.insertMember",mem);
	}
	
	public Member findId(String email) {
		return sqlSession.selectOne("memberMapper.findId", email);
	}

	public Member findPwd(Member mem) {
		return sqlSession.selectOne("memberMapper.findPwd",mem);
	}

	public int updateMember(Member mem) {
		return sqlSession.update("memberMapper.updateMember",mem);
	}

	public int deleteMember(Member mem) {
		return sqlSession.delete("memberMapper.deleteMember",mem);
	}
	
	public int insertCareer(Career career) {
		return sqlSession.insert("careerMapper.insertCareer",career);
	}
	
	public Member selectJoinMember(String fromId) {
		return sqlSession.selectOne("memberMapper.selectJoinMember",fromId);
	}
}