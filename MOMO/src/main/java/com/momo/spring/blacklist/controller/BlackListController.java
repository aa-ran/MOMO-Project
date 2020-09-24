package com.momo.spring.blacklist.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.blacklist.domain.BlackList;
import com.momo.spring.blacklist.service.BlackListService;

@Controller
public class BlackListController {
   
   @Autowired
   private BlackListService bService;

   @RequestMapping("blist.mo")
   public ModelAndView selectList(ModelAndView mv) {
      ArrayList<BlackList> list = bService.selectList();
      
      
      if (!list.isEmpty()) {
         mv.addObject("list", list);
         mv.setViewName("/blacklist/blackMember");
      } else {
         mv.addObject("msg", "블랙리스트조회실패");
         mv.setViewName("common/errorPage");
      }
      return mv;
   }
   
   //블랙리스트 추가(작성)
   @RequestMapping("binsert.mo")
   public String blacklist(BlackList blacklist, Model model, HttpServletRequest request) {
      
      int result = 0;
      String path = null;
      
       result = bService.insertBlackList(blacklist, request);
       if (result > 0) {
          model.addAttribute("msg", "블랙리스트 등록 실패");
         path = "common/errorPage";
         
      } else {
         path = "redirect:mlist.mo";
      }
      return path;
   }
   
   //블랙리스트 삭제
   @RequestMapping("bdelete.mo")
   public String blacklistdelete(String userId, Model model, HttpServletRequest request, RedirectAttributes rd) {
      int result = bService.deleteBlackList(userId);
      
      if (result < 0) {
         rd.addFlashAttribute("msg", "블랙리스트 삭제 성공");
         return "redirect:blist.mo";
      } else {
         model.addAttribute("msg", "블랙리스트 삭제 실패");
         return "common/errorPage";
      }
   }
   
   
}