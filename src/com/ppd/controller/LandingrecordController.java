package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Landingrecord;
import com.ppd.service.LandingrecordService;

@Controller("landingrecordController")
public class LandingrecordController {
	
	private LandingrecordService landingrecordService;
	
	@Resource(name="landingrecordService")
	public void setLandingrecordService(LandingrecordService landingrecordService) {
		this.landingrecordService = landingrecordService;
	}
	
	@RequestMapping(value="findLandingrecord" , method={RequestMethod.POST , RequestMethod.GET})
	public String findLandingrecord(Landingrecord entity ,HttpServletRequest request){
		request.getSession().setAttribute("landingrecords", landingrecordService.queryByParam(entity));
		return "showTest";
	}
	
}
