package com.ppd.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.AccountDao;
import com.ppd.dao.BankDao;
import com.ppd.dao.BillDao;
import com.ppd.dao.CreditDao;
import com.ppd.dao.DueinDao;
import com.ppd.dao.LandingrecordDao;
import com.ppd.dao.LoanDao;
import com.ppd.dao.MessageDao;
import com.ppd.dao.ProtectDao;
import com.ppd.dao.QuestionDao;
import com.ppd.dao.RepaymentdetailDao;
import com.ppd.dao.RepaymentplanDao;
import com.ppd.dao.SafetyDao;
import com.ppd.dao.UserinfoDao;
import com.ppd.dao.UsersDao;
import com.ppd.entity.Account;
import com.ppd.entity.Bill;
import com.ppd.entity.Credit;
import com.ppd.entity.Duein;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Landingrecord;
import com.ppd.entity.Loan;
import com.ppd.entity.Message;
import com.ppd.entity.Protect;
import com.ppd.entity.Question;
import com.ppd.entity.Repaymentdetail;
import com.ppd.entity.Repaymentplan;
import com.ppd.entity.Safety;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.AaaService;


@Service("aaaService")
public class AaaServiceImpl implements AaaService {

	private AccountDao accountDao;
	private UsersDao usersDao;
	private CreditDao creditDao;
	private BillDao billDao;
	private BankDao bankDao;
	private DueinDao dueinDao;
	private LandingrecordDao landingrecordDao;
	private LoanDao loanDao;
	private MessageDao messageDao;
	private QuestionDao questionDao;
	private ProtectDao protectDao;
	private RepaymentplanDao repaymentplanDao;
	private SafetyDao safetyDao;
	private UserinfoDao userinfoDao;
	private RepaymentdetailDao repaymentdetailDao;
	
