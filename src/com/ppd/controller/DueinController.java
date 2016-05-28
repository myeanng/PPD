package com.ppd.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Duein;
import com.ppd.service.DueinService;

@Controller
@RequestMapping(value="duein")
public class DueinController {
	
	private DueinService ds;
	private List<Duein> dueinList;
	/**
	 * 
	 * 查看用户待收统计列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findduein" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findduein(Model model , Duein duein){
		dueinList=ds.queryByParam(duein);
		model.addAttribute("dueinList", dueinList);
		return "laccount";
	}
	
	
	@Resource(name="dueinService")
	public void setDs(DueinService ds) {
		this.ds = ds;
	}
	

}
