package com.ppd.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Authority;
import com.ppd.entity.Employee;
import com.ppd.service.AuthorityService;
import com.ppd.service.EmployeeService;
import com.ppd.util.MD5;

@Controller
@RequestMapping(value="employee")
public class EmployeeController {

	private EmployeeService es;
	private AuthorityService as;
	private List<Employee> employeeList;
	
	/**
	 * 查看用户列表
	 * @param model
	 * @return
	 *
	 */
	@RequestMapping(value="login" , method = {RequestMethod.POST,RequestMethod.GET})
	public String login(Employee employee, Model model,HttpSession session){
		employee.setLoginpassword(MD5.encodePassword(employee.getLoginpassword(), "MD5"));//Md5解密
		Employee emp = es.adminlogin(employee);
		if(emp!=null){
		model.addAttribute("emp", emp);
		session.setAttribute("emp", emp);
		return "forward:loadauthority";
		}
		return "adminlogin";
	}
	@RequestMapping(value="addadmin" , method = {RequestMethod.POST,RequestMethod.GET})//添加后台管理员
	public String addadmin(Employee employee, Model model){
		String pwd=MD5.encodePassword(employee.getLoginpassword(), "MD5");
		employee.setRoleid(2);
		employee.setStatus(1);
		employee.setCreatetime(new Date());
		employee.setLoginpassword(pwd);
		boolean b = es.add(employee);
		if(b)
			return "adminlogin";//添加成功页面
		else
			return "addadmin";//添加失败 页面
	}
	@RequestMapping(value="loadauthority" , method = {RequestMethod.POST,RequestMethod.GET})
	public String loadauthority(Model model,HttpSession session){
		List<Authority> authorityList ;
		Employee emp = (Employee) session.getAttribute("emp");
		authorityList = as.queryAll();
		List<Authority> superauthorityList = new ArrayList<Authority>();
		for (Authority a : authorityList) {
			if(emp.getRoleid()==1){
				if(a.getSuperauthorityid()==0){
					session.removeAttribute("sup");
					superauthorityList.add(a);
				}
			}else{
				if(a.getSuperauthorityid()==0&&a.getAuthorityid()!=1){
					session.removeAttribute("sup");
					superauthorityList.add(a);
				}
			}
		}
		session.setAttribute("sup", superauthorityList);
		session.setAttribute("aut", authorityList);
		return "admin/main";
	}
	@Resource(name="employeeService")
	public void setEs(EmployeeService es) {
		this.es = es;
	}
	@Resource(name="authorityService")
	public void setAs(AuthorityService as) {
		this.as = as;
	}
}
