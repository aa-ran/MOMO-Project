package com.momo.spring.message.service;

import java.util.ArrayList;

import com.momo.spring.message.domain.Message;

public interface MessageService {
	
	public ArrayList<Message> selectMessageList(String toId);
	
	public int messagedelete(int msId);

	public int messageInsert(Message message);

	public Message selectMessageOne(int msId);

	public ArrayList<Message> selectSendMessageList(String fromId);

}
