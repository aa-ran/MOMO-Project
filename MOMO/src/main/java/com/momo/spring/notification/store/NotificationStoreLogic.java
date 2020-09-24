package com.momo.spring.notification.store;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.notification.domain.Notification;
import com.momo.spring.notification.domain.NotificationPageInfo;

@Repository("notiStore")
public class NotificationStoreLogic {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Notification> selectNotiList(NotificationPageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("notificationMapper.selectNotiList",pi,rowBounds);
	}

	
	public int insertNoti(Notification noti) {
		return sqlSession.insert("notificationMapper.insertNoti",noti);
	}

	public int insertNotiQna(Notification noti) {
		return sqlSession.insert("notificationMapper.insertNotiQna",noti);
	}
	
	public int deleteNoti(Notification noti) {
		return sqlSession.delete("notificationMapper.deleteNoti",noti);
	}


	public int getListCount(String userId) {
		return sqlSession.selectOne("notificationMapper.getListCount",userId);
	}

	public Notification selectNotiOne(int notId) {
		return sqlSession.selectOne("notificationMapper.selectNotiOnee",notId);
	}
}
