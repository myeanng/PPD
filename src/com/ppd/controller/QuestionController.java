package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.service.QuestionService;

@Controller("questionController")
public class QuestionController {
	
	private QuestionService questionService;
	
	@Resource(name="questionService")
	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
	
	@RequestMapping(value="findQuetion" , method={RequestMethod.POST , RequestMethod.GET})
	public String findQuetion(HttpServletRequest request){
		request.getSession().setAttribute("quetions", questionService.queryAll());
		return "showTest";
	}
}
