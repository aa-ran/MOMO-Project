package com.momo.spring.career.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.momo.spring.career.domain.Career;
import com.momo.spring.career.service.CareerService;
import com.momo.spring.member.domain.Member;
import com.momo.spring.member.service.MemberService;

@Controller
public class CareerController {

	@Autowired
	private CareerService cService;
	
	@Autowired
	private MemberService mService;

	public ModelAndView careerList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		return null;
	}
	
	//insert view
	@RequestMapping("cInsertView.mo")
	public String careerInsertView() {
		return "member/careerInsert";
	}
	
	//insert
	@RequestMapping(value="cInsert.mo")
	public String careerInsert(Career career, Model model, @RequestParam(name="uploadFile", required=false) MultipartFile cFileName, HttpServletRequest request) {
		
		if(!cFileName.getOriginalFilename().equals("")) {
			String filePath = saveFile(cFileName, request);
			
			if(filePath != null) {
				career.setcFilePath(filePath);
				career.setcFileName(cFileName.getOriginalFilename());
			}
		}
		int result = cService.insertCareer(career, cFileName, request);
		String path = null;
		
		if(result > 0) {
			model.addAttribute("msg","success");
			path =  "redirect:profile.mo?userId="+career.getUserId();
		}else {
			model.addAttribute("msg","fail");
			path =  "common/errorPage";
		}
		return path;
	}
	

	@RequestMapping("cModifyView.mo")
	public ModelAndView careerModifyView(ModelAndView mv, Member mem) {
		Career career = cService.selectOne(mem);
		if (career != null) {
			mv.addObject("career", career);
			mv.setViewName("member/careerModify");
		} else {
			mv.addObject("msg", "fail");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\cuploadFiles";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String filePath = folder + "\\" + file.getOriginalFilename();

		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return filePath;
	}

	
	public void deleteFile(String cFileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root+"\\cuploadFiles";
		File deleteFile = new File(savePath + "\\" + cFileName);
		if(deleteFile.exists()) {
			deleteFile.delete();
		}
	}
	
	/**
	 * @param career
	 * @param model
	 * @param request
	 * @param cFileName
	 * @return
	 */
	@RequestMapping(value = "cModify.mo", method = RequestMethod.POST)
	public String updateCareer(Career career, Model model, HttpServletRequest request, MultipartFile reloadFile) {
		
		
		if (reloadFile != null && !reloadFile.isEmpty()) {
			
			if(career.getcFileName() != null) {
				deleteFile(career.getcFilePath(), request);
			}
			
			String savePath = saveFile(reloadFile, request);
			if (savePath != null) {
				career.setcFileName(reloadFile.getOriginalFilename());
				career.setcFilePath(savePath);
				System.out.println(career.toString());
			}
		}
		
		int result = cService.updateCareer(career);
		if (result > 0) {
			return "redirect:profile.mo?userId=" + career.getUserId();
		} else {
			model.addAttribute("msg", "success");
			return "common/errorPage";
		}
		
		

	}
	
	//경력사항
		@RequestMapping("cDetail.mo")
		public ModelAndView selectProfile(String userId, ModelAndView mv) {
			Member member = new Member();
			member.setUserId(userId);
			Career career = cService.selectOne(member);
			
			if(career != null) {
				mv.addObject("career",career);
				mv.setViewName("member/careerDetail");
			}else {
				mv.addObject("msg","경력사항 등록 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
		}
	
	

}