	@Resource(name="repaymentdetailDao")
	public void setRepaymentdetailDao(RepaymentdetailDao repaymentdetailDao) {
		this.repaymentdetailDao = repaymentdetailDao;
	}
	
	
	//Set注入Dao
	@Resource(name="userinfoDao")
	public void setUserinfoDao(UserinfoDao userinfoDao) {
		this.userinfoDao = userinfoDao;
	}
	@Resource(name="accountDao")
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	@Resource(name="bankDao")
	public void setBankDao(BankDao bankDao) {
		this.bankDao = bankDao;
	}	
	@Resource(name="billDao")
	public void setBillDao(BillDao billDao) {
		this.billDao = billDao;
	}
	@Resource(name="dueinDao")
	public void setDueinDao(DueinDao dueinDao) {
		this.dueinDao = dueinDao;
	}
	@Resource(name="landingrecordDao")
	public void setLandingrecordDao(LandingrecordDao landingrecordDao) {
		this.landingrecordDao = landingrecordDao;
	}
	@Resource(name="loanDao")
	public void setLoanDao(LoanDao loanDao) {
		this.loanDao = loanDao;
	}
	@Resource(name="messageDao")
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
	@Resource(name="protectDao")
	public void setProtectDao(ProtectDao protectDao) {
		this.protectDao = protectDao;
	}
	@Resource(name="questionDao")
	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}
	@Resource(name="repaymentplanDao")
	public void setRepaymentplanDao(RepaymentplanDao repaymentplanDao) {
		this.repaymentplanDao = repaymentplanDao;
	}
	@Resource(name="safetyDao")
	public void setSafetyDao(SafetyDao safetyDao) {
		this.safetyDao = safetyDao;
	}	
	@Resource(name="usersDao")
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	@Resource(name="creditDao")
	public void setCreditDao(CreditDao creditDao) {
		this.creditDao = creditDao;
	}
	public List<Bill> uPaccount(Users users, double money) {
		// TODO Auto-generated method stub
		//查找账户信息
		Account account=accountDao.queryById(users.getUserid());
		//添加账单并判断是充值或提现
		if(money>0){
			//充值操作
			account.setAllmoney(account.getAllmoney()+money);
			account.setInmoney(account.getInmoney()+money);
			//添加记录
			Bill b=new Bill();
			
			//Set收入状态
			b.setClass_(2);
			//Set用户ID
			b.setUsers(users);
			//Set金额
			b.setMoney(money);
			b.setState("提现");
			//添加记录
			billDao.add(b);
			
		}
		if(money<0){
			//提现操作
			//收费标准(每笔3元)
			double sxf=-3;
			account.setAllmoney(account.getAllmoney()+money+sxf);
			account.setInmoney(account.getInmoney()+money+sxf);
			//添加记录
			Bill b=new Bill();
			//Set支出状态
			b.setClass_(1);
			//Set用户ID
			b.setUsers(users);
			//Set金额
			b.setMoney(-money);
			b.setState("提现");
			billDao.add(b);
			//Set手续费状态
			b.setClass_(0);
			//Set金额
			b.setMoney(-sxf);
			b.setState("提现手续费");
			billDao.add(b);
			
		}
		//修改账户余额
		accountDao.up(account);
		
		//返回资金记录
		return findBill(99,3,users.getUserid());
	}
	public List<Bill> findBill(int classType, int dateType, int userid) {
		// TODO Auto-generated method stub
		Bill bill=new Bill();
		Users user=new Users();
		user.setUserid(userid);
		bill.setUsers(user);
		bill.setClass_(classType);
		//判断时间
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c=Calendar.getInstance();
		switch(dateType){
			case 3:
				//三天以内
				c.add(Calendar.DATE, -3);
				break;
			case 7:
				//一周以内
				c.add(Calendar.DATE, -7);
				break;
			case 30:
				//一月以内
				c.add(Calendar.MONTH, -1);
				break;
			case 90:
				//三月以内
				c.add(Calendar.MONTH, -3);
				break;
			case 180:
				//六月以内
				c.add(Calendar.MONTH, -6);
				break;
			
		}
		//格式化
		Date date=new Date(c.getTimeInMillis());
		bill.setCreatetime(date);
		return billDao.queryByParam(bill);
	}
	public Map findUsersAccountDuein(int userid) {
		// TODO Auto-generated method stub
		Map map=new HashMap();
		//查找用户的信息
		Users user = usersDao.findUserDueinAccount(userid);
		map.put("user", user);
		//查询累计收益Money
		map.put("ljmoney", dueinDao.ljmoney(userid));
		//查询待收收益Money
		map.put("dsmoney", dueinDao.dsmoney(userid));
		//查询180天内的待收的Duein
		map.put("dueins", findDuein(1,180,userid));
		//查询计算累计收益率
		map.put("syl", dueinDao.syl(userid));//传入收益率
		//查询投资各种项目的数目(1.投资中;2.还款中;3.已完成)
		HashMap<String,Integer> m=new HashMap<String,Integer>();
		m.put("id", userid);
		m.put("status", 1);
		map.put("dueinnum1", dueinDao.dueinNum(m));
		m.put("status", 2);
		map.put("dueinnum2", dueinDao.dueinNum(m));
		m.put("status", 3);
		map.put("dueinnum3", dueinDao.dueinNum(m));
		return map;
	}
	public Map findUsersAccountLoan(int userid) {
		// TODO Auto-generated method stub
		Map map=new HashMap();
		//联合查找用户基本信息,账户信息,借款信息
		Users user = usersDao.findUserLoanAccount(userid);
		map.put("user", user);
		//查找信誉额度
		Credit credit = creditDao.queryById(user.getCredit());
		map.put("credit", credit);
		//计算使用总额度
		map.put("loanmoney", loanDao.findLoanmoney(userid));
		return map;
	}
	public Users upUsers(Users users) {
		// TODO Auto-generated method stub
		usersDao.up(users);
		return usersDao.findUserLoanAccount(users.getUserid());
	}
	public Map aqzx(Users user) {
		// TODO Auto-generated method stub
		Map map=new HashMap();
		//查找认证
		map.put("safety", safetyDao.queryById(user.getUserid()));
		//查找安全问题
		Protect p=new Protect();
		p.setUsers(user);
		map.put("protects", protectDao.queryByParam(p));
		return map;
	}
	public List<Question> findQuestion() {
		// TODO Auto-generated method stub
		return questionDao.queryAll();
	}
	public List<Message> findMessage(Message message) {
		// TODO Auto-generated method stub
		return messageDao.queryByParam(message);
	}
	public Message findMessage(int messageid) {
		// TODO Auto-generated method stub
		//查询
		Message message=messageDao.queryById(messageid);
		//修改为已读状态
		message.setStatus(0);
		//修改
		messageDao.up(message);
		//返回
		return message;
	}
	public void upMessage(int messageid) {
		// TODO Auto-generated method stub
		Message message=new Message();
		message.setMessageid(messageid);
		//修改为删除状态
		message.setStatus(2);
		messageDao.up(message);
	}
	public Users findUserAndUserinfo(int userid) {
		// TODO Auto-generated method stub
		return usersDao.findUserAndUserinfo(userid);
	}
	public Userinfo findUserinfo(int userid) {
		// TODO Auto-generated method stub
		return userinfoDao.queryById(userid);
	}
	public void upUserinfo(Userinfo userinfo) {
		// TODO Auto-generated method stub
		userinfoDao.up(userinfo);
	}
	public List<Duein> findDuein(int classType, int dateType, int userid) {
		// TODO Auto-generated method stub
		Duein duein=new Duein();
		Users user=new Users();
		user.setUserid(userid);
		duein.setUsers(user);
		duein.setStatus(classType);
		//判断时间
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c=Calendar.getInstance();
		switch(dateType){
			case 3:
				//三天以内
				c.add(Calendar.DATE, -3);
				break;
			case 7:
				//一周以内
				c.add(Calendar.DATE, -7);
				break;
			case 30:
				//一月以内
				c.add(Calendar.MONTH, -1);
				break;
			case 90:
				//三月以内
				c.add(Calendar.MONTH, -3);
				break;
			case 180:
				//六月以内
				c.add(Calendar.MONTH, -6);
				break;
			
		}
		//格式化
		Date date=new Date(c.getTimeInMillis());
		duein.setShouldtime(date);
		return dueinDao.queryByParam2(duein);
	}
	public List<Landingrecord> findLandingrecord(int userid) {
		// TODO Auto-generated method stub
		Users user = new Users();
		user.setUserid(userid);
		Landingrecord entity = new Landingrecord();
		entity.setUsers(user);
		return landingrecordDao.queryByParam(entity);
	}
	public List<Loan> findLoan(int userid, int status) {
		// TODO Auto-generated method stub
		Users user = new Users();
		user.setUserid(userid);
		Loan l=new Loan();
		l.setUsers(user);
		l.setStatus(status);
		return loanDao.queryByParam(l);
	}
	public void upSafety(Safety safety) {
		// TODO Auto-generated method stub
		safetyDao.up(safety);
	}


	public Map findLoanbyID(int id,int userid) {
		// TODO Auto-generated method stub
		//map
		Map map=new HashMap();
		//合成对象,用于查找
		Repaymentdetail r=new Repaymentdetail();
		Users u=new Users();
		u.setUserid(userid);
		r.setUsers(u);
		Loan l=new Loan();
		l.setLoanid(id);
		r.setLoan(l);
		//查找本人的还款记录
		List<Repaymentdetail> rlist=repaymentdetailDao.queryByParam(r);
		//查找项目的详细信息
		Loan loan=loanDao.findLoanbyID(id);
		//合成hkMap
		Map hkMap=new HashMap();
		for(int i=1;i<loan.getLoantime();i++){
			for (Repaymentdetail re : rlist) {
				if(re.getPeriod().equals(i)){
					hkMap.put(i, i);
				}
			}
		}
		//放入还款结果
		map.put("hkMap", hkMap);
		//放入Loan
		map.put("loan", loan);
		return map;
	}


	public List<Bill> hk(int loanid, int period,int userid) {
		// TODO Auto-generated method stub
		//查找项目的详细信息
		Loan loan=loanDao.findLoanbyID(loanid);
		//查找还款人账户信息
		Account a=accountDao.queryById(userid);
		
	//取出本次还款的计划
		Repaymentplan rp=new Repaymentplan();
		List<Repaymentplan> rpList=loan.getRepaymentplans();
		for (Repaymentplan r : rpList) {
			if(r.getPeriod().equals(period)){
				rp=r;
			}
		}
		//获取应还金额
		Double hkmoney=rp.getPrincipal()+rp.getInterest();
	//变更还款人账户
		//还款操作
		a.setAllmoney(a.getAllmoney()-hkmoney);
		a.setInmoney(a.getInmoney()-hkmoney);
		//修改账户金额
		accountDao.up(a);
		//插入bill记录
		
		//添加记录
		Bill hkb=new Bill();
		//Set收入状态
		hkb.setClass_(1);
		//Set用户ID
		Users hku=new Users();
		hku.setUserid(userid);
		hkb.setUsers(hku);
		//Set金额
		hkb.setMoney(hkmoney);
		hkb.setState("我的借款项目["+loan.getTitle()+"]还款");
		//添加记录
		billDao.add(hkb);
	//插入还款明细记录(合成)
		Repaymentdetail hkre=new Repaymentdetail();
		hkre.setUsers(hku);
		hkre.setLoan(loan);
		hkre.setPeriod(period);
		hkre.setRate(loan.getRate());
		hkre.setPrincipal(rp.getPrincipal());
		hkre.setInterest(rp.getInterest());
		
		//根据应还时间判断状态(1,正常,2逾期)
		Date date=new Date();
		if(rp.getShouldtime().after(date)){
			//set逾期状态
			hkre.setStatus(2);
			//罚款操作
			Double fk=rp.getPrincipal()*0.003;
			//查找还款人账户信息
			a=accountDao.queryById(userid);
			//罚款款操作
			a.setAllmoney(a.getAllmoney()-fk);
			a.setInmoney(a.getInmoney()-fk);
			//插入bill记录
			//添加记录
			Bill yqb=new Bill();
			//Set罚款状态
			yqb.setClass_(1);
			//Set用户ID
			hku.setUserid(userid);
			yqb.setUsers(hku);
			//Set金额
			yqb.setMoney(fk);
			yqb.setState("我的借款项目["+loan.getTitle()+"]逾期罚款");
			//添加记录
			billDao.add(yqb);
			hkre.setFine(fk);
			
			
		}
		if(rp.getShouldtime().before(date)){
			//set正常状态
			hkre.setStatus(1);
			hkre.setFine(0.0);
		}
		hkre.setShouldtime(rp.getShouldtime());
		hkre.setRepaytime(date);
		//添加记录
	System.out.println("1.插入还款明细记录...");
		repaymentdetailDao.add(hkre);
	System.out.println("2.插入还款明细记录...");	
		
		//插入还款明细记录
		
		
		//获取要还款人的列表
		List<Investrecord> inList=loan.getInvestrecords();
		//循环还款
		for (Investrecord in : inList) {
		//修改账户金额
			System.out.println("循环还款...");
			//查找用户金额
			Account account=accountDao.queryById(in.getUsers().getUserid());
			//查找应收金额
			Duein duein=new Duein();
			duein.setUsers(in.getUsers());
			duein.setLoan(loan);
			duein.setPeriod(period);
			duein=dueinDao.findMyDuein(duein);
			Double money=duein.getRate()+duein.getInterest();
			//充值操作
			account.setAllmoney(account.getAllmoney()+money);
			account.setInmoney(account.getInmoney()+money);
			//更改投标中金额
			account.setOutmoney(account.getOutmoney()-duein.getRate());
			accountDao.up(account);
		//插入bill记录
			
			//添加记录
			Bill b=new Bill();
			//Set收入状态
			b.setClass_(2);
			//Set用户ID
			b.setUsers(in.getUsers());
			//Set金额
			b.setMoney(money);
			b.setState("投资["+loan.getTitle()+"]项目返还款");
			//添加记录
			billDao.add(b);
		//插入还款明细记录(合成)
			Repaymentdetail re=new Repaymentdetail();
			re.setUsers(in.getUsers());
			re.setLoan(loan);
			re.setPeriod(period);
			re.setRate(loan.getRate());
			re.setPrincipal(in.getMoney());
			re.setInterest(money-in.getMoney());
			
			//根据应还时间判断状态(1,正常,2逾期)
			if(duein.getShouldtime().after(date)){
				//set逾期状态
				re.setStatus(2);
				
			}
			if(duein.getShouldtime().before(date)){
				//set正常状态
				re.setStatus(1);
			}
			re.setFine(0.0);
			re.setShouldtime(duein.getShouldtime());
			re.setRepaytime(date);
			//添加记录
			repaymentdetailDao.add(re);
		//修改个人待收表数据
			//判断状态
			if(duein.getShouldtime().after(date)){
				//set逾期已还状态
				duein.setStatus(3);
				
			}
			if(duein.getShouldtime().before(date)){
				//set正常还款状态
				duein.setStatus(0);
			}
			//修改
			dueinDao.up(duein);
		}
		
		
		return findBill(99,3,userid);
	}
	
}
