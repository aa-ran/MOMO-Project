package com.momo.spring.placeReservation.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.momo.spring.common.Pagination;
import com.momo.spring.placeReservation.domain.PageInfo;
import com.momo.spring.placeReservation.domain.PlaceReservation;
import com.momo.spring.placeReservation.service.PlaceReservationService;

@Controller
public class PlaceReservationController {
	
	@Autowired
	private PlaceReservationService prService;
	


	/**
	 * 대관 내역 조회
	 * @param mv
	 * @param userId
	 * @return
	 */
	@RequestMapping(value="prList.mo")
	public ModelAndView selectPrList(ModelAndView mv, 
			@RequestParam(value="userId", required = false) String userId, 
			@RequestParam(value="page", required = false) Integer page) {
		
		/*Place place = pService.selectOne(pNo);//장소 사진 가져오기 */
		
		int currentPage = (page != null) ? page : 1;
		int listCount = prService.getListCount(userId);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,userId);
		ArrayList<PlaceReservation> prList = prService.selectPrList(pi);
		
		if(!prList.isEmpty()) {
			mv.addObject("pi",pi);
			mv.addObject("prList",prList);
			mv.setViewName("member/placeReservation");
		}else {
			mv.addObject("msg","예약 조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	public PlaceReservation insertPr() {
		return null;
	}
	
	public int updatePr() {
		return 0;
	}
	
	public int deletePr() {
		return 0;
	}
}
