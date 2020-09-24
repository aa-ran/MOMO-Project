package com.momo.spring.we.controller;

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

import com.momo.spring.career.domain.Career;
import com.momo.spring.common.Search;
import com.momo.spring.common.WePagination;
import com.momo.spring.me.domain.Me;
import com.momo.spring.member.domain.Member;
import com.momo.spring.place.domain.Place;
import com.momo.spring.teamJoin.domain.TeamJoin;
import com.momo.spring.teamJoin.service.TeamJoinService;
import com.momo.spring.we.domain.We;
import com.momo.spring.we.domain.WePageInfo;
import com.momo.spring.we.service.WeService;

@Controller
public class WeController {
	@Autowired
	private WeService wService;

	@Autowired
	private TeamJoinService joinService;

	// 우리팀할래? 목록보기
	@RequestMapping("welist.mo")
	public ModelAndView weList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = wService.allListCount();

		int studyCount = wService.allCategoryListCount("스터디");
		int contestCount = wService.allCategoryListCount("공모전");
		int sportCount = wService.allCategoryListCount("스포츠");
		int hobbyCount = wService.allCategoryListCount("취미");
		int etcCount = wService.allCategoryListCount("기타");
		WePageInfo pi = WePagination.getPageInfo(currentPage, listCount);
		ArrayList<We> list = wService.selectWeList(pi);
		ArrayList<We> hList = wService.selectHighTeamList();

