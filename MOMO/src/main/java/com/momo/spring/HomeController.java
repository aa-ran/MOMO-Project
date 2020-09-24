package com.momo.spring;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.momo.spring.common.Search;
import com.momo.spring.me.domain.Me;
import com.momo.spring.me.service.MeService;
import com.momo.spring.member.domain.Member;
import com.momo.spring.place.domain.Place;
import com.momo.spring.place.service.PlaceService;
import com.momo.spring.we.domain.We;
import com.momo.spring.we.service.WeService;

/**
 * Handles requests for the application home page.
 */
@SessionAttributes({"loginUser","list","meList","pList","interest"})
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private WeService wService;
	
	@Autowired
	private MeService meService;
	
	@Autowired
	private PlaceService pService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.mo", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		ArrayList<We> wList = wService.selectHighTeamList();
		ArrayList<Me> meList = meService.selectNewMe();
		ArrayList<Place> pList = pService.selectNewPlace();
		ArrayList<We> interest=null;
		Member loginUser=null;
		
		if(session.getAttribute("loginUser")!=null) {
			loginUser=(Member) session.getAttribute("loginUser");
			interest = wService.selectInterestTeam(loginUser.getInterest());
		}
		
		model.addAttribute("list", wList);
		model.addAttribute("meList", meList);
		model.addAttribute("pList",pList);
		if(loginUser!=null) {
			model.addAttribute("interest",interest);
		}
		
		return "home";
	}
	
	/**
	 * 통합 검색
	 * @param search
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping("exceptSearch.mo")
	public String allSearch(RedirectAttributes redirect, Search search, Model model, @RequestParam(value="page", required=false)Integer page) {
		String encodeSearchValue="";
		try {
			encodeSearchValue=URLEncoder.encode(search.getSearchValue(), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(search.getSearchCategory().equals("we")) {
			return "redirect:weSearch.mo?searchCondition="+search.getSearchCondition()+"&searchValue="+encodeSearchValue;
		}else {
			return "redirect:meSearch.mo?searchCondition="+search.getSearchCondition()+"&searchValue="+encodeSearchValue;
		}
	}

}
