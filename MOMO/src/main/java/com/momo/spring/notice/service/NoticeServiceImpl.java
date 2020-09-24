package com.momo.spring.notice.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.momo.spring.common.Search;
import com.momo.spring.notice.domain.Notice;
import com.momo.spring.notice.store.NoticeStoreLogic;

@Service("nService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeStoreLogic nStore;

	@Override
	public ArrayList<Notice> selectList() {
		return nStore.selectList();
	}

	@Override
	public int insertNotice(Notice notice, HttpServletRequest request) {
		notice.setnContent(notice.getnContent().replace("\n", "<br>"));
		return nStore.insertNotice(notice);
	}

	
	public Notice selectOne(int nId) {
		return nStore.selectOne(nId);
	}

	@Override
	public int updateNotice(Notice notice) {
		notice.setnContent(notice.getnContent().replace("\n", "<br>"));
		return nStore.updateNotice(notice);
	}

	@Override
	public int deleteNotice(int nId) {
		return nStore.deleteNotice(nId);
	}
	
	@Override
	public int nCount(int nId) {
		return nStore.nCount(nId);
	}

	
	public ArrayList<Notice> searchList(Search search) {
		// TODO Auto-generated method stub
		return null;
	}


	

}
