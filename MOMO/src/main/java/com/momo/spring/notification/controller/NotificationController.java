package com.momo.spring.notification.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.service.NotificationService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.momo.spring.common.NotiPagiNation;
import com.momo.spring.common.Pagination;
import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.domain.NotificationPageInfo;
import com.momo.spring.notification.service.NotificationService;
import com.momo.spring.qna.domain.Qna;
import com.momo.spring.qna.service.QNAService;

@Controller
public class NotificationController {
	
	@Autowired
	private NotificationService notiService;
	
	@Autowired
	private QNAService qnaService;
	
	/**
	 * 알람 리스트 출력
	 * @param mv
	 * @param userId
	 * @param page
	 * @return
	 */
	@RequestMapping("notiList.mo")
	public ModelAndView selectNotiList(ModelAndView mv, String userId, @RequestParam(value="page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int listCount = notiService.getListCount(userId);
		NotificationPageInfo pi = NotiPagiNation.getPageInfo(currentPage, listCount, userId);
		ArrayList<Notification> notiList = notiService.selectNotiList(pi);
		
		if(!notiList.isEmpty()) {
			mv.addObject("pi",pi);
			mv.addObject("notiList",notiList);
			mv.setViewName("member/notiList");
		}else {
			mv.addObject("notiMsg","알람 내역이 없습니다.");
			mv.setViewName("member/notiList");
		}
		return mv;
	}
	
	/**
	 * 알람 상세페이지 보기
	 * @param notId
	 * @return
	 */
	@RequestMapping("notiDetail.mo")
	public String notiDetail(int notId, Model model, String userId) {
		Notification noti = notiService.selectNotiOne(notId);
		
		if(noti != null) {
			model.addAttribute("noti",noti);
			return "member/notiDetail";
		}else {
			model.addAttribute("msg","알람 내역을 확인할 수 없습니다.");
			return "common/errorPage";
		}
	}
	
	/**
	 * 알람 삽입
	 * @return
	 */
	@RequestMapping("insertNoti.mo")
	public String insertNoti(Notification noti, Model model) {
		int result = notiService.insertNoti(noti);
		
		if(result == 0) {
			model.addAttribute("msg","전송실패");
			return "common/errorPage";
		}
		return "home";
	}
	
	@RequestMapping("deleteNoti.mo")
	public String deleteNoti(Notification noti,Model model) {
		int result = notiService.deleteNoti(noti);
		
		if(result > 0) {
			model.addAttribute("msg","알람 삭제가 완료되었습니다.");
			return "member/notiList";
		}else {
			model.addAttribute("msg", "알람 삭제 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	//QnA답장 페이지로 이동 -> QnA 답장 처리는 QnA Controller에서 
	@RequestMapping("notiQnaReplyView.mo")
	public String notiQnaReplyView(int notId, int qnaId, Model model) {
		Notification noti = notiService.selectNotiOne(notId);
		Qna qna = qnaService.selectQnaOne(qnaId);
		
		model.addAttribute("qna",qna);
		model.addAttribute("noti",noti);
		return "member/notiQnaReply";
	}
	
}
