package com.momo.spring.member.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.career.domain.Career;
import com.momo.spring.member.domain.Member;
import com.momo.spring.member.store.MemberStoreLogic;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberStoreLogic mStore;
	
	@Override
	public ArrayList<Member> selectList() {
		return mStore.selectList();
	}

	
	@Override
	public Member findId(String email) {
		return mStore.findId(email);
	}

	@Override
	public Member findPwd(Member mem) {
		return mStore.findPwd(mem);
	}

	
	@Override
	public Member loginMember(Member mem) {
		return mStore.loginCheck(mem); 
	}

	@Override
	public int checkIdDup(String userId) {
		return mStore.checkId(userId);
	}

	/**
	 * �쉶�썝媛��엯
	 */
	@Override
	public int insertMember(Member mem) {
		return mStore.insertMember(mem);
	}

	@Override
	public int updateMember(Member mem) {
		return mStore.updateMember(mem);
	}

	@Override
	public int deleteMember(Member mem) {
		return mStore.deleteMember(mem);
	}

	@Override
	public int insertCareer(Career career, MultipartFile uploadFile, HttpServletRequest request) {
		career.setAwards(career.getAwards().replace("\n","<br>"));
		career.setCareer(career.getCareer().replace("\n", "<br>"));
		career.setPortfolio(career.getPortfolio().replace("\n", "<br>"));
		return mStore.insertCareer(career);
	}

	@Override
	public Member selectMember(Member mem) {
		return mStore.selectMember(mem);
	}
	
	@Override
	public Member selectJoinMember(String fromId) {
		return mStore.selectJoinMember(fromId);
	}

}
