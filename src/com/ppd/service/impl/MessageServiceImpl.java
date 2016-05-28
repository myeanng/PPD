package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.MessageDao;
import com.ppd.entity.Message;
import com.ppd.service.MessageService;

@Service("messageService")
public class MessageServiceImpl implements MessageService {

	private MessageDao messageDao;
	
	@Resource(name="messageDao")
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public boolean add(Message entity) {
		// TODO Auto-generated method stub
		return messageDao.add(entity);
	}

	public boolean del(Message entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Message> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Message queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Message> queryByParam(Message entity) {
		// TODO Auto-generated method stub
		return messageDao.queryByParam(entity);
	}

	public boolean up(Message entity) {
		// TODO Auto-generated method stub
		return messageDao.up(entity);
	}

}
