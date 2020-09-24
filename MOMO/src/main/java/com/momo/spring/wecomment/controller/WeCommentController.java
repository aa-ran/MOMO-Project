package com.momo.spring.wecomment.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.momo.spring.member.domain.Member;
import com.momo.spring.wecomment.domain.WeComment;
import com.momo.spring.wecomment.service.WeCommentService;

@Controller
public class WeCommentController {
	@Autowired
	private WeCommentService wcService;
	
	@RequestMapping("weclist.mo")
	public void getwecList(HttpServletResponse response, int wId) throws JsonIOException, IOException {
		ArrayList<WeComment> wecList = wcService.selectWcList(wId);
		
		for (WeComment wec : wecList) {
			wec.setWcContent(URLEncoder.encode(wec.getWcContent(), "utf-8"));
		}
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(wecList, response.getWriter());
		// 기존에 JSONOBject, JSONArray를 이용해서 JSON형태로 만들어줬음
		// 여기선 Gson 라이브러리를 사용하고자 함.
		// reply 객체를 JSON형태로 변환해줘서 data로 보내줘야함.
		// { 'bId' : 1, 'bName' : '제목' }
	}

	// 댓글 작성
	@RequestMapping("wecinsert.mo")
	@ResponseBody
	public String insertComment(WeComment wec, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		String wecWriter = loginUser.getUserId();
		wec.setWcWriter(wecWriter);
		int result = wcService.insertWc(wec);
		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	public int updateMc() {
		return 0;
	}

	@RequestMapping("wecdelete.mo")
	public String deleteWc(int wecId, int wId) {
		int result = wcService.deleteWc(wecId);
		if(result > 0) {
			return "redirect:wedetail.mo?wId="+ wId;
		} else {
			return "redirect:wedetail.mo?wId="+ wId;
		}
	}

}
