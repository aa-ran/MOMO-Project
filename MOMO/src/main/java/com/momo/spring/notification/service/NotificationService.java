package com.momo.spring.notification.service;

import java.util.ArrayList;

import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.domain.NotificationPageInfo;

public interface NotificationService {

	public int insertNoti(Notification noti);
	
	public int insertNotiQna(Notification noti);
	
	public int deleteNoti(Notification noti);

	public abstract int getListCount(String userId);

	public abstract ArrayList<Notification> selectNotiList(NotificationPageInfo pi);

	public Notification selectNotiOne(int notId);
}
