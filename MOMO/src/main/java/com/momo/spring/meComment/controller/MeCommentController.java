package com.momo.spring.meComment.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.momo.spring.me.domain.Me;
import com.momo.spring.meComment.domain.MeComment;
import com.momo.spring.meComment.service.MeCommentService;
import com.momo.spring.member.domain.Member;

@Controller
public class MeCommentController {

	@Autowired
	private MeCommentService mecService;


	// 댓글 리스트
	@RequestMapping("meclist.mo")
	public void getMecList(HttpServletResponse response, int mId, Model model) throws JsonIOException, IOException {
		ArrayList<MeComment> mecList = mecService.selectMcList(mId);
		
		for (MeComment mec : mecList) {
			mec.setMecContent(URLEncoder.encode(mec.getMecContent(), "utf-8"));
			/*model.addAttribute("mec", mecList);*/
		}
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(mecList, response.getWriter());
		// 기존에 JSONOBject, JSONArray를 이용해서 JSON형태로 만들어줬음
		// 여기선 Gson 라이브러리를 사용하고자 함.
		// reply 객체를 JSON형태로 변환해줘서 data로 보내줘야함.
		// { 'bId' : 1, 'bName' : '제목' }
	}

	// 댓글 작성
	@RequestMapping("mecinsert.mo")
	@ResponseBody
	public String insertComment(MeComment mec, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		String mecWriter = loginUser.getUserId();
		mec.setMecWriter(mecWriter);
		int result = mecService.insertMc(mec);
		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	//  댓글 수정
	@ResponseBody
	@RequestMapping("mecupdate.mo")
	public int updateMc(@RequestParam int mecId, @RequestParam String mecContent, @RequestParam int mId) throws Exception {
		MeComment mec = new MeComment();
		mec.setMecId(mecId);
		mec.setMecContent(mecContent);
		mec.setmId(mId);
		return mecService.updateMc(mec);
	}

	// 댓글 삭제
	@RequestMapping("mecdelete.mo")
	public String deleteMc(int mecId, int mId) {
		int result = mecService.deleteMc(mecId);
		if(result > 0) {
			return "redirect:medetail.mo?mId="+ mId;
		} else {
			return "redirect:medetail.mo?mId="+ mId;
		}
	}
}
