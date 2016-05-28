import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;
import com.ppd.service.InvestrecordService;


@SuppressWarnings("unchecked")
public class Test {

	public static void main(String[] args) {
		ApplicationContext app  = new ClassPathXmlApplicationContext("applicationDataSource.xml","springMVC.xml");
		InvestrecordService is = (InvestrecordService) app.getBean("investrecordService");
		List<Investrecord> investlist = new ArrayList<Investrecord>();
		investlist = is.findInvestByRate();
		for (Investrecord i : investlist) {
			System.out.println(i.getRate()+",,"+i.getMoney());
		}
		List<Loan> loanlist = new ArrayList<Loan>();
		loanlist = is.findInvestByLoantime();
		for (Loan loan : loanlist) {
			System.out.println(loan.getLoantime()+";;"+loan.getLoanmoney());
		}
	}
}
