package com.momo.spring.message.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.momo.spring.message.domain.Message;

@Repository("msgStore")
public class MessageStoreLogic {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Message> selectMessageList(String toId) {
		return (ArrayList)sqlSession.selectList("messageMapper.selectList",toId);
	}

	public int insertMessage(Message message) {
		return sqlSession.insert("messageMapper.insertMessage",message);
	}
	
	public int deleteMessage(int msId) {
		return sqlSession.delete("messageMapper.deleteMsg", msId);
	}

	public Message selectMessageOne(int msId) {
		return sqlSession.selectOne("messageMapper.selectMessageOne",msId);
	}

	public ArrayList<Message> selectSendMessageList(String fromId) {
		return (ArrayList)sqlSession.selectList("messageMapper.selectSendMessageList",fromId);
	}

}
