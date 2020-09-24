package com.momo.spring.notification.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.momo.spring.notice.store.NoticeStoreLogic;
import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.domain.NotificationPageInfo;
import com.momo.spring.notification.store.NotificationStoreLogic;

@Service("notiService")
public class NotificationServiceImpl implements NotificationService {

	@Autowired
	private NotificationStoreLogic nofiStore;
	

	@Override
	public int deleteNoti(Notification noti) {
		return nofiStore.deleteNoti(noti);
	}

	@Override
	public int getListCount(String userId) {
		return nofiStore.getListCount(userId);
	}

	@Override
	public ArrayList<Notification> selectNotiList(NotificationPageInfo pi) {
		return nofiStore.selectNotiList(pi);
	}

	@Override
	public int insertNoti(Notification noti) {
		return nofiStore.insertNoti(noti);
	}
	
	@Override
	public int insertNotiQna(Notification noti) {
		return nofiStore.insertNotiQna(noti);
	}

	@Override
	public Notification selectNotiOne(int notId) {
		return nofiStore.selectNotiOne(notId);
	}

}
