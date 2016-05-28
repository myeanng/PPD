package com.ppd.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ppd.entity.Loan;
import com.ppd.entity.Material;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.LoanService;
import com.ppd.service.MaterialService;
import com.ppd.service.UserinfoService;

@Controller
@RequestMapping(value="material")
public class MaterialController {

	private MaterialService ms;
	private List<Material> materialList;
	private LoanService ls;
	private UserinfoService uis;
	/**
	 * 查看用户的上传的证件照，用于项目审核
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findByUserid" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findByUserid(Model model){
		materialList= ms.queryByUserid(1);
		model.addAttribute("materialList", materialList);
		System.out.println(materialList.size());
		return "user";
	}
	
	@RequestMapping(value="uploadMaterial" , method = {RequestMethod.POST,RequestMethod.GET})
	public String uploadMaterial(HttpServletRequest request,@RequestParam CommonsMultipartFile[] files) throws Exception{
		
		Users users = (Users) request.getSession().getAttribute("users");
		Userinfo userinfo=uis.queryUserinfo(users);
		Loan loan=new Loan();
		loan.setUsers(users);
		loan.setStatus(1);
		List<Loan> loanList = ls.queryByParam(loan);
		Material material=new Material();
		material.setUsers(users);
		material.setLoan(loanList.get(0));
		
		String path = request.getSession().getServletContext().getRealPath("/picture");
		File picture = new File(path);
		if( !picture.exists()){
			picture.mkdir();
		}
		
		for (CommonsMultipartFile file : files) {
			if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")){
			System.out.println(file.getOriginalFilename());
			String fileName=file.getOriginalFilename();
			FileUtils.writeByteArrayToFile(new File(path,userinfo.getIc()+"+"+fileName), file.getBytes());
			material.setMaterial("身份证");
			material.setPicture(userinfo.getIc()+"+"+fileName);
			material.setCreatetime(new Date());
			ms.add(material);
			}
		}
		return "redirect:/userinfo/checkUserinfo";
	}
	
	
	@Resource(name="materialService")
	public void setMs(MaterialService ms) {
		this.ms = ms;
	}
	@Resource(name="loanService")
	public void setLs(LoanService ls) {
		this.ls = ls;
	}
	@Resource(name="userinfoService")
	public void setUis(UserinfoService uis) {
		this.uis = uis;
	}
}
