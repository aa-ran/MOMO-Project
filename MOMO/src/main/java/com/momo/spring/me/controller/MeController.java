package com.momo.spring.me.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.common.MePagination;
import com.momo.spring.common.Search;
import com.momo.spring.me.domain.Me;
import com.momo.spring.me.domain.MePageInfo;
import com.momo.spring.me.service.MeService;

@Controller
public class MeController {

	@Autowired
	private MeService meService;

	// 나랑일할래? 목록 보기
	@RequestMapping("melist.mo")
	public ModelAndView meList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {

			mv.addObject("list", list);
			mv.setViewName("me/meList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	

	// 나랑일할래? -스터디 목록 보기
	@RequestMapping("meStudylist.mo")
	public ModelAndView meStudyList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("me/meStudyList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;

	}

	// 나랑일할래? - 공모전 목록 보기
	@RequestMapping("meContestlist.mo")
	public ModelAndView meContestList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("me/meContestList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;

	}

	// 나랑일할래?- 여가 목록 보기
	@RequestMapping("meLeisurelist.mo")
	public ModelAndView meLeisureList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("me/meLeisureList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;

	}

	// 나랑일할래?- 취미 목록 보기
	@RequestMapping("meHobbylist.mo")
	public ModelAndView meHobbyList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("me/meHobbyList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;

	}

	// 나랑일할래?- 기타 목록 보기
	@RequestMapping("meEtclist.mo")
	public ModelAndView meEtcList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {

		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allListCount();
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeList(pi);

		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("me/meEtcList");
		} else {
			mv.addObject("msg", "me 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;

	}

	// 나랑일할래? 상세보기
	@RequestMapping("medetail.mo")
	public String meDetail(int mId, Model model) {
		meService.addReadCount(mId);
		Me me = meService.selectOne(mId);
		ArrayList<Me> meList = meService.selectNewMe();
		int studyCount = meService.allCategoryListCount("스터디");
		int contestCount = meService.allCategoryListCount("공모전");
		int sportCount = meService.allCategoryListCount("여가");
		int hobbyCount = meService.allCategoryListCount("취미");
		int etcCount = meService.allCategoryListCount("기타");

		if (me != null) {
			model.addAttribute("studyCount", studyCount);
			model.addAttribute("contestCount", contestCount);
			model.addAttribute("sportCount", sportCount);
			model.addAttribute("hobbyCount", hobbyCount);
			model.addAttribute("etcCount", etcCount);
			model.addAttribute("me", me);
			model.addAttribute("meList", meList);
			return "me/meDetail";
		} else {
			model.addAttribute("msg", "me 상세조회 실패");
			return "common/errorPage";
		}
	}

	// 나랑일할래? 등록화면이동
	@RequestMapping("meWriterView.mo")
	public String meWriterView() {
		return "me/meInsert";
	}

	// 나랑일할래? 등록하기
	@RequestMapping("meinsert.mo")
	public String meInsert(Me me, Model model, HttpServletRequest request, RedirectAttributes rd) {
		int result = 0;
		String path = null;

		result = meService.insertMe(me, request);
		if (result > 0) {
			rd.addFlashAttribute("msg", "나랑일할래? 게시글 작성 완료");
			path = "redirect:melist.mo";
		} else {
			model.addAttribute("msg", "me등록 실패");
			path = "commom/errorPage";
		}
		return path;
	}

	// 나랑일할래? 수정화면 이동
	@RequestMapping("meupView.mo")
	public String meUpdateView(int mId, Model model) {
		model.addAttribute("me", meService.selectOne(mId));
		return "me/meModify";
	}

	@RequestMapping(value = "meupdate.mo", method = RequestMethod.POST)
	public String meUpdate(Me me, Model model, HttpServletRequest request) {
		int result = meService.updateMe(me);
		if (result > 0) {
			return "redirect:medetail.mo?mId=" + me.getmId();
		} else {
			model.addAttribute("msg", "me 수정 실패");
			return "redirect:medetail.mo?mId=" + me.getmId();
		}
	}

	// 나랑일할래 삭제
	@RequestMapping("medelete.mo")
	public String medelete(int mId, Model model, HttpServletRequest request, RedirectAttributes rd) {
		Me me = meService.selectOne(mId);
		int result = meService.deleteMe(mId);
		if (result > 0) {
			rd.addFlashAttribute("msg", "me 삭제 성공");
			return "redirect:melist.mo";
		} else {
			model.addAttribute("msg", "me 삭제 실패");
			return "common/errorPage";
		}
	}

	/**
	 * 
	 * @param search
	 * @param model
	 * @return
	 */
	@RequestMapping("meSearch.mo")
	public String meSearch(Search search, Model model, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = meService.allSearchListCount(search);
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> searchList = meService.searchMeList(pi, search);

		model.addAttribute("pi", pi); // 페이지 정보
		model.addAttribute("list", searchList); // 결과 리스트
		model.addAttribute("search", search); // 검색어
		return "me/meList";
	}

	// 우리팀할래? 카테고리별 보기
	@RequestMapping("meCategoryList.mo")
	public ModelAndView meCategoryList(ModelAndView mv, int category,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기

		// 전체 게시글 수 세기
		String mCategory = "";
		switch (category) {
		case 1:
			mCategory = "스터디";
			break;
		case 2:
			mCategory = "공모전";
			break;
		case 3:
			mCategory = "스포츠";
			break;
		case 4:
			mCategory = "취미";
			break;
		case 5:
			mCategory = "기타";
			break;
		}

		int listCount = meService.allCategoryListCount(mCategory);
		MePageInfo pi = MePagination.getPageInfo(currentPage, listCount);
		ArrayList<Me> list = meService.selectMeCategoryList(pi, mCategory);

		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("me/meList");

		return mv;
	}

}