		if (!list.isEmpty()) {
			mv.addObject("studyCount", studyCount);
			mv.addObject("contestCount", contestCount);
			mv.addObject("sportCount", sportCount);
			mv.addObject("hobbyCount", hobbyCount);
			mv.addObject("etcCount", etcCount);
			mv.addObject("hList", hList);
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("we/weList");
		} else {
			mv.addObject("msg", "we 목록조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	// 우리팀할래? 게시글 쓰기 Form
	@RequestMapping("weInsertForm.mo")
	public String weInsertView() {
		return "we/weInsert";
	}

	// 우리팀할래? 게시글 쓰기
	@RequestMapping(value = "weInsert.mo", method = RequestMethod.POST)
	public String insertMember(We we, int teamMember,
			@RequestParam(name = "uploadFile", required = false) MultipartFile uploadFile,
			Model model, HttpServletRequest request, RedirectAttributes rd) {

		we.setTeamMember((int) teamMember);

		if (!uploadFile.getOriginalFilename().equals("")) {
			String filePath = saveFile(uploadFile, request);

			if (filePath != null) {
				we.setwFilePath(filePath);
				we.setwFileName(uploadFile.getOriginalFilename());
			}
		}

		int result = wService.insertWe(we);
		
		if (result > 0) {
			rd.addFlashAttribute("msg","게시글 작성 완료");
		} else {
			rd.addFlashAttribute("msgErr","게시글 작성 완료");
		}
		
		return "redirect:welist.mo";
	}

	// 파일 저장
	public String saveFile(MultipartFile file, HttpServletRequest request) {

		// 占쎈솁占쎌뵬 占쏙옙占쎌삢 野껋럥以� 占쎄퐬占쎌젟
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root: " + root);
		String savePath = root + "\\wuploadFiles";

		// 占쏙옙占쎌삢 占쎈쨨占쎈쐭 占쎄퐨占쎄문
		File folder = new File(savePath);

		// 筌띾슣鍮� 占쎈쨨占쎈쐭揶쏉옙 占쎈씨占쎌뱽 野껋럩�뒭 占쎌쁽占쎈짗 占쎄문占쎄쉐
		if (!folder.exists()) {
			folder.mkdir();
		}

		// 占쎈솁占쎌뵬 野껋럥以덄몴占� 癰귣똻肉т빳占�
		String filePath = folder + "\\" + file.getOriginalFilename();

		try {
			// 占쎈솁占쎌뵬 占쏙옙占쎌삢
			file.transferTo(new File(filePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return filePath;
	}

	// we게시글 자세히보기
	@RequestMapping("wedetail.mo")
	public ModelAndView boardDetail(int wId, ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		We we = wService.selectOne(wId); // 게시글 자세히 보기
		wService.countPlus(wId); // 조회수 증가
		ArrayList<TeamJoin> joinList = joinService.selectJoinList(wId); // 팀원 정보 가져오기
		int joinCount = joinService.joinCount(wId); // 팀원 수 가져오기
		
		int studyCount = wService.allCategoryListCount("스터디");
		int contestCount = wService.allCategoryListCount("공모전");
		int sportCount = wService.allCategoryListCount("스포츠");
		int hobbyCount = wService.allCategoryListCount("취미");
		int etcCount = wService.allCategoryListCount("기타");
		
		ArrayList<We> hList = wService.selectHighTeamList();

		if (we != null) {
			// 메소드 체이닝 방식 (이어서 쓰는 방식)
			mv.addObject("we", we).addObject("currentPage", currentPage).setViewName("we/weDetail");
			if (joinList != null) {
				mv.addObject("studyCount", studyCount);
				mv.addObject("contestCount", contestCount);
				mv.addObject("sportCount", sportCount);
				mv.addObject("hobbyCount", hobbyCount);
				mv.addObject("etcCount", etcCount);
				mv.addObject("join", joinList);
				mv.addObject("joinCount", joinCount);
				mv.addObject("hList",hList);
			}
		} else {
			mv.addObject("msg", "게시글 상세 조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping("weUpdateView.mo")
	public ModelAndView boardUpdateView(int wId, ModelAndView mv) {
		We we = wService.selectOne(wId);
		if (we != null) {
			mv.addObject("we", we);
			mv.setViewName("we/weModify");
		} else {
			mv.addObject("msg", "수정 페이지 불러오기 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * we게시글 업데이트
	 * 
	 * @param we
	 * @param model
	 * @param request
	 * @param reNameFileName
	 * @return
	 */
	@RequestMapping(value = "weUpdate.mo", method = RequestMethod.POST)
	public String weUpdate(We we, Model model, HttpServletRequest request, MultipartFile reNameFileName) {

		// 새로 수정한 파일이 null이 아니고 이름이 있을때
		if (reNameFileName != null && !reNameFileName.isEmpty()) {
			if (we.getwFileName() != null) {
				// 원래 파일이 있다면
				deleteFile(we.getwFileName(), request); // 원래 파일 삭제
			}
			String savePath = saveFile(reNameFileName, request); // 새 파일 저장

			if (savePath != null) {
				we.setwFilePath(savePath);
				we.setwFileName(reNameFileName.getOriginalFilename());
			}
		}

		int result = wService.updateWe(we);
		if (result > 0) {
			return "redirect:welist.mo";
		} else {
			model.addAttribute("msg", "게시글 수정 실패");
			return "common/errorPage";
		}
	}

	// DB에 있는 파일 삭제하는 메소드
	public void deleteFile(String originalFileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\wuploadFiles";
		File deleteFile = new File(savePath + "\\" + originalFileName);
		if (deleteFile.exists()) {
			deleteFile.delete();
		}
	}

	@RequestMapping("weDelete.mo")
	public String weDelete(Model model, int wId, HttpServletRequest request, RedirectAttributes rd) {
		// 파일을 지우기 위해 wId를 통해 게시글 조회
		We we = wService.selectOne(wId);

		// DB에서 삭제
		int result = wService.deleteWe(wId);

		if (result > 0) {
			if (we.getwFileName() != null) {
				String fileName = we.getwFileName();
				deleteFile(fileName, request);
			}
			rd.addFlashAttribute("msg", "게시글 삭제가 완료되었습니다.");
			return "redirect:welist.mo";
		} else {
			model.addAttribute("msg", "게시글 삭제 실패했습니다.");
			return "common/errorPage";
		}
	}

	/**
	 * 우리팀할래? 검색하기
	 * 
	 * @param search
	 * @param model
	 * @return
	 */
	@RequestMapping("weSearch.mo")
	public String noticeSearch(Search search, Model model,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		int listCount = wService.allSearchListCount(search);
		WePageInfo pi = WePagination.getPageInfo(currentPage, listCount);
		ArrayList<We> searchList = wService.searchWeList(pi, search);

		int studyCount = wService.allCategoryListCount("스터디");
		int contestCount = wService.allCategoryListCount("공모전");
		int sportCount = wService.allCategoryListCount("스포츠");
		int hobbyCount = wService.allCategoryListCount("취미");
		int etcCount = wService.allCategoryListCount("기타");

		model.addAttribute("studyCount", studyCount);
		model.addAttribute("contestCount", contestCount);
		model.addAttribute("sportCount", sportCount);
		model.addAttribute("hobbyCount", hobbyCount);
		model.addAttribute("etcCount", etcCount);
		model.addAttribute("pi", pi); // 페이지 정보
		model.addAttribute("list", searchList); // 결과 리스트
		model.addAttribute("search", search); // 검색어
		return "we/weList";
	}

	/**
	 * 우리팀할래? 카테고리별 보기
	 * 
	 * @param mv
	 * @param category
	 * @param page
	 * @return
	 */
	@RequestMapping("weCategoryList.mo")
	public ModelAndView weList(ModelAndView mv, int category,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		// 전체 게시글 수 세기
		String wCategory = "";
		switch (category) {
		case 1:
			wCategory = "스터디";
			break;
		case 2:
			wCategory = "공모전";
			break;
		case 3:
			wCategory = "스포츠";
			break;
		case 4:
			wCategory = "취미";
			break;
		case 5:
			wCategory = "기타";
			break;
		}
		int listCount = wService.allCategoryListCount(wCategory);
		WePageInfo pi = WePagination.getPageInfo(currentPage, listCount);
		ArrayList<We> list = wService.searchWeCategoryList(pi, wCategory);

		int studyCount = wService.allCategoryListCount("스터디");
		int contestCount = wService.allCategoryListCount("공모전");
		int sportCount = wService.allCategoryListCount("스포츠");
		int hobbyCount = wService.allCategoryListCount("취미");
		int etcCount = wService.allCategoryListCount("기타");

		mv.addObject("studyCount", studyCount);
		mv.addObject("contestCount", contestCount);
		mv.addObject("sportCount", sportCount);
		mv.addObject("hobbyCount", hobbyCount);
		mv.addObject("etcCount", etcCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("we/weList");

		return mv;
	}

	// 기대되는 팀 리스트
	@RequestMapping(value = "/team.mo", method = RequestMethod.GET)
	public ModelAndView highTeamList(ModelAndView mv) {
		ArrayList<We> wList = wService.selectHighTeamList();

		if (!wList.isEmpty()) {
			mv.addObject("list", wList);
			mv.setViewName("home");
		} else {
			mv.addObject("msg", "기대되는 팀 리스트 조회 실패했습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

}
