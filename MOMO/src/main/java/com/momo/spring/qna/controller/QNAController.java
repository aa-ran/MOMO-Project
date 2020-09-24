package com.momo.spring.qna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.service.NotificationService;
import com.momo.spring.qna.domain.Qna;
import com.momo.spring.qna.service.QNAService;

@Controller
public class QNAController {
	
	@Autowired
	private QNAService qnaService;
	
	@Autowired
	private NotificationService notiService;
	
	/**
	 * qna 삽입
	 * @param qna
	 * @param noti
	 * @param model
	 * @return
	 */
	@RequestMapping(value="insertQnA.mo", method=RequestMethod.POST)
	public String insertQna(int mId, Qna qna, Notification noti, Model model, RedirectAttributes rd) {
		int resultQ = qnaService.insertQna(qna); // qna insert
		
		if (resultQ > 0) {
			rd.addFlashAttribute("msg", "질문이 성공적으로 보내졌습니다.");
			
			// 알람 insert
			noti.setQnaId(lastQnaId()); //마지막 QnaId를 받아와서 noti에 넣어줌
			int resultNotiQna = notiService.insertNotiQna(noti);
			
			if(resultNotiQna > 0){
			}else {
				rd.addFlashAttribute("msg","QNA 알람 등록 실패");
			}
			return "redirect:medetail.mo?mId=" + mId;
		} else {
			model.addAttribute("msg", "질문 전송이 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	//마지막으로 생성한 QNA 번호 리턴하는 메소드
	public int lastQnaId() {
		int lastQnaId = qnaService.selectLastQnaId();
		return lastQnaId;
	}
	
	/**
	 * QNA 답변 저장하는 메소드
	 * @param qna
	 * @param userId
	 * @param notContent
	 * @param model
	 * @return
	 */
	@RequestMapping("qnaUpdate.mo")
	public String updateQna(Qna qna, @RequestParam(value="qUserId") String userId, String notContent, Model model ) {
		int resultQ = qnaService.updateQna(qna); //QnA 답변 저장
		
		
		Notification noti = new Notification();
		noti.setQnaId(lastQnaId());
		noti.setUserId(userId);
		noti.setNotContent(notContent);
		int resultN = notiService.insertNotiQna(noti); //알람 저장

		if (resultQ > 0 && resultN > 0) {
			model.addAttribute("msg", "QNA 답장이 완료되었습니다.");
			return "redirect:notiList.mo?userId="+qna.getaUserId(); //
		} else {
			model.addAttribute("msg", "QNA 업데이트 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("returnQnaDetail.mo")
	public String returnQnaDetail(Model model, int qnaId, int notId) {
		Notification noti = notiService.selectNotiOne(notId);
		Qna qna = qnaService.selectQnaOne(qnaId);
		
		if(qna != null) {
			model.addAttribute("noti",noti);
			model.addAttribute("qna",qna);
			return "member/returnQnA";
		}else {
			model.addAttribute("msg","QnA답변을 확인할 수 없습니다.");
			return "common/errorPage";
		}
	}
	
	

}
