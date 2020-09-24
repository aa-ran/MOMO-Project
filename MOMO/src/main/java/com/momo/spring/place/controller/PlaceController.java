package com.momo.spring.place.controller;

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

import com.momo.spring.common.PlaceSearch;
import com.momo.spring.place.domain.Place;
import com.momo.spring.place.service.PlaceService;

@Controller
public class PlaceController {
	
	@Autowired
	private PlaceService pService;
	
	
	//장소 전체조회
	@RequestMapping("plist.mo")
	public ModelAndView selectPlaceList(ModelAndView mv) {
		ArrayList<Place> list = pService.selectPlaceList();
		if (!list.isEmpty()) {
			mv.addObject("list", list);
			mv.setViewName("place/placeList");
		} else {
			mv.addObject("msg", "대관 장소 조회 실패");
			mv.setViewName("index");
		}

		return mv;
	}
	
	
	//장소 상세 조회
	@RequestMapping("pdetail.mo")
	public String selectOne(int pNo, Model model) {
		Place place = pService.selectOne(pNo);
		if(place != null) {
			model.addAttribute("place", place);
			return "place/placeDetail";
		} else {
			model.addAttribute("msg", "대관 장소 상세 조회 실패");
			return "place/placeList";
		}
	}
	
	// 파일 저장 메소드
	   public String saveFile(MultipartFile file, HttpServletRequest request) {
	      
	      // 파일 저장 경로 설정
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      String savePath = root + "\\puploadFiles";
	      
	      // 저장 폴더 선택
	      File folder = new File(savePath);
	      
	      // 만약 폴더가 없을 경우 자동 생성
	      if (!folder.exists()) {
	         folder.mkdir();
	      }
	      String filePath = folder + "\\" + file.getOriginalFilename();
	      
	      try {
	         file.transferTo(new File(filePath));
	      } catch (IllegalStateException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      return filePath;
	   }
	
	// 장소 등록 페이지
	@RequestMapping("pwrite.mo")
	public String pWriterView() {
		return "place/placeInsert";
	}
	
	
	//장소 등록
	 @RequestMapping(value="pinsert.mo")
	   public String placeInsert(Place place, Model model, 
	         @RequestParam(name="uploadFile", required=false) MultipartFile pFileName
	         ,HttpServletRequest request) {
	      // RequestParam에 required속성은 해당 파라미터가 반드시 필수인지 여부, 기본값은 true
	      // required=true, NULL이면 입력시 400 에러 발생
	      
	      // Multipart 지원 기능 -> 스프링 설정파일에 MultipartResolver 등록
	      // MultipartResolver는 Miltipart 형식으로 된 데이터가 전송된 경우
	      // 해당 데이터를 스프링MVC에서 사용할 수 있도록 변환해주는 기능을 함
	      
	      // 파일을 서버에 저장하는 작업
	      if (!pFileName.getOriginalFilename().equals("")) {
	         String filePath = saveFile(pFileName, request);
	         
	         if (filePath != null) {
	        	 place.setpFilePath(filePath);
	        	 place.setpFileName(pFileName.getOriginalFilename());
	         }
	      }
	      // 데이터를 디비에 저장하는 작업
	      int result = 0;
	      String path = null;
	      
	      result = pService.insertPlace(place, pFileName, request);
	      if (result > 0) {
	         path = "redirect:plist.mo";
	      } else {
	         model.addAttribute("msg", "대관 장소 등록 실패");
	         path = "redirect:plist.mo";
	      }
	      return path;
	   }
	
	
	
	 // 장소 삭제
	 @RequestMapping("pdelete.mo")
	   public String deleteplace(int pNo, Model model, HttpServletRequest request, RedirectAttributes rd) {
		 Place place = pService.selectOne(pNo);
		 int result = pService.deletePlace(pNo);
		 if(result > 0) {
			 rd.addAttribute("msg", "�궘�젣 �꽦怨�");
			 return "redirect:plist.mo";
		 }else {
			 model.addAttribute("msg","�궘�젣 �떎�뙣");
			 return "common/errorPage";
		 }
	   }
	 
	 
	 
	 
	// 파일 삭제 메소드
	   // 공지글 등록 실패 또는 글 수정으로 업로드 파일이 변한 경우
	   // 저장되어 있는 기존 파일 삭제
	   public void deleteFile(String fileName, HttpServletRequest request) {
	      // 파일 저장 경로 설정
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      
	      String savePath = root + "\\puploadFiles";
	      
	      // 삭제할 파일 경로 + 파일명
	      File deleteFile = new File(savePath + "\\" + fileName);
	      // 해당 파일이 존재할 경우 삭제
	      if (deleteFile.exists()) {
	         deleteFile.delete();
	      }
	   }
	 
	 // 대관 장소 수정 페이지
	 @RequestMapping("pupView.mo")
	 public String placeUpdateView(int pNo, Model model) {
		 model.addAttribute("place", pService.selectOne(pNo));
		 return "place/placeModify";
	 }
	
	 
	 
	 
	 // 대관 장소 수정
	 @RequestMapping(value="pupdate.mo", method=RequestMethod.POST)
	public String updatePlace(Place place, Model model,
			HttpServletRequest request, MultipartFile reloadFile) {
		// 새로 업로드된 파일이 있을 경우
	      if (reloadFile != null && !reloadFile.isEmpty()) {
	         //기존 업로드 파일 있을경우
	    	  if(place.getpFilePath() != null) {
	    		  deleteFile(place.getpFilePath(), request);
	    	  }
	    	  
	    	  // 새로 업로드된 파일 저장
	         String savePath = saveFile(reloadFile, request);
	         
	         // 새로 업로드된 파일이 잘 저장이 되었다면 디비 저장
	         if (savePath != null) {
	        	 place.setpFileName(reloadFile.getOriginalFilename());
	        	 place.setpFilePath(savePath);
	         }
	      }
		 
		 int result = pService.updatePlace(place);
	      if (result > 0) {
	         return "redirect:pdetail.mo?pNo="+ place.getpNo();
	      } else {
	         model.addAttribute("msg", "대관 장소 수정 실패");
	         return "common/errorPage";
	      }
	}
	// 장소 검색
		 @RequestMapping("psearch.mo")
		 public String placeSearch(Model model, PlaceSearch pSearch) {
			 System.out.println(pSearch.toString());
			 System.out.println(pSearch.getpPrice());
	/*		 if(pSearch.getpPrice()==null) {
				 pSearch.setpPrice(0);
			 }*/
			 ArrayList<Place> list = pService.searchList(pSearch);
			 if(list != null) {
				 model.addAttribute("list", list);
				 return "place/placeList";
			 } else {
				 return "place/placeList";
			 }
		 }
}
