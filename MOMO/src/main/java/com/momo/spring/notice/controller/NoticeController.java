package com.momo.spring.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.common.Search;
import com.momo.spring.notice.domain.Notice;
import com.momo.spring.notice.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;

	// 공지사항 목록 보기
	@RequestMapping("nlist.mo")
	public ModelAndView noticeList(ModelAndView mv) {

		ArrayList<Notice> list = nService.selectList();

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("/notice/noticeList");
		} else {
			mv.addObject("msg", "공지사항 목록조회 실패");
			mv.setViewName("common/errorPage");
		}

		return mv;
	}

	// 공지사항 상세보기
	@RequestMapping("ndetail.mo")
	public String noticeDetail(int nId, Model model) {
		nService.nCount(nId);
		Notice notice = nService.selectOne(nId);
		if (notice != null) {
			model.addAttribute("notice", notice);
			return "notice/noticeDetail";
		} else {
			model.addAttribute("msg", "공지사항 상세 조회 실패");
			return "notice/noticeList";
		}
	}

	// 공지사항 등록화면이동
	@RequestMapping("nWrite.mo")
	public String nWriterView() {
		return "notice/noticeWriteView";
	}

	// 공지사항 등록(작성)
	@RequestMapping(value = "ninsert.mo")
	public String noticeInsert(Notice notice, Model model, HttpServletRequest request) {

		int result = 0;
		String path = null;

		result = nService.insertNotice(notice, request);
		if (result > 0) {
			path = "redirect:nlist.mo";
		} else {
			model.addAttribute("msg", "공지사항 등록 실패");
			path = "common/errorPage";
		}
		return path;
	}

	// 공지사항 삭제 메소드
	@RequestMapping("ndelete.mo")
	public String noticedelete(int nId, Model model, HttpServletRequest request, RedirectAttributes rd) {
		Notice notice = nService.selectOne(nId);
		int result = nService.deleteNotice(nId);
		if (result > 0) {
			rd.addFlashAttribute("msg", "공지사항 삭제 성공");
			return "redirect:nlist.mo";
		} else {
			model.addAttribute("msg", "공지사항 삭제 실패");
			return "common/errorPage";
		}

	}
	
	// 공지사항 수정 화면
		@RequestMapping("nupView.mo")
		public String noticeUpdateView(int nId, Model model) {
			model.addAttribute("notice", nService.selectOne(nId));
			return "notice/noticeModify";
		}
		
		// 공지사항 수정
		@RequestMapping(value="nupdate.mo", method=RequestMethod.POST) 
			public String noticeUpdate(Notice notice, Model model, HttpServletRequest request) {
			/*// 새로 업로드된 파일이 있을 경우
		      if (reloadFile != null && !reloadFile.isEmpty()) {
		         // 기존 업로드된 파일이 있을 경우
		         if (notice.getFilePath() != null) {
		            //기존 파일 삭제
		            deleteFile(notice.getFilePath(), request);
		         }
		         // 새로 업로드된 파일 저장
		         String savePath = saveFile(reloadFile, request);
		         
		         // 새로 업로드된 파일이 잘 저장이 되었다면 디비 저장
		         if (savePath != null) {
		            notice.setFilePath(reloadFile.getOriginalFilename());
		         }
		      }*/
		      int result = nService.updateNotice(notice);
		      if (result > 0) {
		         return "redirect:ndetail.mo?nId="+notice.getnId();
		      } else {
		         model.addAttribute("msg", "공지사항 수정 실패");
		         return "redirect:ndetail.mo?nId="+notice.getnId();
		      }
		}
}
