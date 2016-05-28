package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Message;
import com.ppd.service.MessageService;

@Controller("messageController")
public class MessageController {
	
	private MessageService messageService;
	
	@Resource(name="messageService")
	public void setUsersService(MessageService messageService) {
		this.messageService = messageService;
	}
	
	@RequestMapping(value="findMessage" , method={RequestMethod.POST , RequestMethod.GET})
	public String findMessage(Message entity ,HttpServletRequest request){
		request.getSession().setAttribute("messages", messageService.queryByParam(entity));
		return "showTest";
	}
	
	@RequestMapping(value="addMessage" , method={RequestMethod.POST , RequestMethod.GET})
	public String addMessage(Message entity ,HttpServletRequest request){
		messageService.add(entity);
		return "showTest";
	}
	
	@RequestMapping(value="upMessage" , method={RequestMethod.POST , RequestMethod.GET})
	public String upMessage(Message entity ,HttpServletRequest request){
		messageService.up(entity);
		return "showTest";
	}
}
