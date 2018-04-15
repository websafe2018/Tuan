package service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AccountDao;
import dao.InvestrecordDao;
import dao.RecordDao;
import dao.StandardinvestDao;
import dao.UsersDao;
import entity.Account;
import entity.Body;
import entity.Investrecord;
import entity.Record;
import entity.Standardinvest;
import entity.Users;
import service.BodyService;
import service.StandardinvestService;
@Service

public class StandardinvestServiceImpl implements StandardinvestService{

	@Resource
	private StandardinvestDao dao;
	@Resource
	private UsersDao udao;
	@Resource
	private AccountDao adao;
	@Resource
	private RecordDao rdao;
	@Resource
	private InvestrecordDao idao;
	@Resource
	private BodyService bodyservice;
	
	@Override
	public Standardinvest findStandardinvest(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findStandardinvest(id);
	}

	@Transactional
	public int updateStandardinvest(Standardinvest stan) throws Exception {
		int i=dao.updateStandardinvest(stan);
		
		return i;
	}

	@Override
	public int addStandardinvest(Standardinvest stan) throws Exception {
		// TODO Auto-generated method stub
		return dao.addStandardinvest(stan);
	}

	@Override
	public List<Standardinvest> findStandardinvestAll(Standardinvest stan,int pageno) {
		if(stan.getPid()!=null&&stan.getPid()==0){
			stan.setPid(null);
		}if(stan.getSperiod()!=null&&stan.getSperiod()==0){
			stan.setSperiod(null);
		}if(stan.getSrate()!=null&&stan.getSrate()==0){
			stan.setSrate(null);
		}if(stan.getSrepayType()!=null&&stan.getSrepayType().equals("0")){
			stan.setSrepayType(null);
		}
		
		return dao.findStandardinvestAll(stan, (pageno-1)*5);
	}

	@Override
	public int delStandardinvest(int id) {
		// TODO Auto-generated method stub
		return dao.delStandardinvest(id);
	}

	@Override
	public Long getcount(Standardinvest stan) {
		if(stan.getPid()!=null&&stan.getPid()==0){
			stan.setPid(null);
		}if(stan.getSperiod()!=null&&stan.getSperiod()==0){
			stan.setSperiod(null);
		}if(stan.getSrate()!=null&&stan.getSrate()==0){
			stan.setSrate(null);
		}if(stan.getSrepayType()!=null&&stan.getSrepayType().equals("0")){
			stan.setSrepayType(null);
		}
		return dao.getcount(stan);
	}

	/*@Override
	public void test() {
		Standardinvest stan = new Standardinvest();
		stan.setId(1);
		stan.setSbackStatus(16);
		dao.updateStandardinvest(stan );
		
		Integer.parseInt("a");
		
		Standardinvest stan2 = new Standardinvest();
		stan2.setId(12);
		stan2.setSbackStatus(12);
		dao.updateStandardinvest(stan2 );
	}
*/
	@Override
	public List<Standardinvest> findStandardInvestTime(int pid,int tys,Timestamp s, Timestamp e) throws Exception {
		// TODO Auto-generated method stub
		return dao.findStandardInvestTime(pid,tys,s, e);
	}
	
	@Override
	public List<Standardinvest> orderStandardinvestAll(Standardinvest stan, Integer pageno, Integer group, Integer order){
		// TODO Auto-generated method stub
		return dao.orderStandardinvestAll(stan, (pageno-1)*5, group, order);
	}

	@Transactional
	public int touzi(Integer invId, Integer uid, Double invSprice, Integer invNum) {		
		Users u=udao.findUsersMsg(uid);
		Standardinvest stan=dao.findStandardinvest(invId);
		Account a=adao.findAccByUid(uid).get(0);
		boolean flag=false;
		boolean flag1=false;
		boolean flag2=false;
		Body body =bodyservice.getBody(uid);
		List<Investrecord>  ilist=body.getInvestList();
		int num=0;
		for(Investrecord i:ilist){
			if(i.getSid()==invId){
				num++;
			}
		}
		if(num!=0){
			return -2;
		}else{
			if(u.getAcBalance()>=invSprice*invNum){
				double m=u.getAcBalance();
				a.setAcBalance(m-invSprice*invNum);
				u.setAcBalance(m-invSprice*invNum);
				stan.setSrestNumber(stan.getSrestNumber()-invNum);
				adao.updateAcc(a);
				udao.updateU(u);
				flag=dao.updateStandardinvest(stan)>0;
				Record r=new Record();
				r.setBlance(m);
				r.setRemarks("支出");
				r.setrMoney(invSprice*invNum);
				r.setrTime(new Timestamp(System.currentTimeMillis()));
				r.setrType("投资");
				r.setUid(uid);
				flag1=rdao.addRecord(r)>0;
				Investrecord in=new Investrecord();
				in.setSid(invId);
				in.setItime(new Timestamp(System.currentTimeMillis()));
				in.setItype("PC端");
				in.setRealIncome(0.00);
				in.setRebackType(1);
				double b=stan.getSrate()/100*invSprice*invNum*stan.getSperiod();
				b=Math.round(b*100)/100;
				in.setExpectIncome(b);
				in.setBidsNumber(invNum);
				in.setImoney(invSprice*invNum);
				in.setUid(uid);
				flag2=idao.addInvest(in)>0;
				
				if(flag&&flag1&&flag2){
					return 1;
				}else{
					return -1;
				}
			}else{
				return 0;//余额不足
			}
		}
	}
}
