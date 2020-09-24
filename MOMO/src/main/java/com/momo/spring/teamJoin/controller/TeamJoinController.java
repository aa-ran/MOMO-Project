package com.momo.spring.teamJoin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.member.domain.Member;
import com.momo.spring.member.service.MemberService;
import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.service.NotificationService;
import com.momo.spring.teamJoin.domain.TeamJoin;
import com.momo.spring.teamJoin.service.TeamJoinService;

@Controller
public class TeamJoinController {

	@Autowired
	private TeamJoinService joinService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private NotificationService notiService;

	public ArrayList<TeamJoin> selectJoinList() {
		return null;
	}

	public TeamJoin selectOne() {
		return null;
	}
	/**
	 * 팀 가입 
	 * @param teamJoin
	 * @param model
	 * @return
	 */
	@RequestMapping("teamJoin.mo")
	public String insertJoin(TeamJoin teamJoin, @RequestParam(value="toId") String userId, String notContent, Model model, RedirectAttributes rd) {
		ArrayList<TeamJoin> teamList = joinService.selectJoinList(teamJoin);
		
		//팀 가입되어있는지 확인
		TeamJoin team = joinService.selectOne(teamJoin);
		if(team != null) {
			rd.addFlashAttribute("msg","이미 팀 가입이 되어있습니다.");
			return "redirect:wedetail.mo?wId="+teamJoin.gettId();
		}
		
		Notification noti = new Notification(); 
		noti.setUserId(userId);
		noti.setNotContent(notContent);
		
		
		
		int result = joinService.insertJoin(teamJoin);
		int resultN = notiService.insertNoti(noti);
		
		if (result > 0 && resultN > 0) {
			rd.addFlashAttribute("team", teamList);
			rd.addFlashAttribute("msg","팀 가입이 완료 되었습니다.");
			return "redirect:wedetail.mo?wId="+teamJoin.gettId();
		} else {
			rd.addFlashAttribute("msg", "팀에 들어갈 수 없습니다.");
			return "redirect:wedetail.mo?wId="+teamJoin.gettId();
		}
	}

	
	//팀 가입 되어있는지 확인하는 메소드
	
	public int updateJoin() {
		return 0;

	}
	/**
	 * 탈퇴하기
	 * @param fromId
	 * @param model
	 * @return
	 */
	@RequestMapping("teamOut.mo")
	public String deleteJoin(TeamJoin teamJoin, Notification noti , Model model, RedirectAttributes rd) {
		int result = joinService.deleteJoin(teamJoin);
		int resultN = notiService.insertNoti(noti);
		
		if(result > 0 && resultN > 0) {
			rd.addFlashAttribute("msg","팀에서 탈퇴했습니다.");
			return "redirect:wedetail.mo?wId="+teamJoin.gettId();
		}else {
			model.addAttribute("msg","팀 탈퇴 실패");
			return "redirect:wedetail.mo?wId="+teamJoin.gettId();
		}
	}
	
	/**
	 * 팀원 정보 보기
	 * @param fromId
	 * @return
	 */
	@RequestMapping("selectJoinMember.mo")
	public ModelAndView selectJoinMember(String fromId, ModelAndView mv) {
		Member mem = mService.selectJoinMember(fromId);
		
		if(mem != null) {
			mv.addObject("member",mem);
			mv.setViewName("we/weJoinMemberProfile");
		}else {
			mv.addObject("msg","팀원 정보를 불러올 수 없습니다.");
			mv.setViewName("home");
		}
		return mv;
	}
}
