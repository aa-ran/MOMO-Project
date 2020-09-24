package com.momo.spring.message.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.momo.spring.message.domain.Message;
import com.momo.spring.message.store.MessageStoreLogic;

@Service("msgService")
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageStoreLogic msgStore;

	@Override
	public ArrayList<Message> selectMessageList(String toId) {
		return msgStore.selectMessageList(toId);
	}

	@Override
	public int messageInsert(Message message) {
		return msgStore.insertMessage(message);
	}

	@Override
	public int messagedelete(int msId) {
		return msgStore.deleteMessage(msId);
	}

	@Override
	public Message selectMessageOne(int msId) {
		return msgStore.selectMessageOne(msId);
	}

	@Override
	public ArrayList<Message> selectSendMessageList(String fromId) {
		return msgStore.selectSendMessageList(fromId);
	}


}
