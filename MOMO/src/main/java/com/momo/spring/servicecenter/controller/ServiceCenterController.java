package com.momo.spring.servicecenter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.servicecenter.domain.ServiceCenter;
import com.momo.spring.servicecenter.service.ServiceCenterService;


@Controller
public class ServiceCenterController {
   
   @Autowired
   private ServiceCenterService scService;

   //고객센터목록보기
   @RequestMapping("sclist.mo")
   public ModelAndView selectServiceList(ModelAndView mv) {
	   
	   ArrayList<ServiceCenter> list = scService.selectServiceList();
	   
	   if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("servicecenter/serviceCMain");
		} else {
			mv.addObject("msg", "고객센터 목록보기 실패");
			mv.setViewName("common/errorPage");
		}
	   
      return mv;
   }
   
   public ServiceCenter selectOne() {
      return null;
   }
   
   //고객센터 상세보기
   @RequestMapping("scdetail.mo")
   public String ServiceDetail(int sId, Model model) {
	    ServiceCenter servicecenter = scService.selectOne(sId);
	   if (servicecenter != null) {
			model.addAttribute("servicecenter", servicecenter);
			return "servicecenter/questionDetail";
		} else {
			model.addAttribute("msg", "고객센터 상세 조회 실패");
			return "servicecenter/serviceCMain";
		}
   }
   
   
   //마이페이지-고객센터
   @RequestMapping("svcWriterView.mo")
   public String insertsvCView() {
     return "member/serviceCenter";   
   }
   
   //고객센터글쓰기
   @RequestMapping(value="svcinsert.mo")
   public String insertService(ServiceCenter svCenter, Model model, HttpServletRequest
         request, RedirectAttributes rd) {
      
	  int result=scService.insertService(svCenter, request); 
	  String path =null;
    
      if(result>0) {
    	 rd.addFlashAttribute("msg","고객센터 글 전송이 완료되었습니다.");
         path= "redirect:home.mo";         
      }else {
         model.addAttribute("msg", "고객센터 글쓰기 실패");
         path="common/errorPage";
      }
      return path;
   
   }
   
     //고객센터삭제
   @RequestMapping("scdelete.mo")
     public String deleteService(int sId, Model model, HttpServletRequest request, RedirectAttributes rd ) {
	   ServiceCenter servicecenter = scService.selectOne(sId);
	   int result = scService.deleteService(sId);
	   if (result > 0) {
			rd.addFlashAttribute("msg", "고객센터 삭제 성공");
			return "redirect:sclist.mo";
		} else {
			model.addAttribute("msg", "고객센터  삭제 실패");
			return "common/errorPage";
		}
   }
   
   //고객센터 답장 페이지로 이동
   @RequestMapping("svcReplyView.mo")
   public String svcReplyView(int sId, Model model) {
	   ServiceCenter svc = scService.selectOne(sId);
	   model.addAttribute("svc",svc);
	   return "servicecenter/qanswer";
   }
}