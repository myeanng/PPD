package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ppd.dao.LinkmanDao;
import com.ppd.dao.LoanDao;
import com.ppd.dao.MaterialDao;
import com.ppd.dao.UserinfoDao;
import com.ppd.entity.Linkman;
import com.ppd.entity.Loan;
import com.ppd.entity.Material;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.UserinfoService;

@Service("userinfoService")
public class UserinfoServiceImpl implements UserinfoService {

	private UserinfoDao userinfoDao;
	@Resource(name="userinfoDao")
	public void setUserinfoDao(UserinfoDao userinfoDao) {
		this.userinfoDao = userinfoDao;
	}
	private LoanDao loanDao;
	@Resource(name="loanDao")
	public void setLoanDao(LoanDao loanDao) {
		this.loanDao = loanDao;
	}
	private LinkmanDao linkmanDao;
	@Resource(name="linkmanDao")
	public void setLinkmanDao(LinkmanDao linkmanDao) {
		this.linkmanDao = linkmanDao;
	}
	private MaterialDao materialDao;
	@Resource(name="materialDao")
	public void setMaterialDao(MaterialDao materialDao) {
		this.materialDao = materialDao;
	}
	public Userinfo queryUserinfo(Users user) {
		return userinfoDao.queryUserinfo(user);
	}
	public boolean add(Userinfo entity) {
		return userinfoDao.add(entity);
	}
	public boolean del(Userinfo entity) {
		return false;
	}
	public List<Userinfo> queryAll() {
		return null;
	}
	public Userinfo queryById(Integer id) {
		return null;
	}
	public List<Userinfo> queryByParam(Userinfo entity) {
		return null;
	}
	public boolean up(Userinfo entity) {
		return false;
	}
	public String jiekuantiaozhuan(Users users, Model model) {
		Userinfo userinfo = userinfoDao.queryUserinfo(users);
		if(userinfo.getUserinfoid()==null)
			return "tianxiexinxi";
		
		Loan loan=new Loan();
		loan.setUsers(users);
		loan.setStatus(1);
		List<Loan> loanList = loanDao.queryByParam(loan);
		if(loanList.size()==0)
			return "putongjiekuan";
		
		Linkman linkman=linkmanDao.queryLinkmanByLoanid(loanList.get(0).getLoanid());
		List<Material> materialList=materialDao.queryMaterialByLoanid(loanList.get(0).getLoanid());
		if(linkman!=null&&materialList.size()==3){
			return "index";
		}else{
			model.addAttribute("linkman", linkman);
			model.addAttribute("materialSize", materialList.size());
			if(materialList.size()>0){
				model.addAttribute("material", materialList.get(0));
			}
			return "zizhishenhe";
		}
	}
	
}
