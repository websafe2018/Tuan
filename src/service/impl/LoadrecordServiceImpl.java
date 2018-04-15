package service.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AccountDao;
import dao.BackPlanDao;
import dao.LoadrecordDao;
import dao.RebackrecordDao;
import dao.RecordDao;
import entity.Account;
import entity.BackPlan;
import entity.Loadrecord;
import entity.Rebackrecord;
import entity.Record;
import service.LoadrecordService;
@Service
public class LoadrecordServiceImpl implements LoadrecordService{
	@Resource
	private LoadrecordDao dao;
	@Resource
	private RecordDao rdao;
	@Resource 
	private AccountDao adao;
	@Resource
	private BackPlanDao bdao;
	@Resource
	private RebackrecordDao redao;
	
	@Override
	public List<Loadrecord> findLoadrecordByjiedai(Integer loadStatus, Integer loadPeriod, String realName, Integer pageno) throws Exception {
		// TODO Auto-generated method stub
		return dao.findLoadrecordByjiedai(loadStatus, loadPeriod, realName, (pageno-1)*5);
	}
	@Override
	public int getCount(Integer loadStatus, Integer loadPeriod, String realName) throws Exception {
		// TODO Auto-generated method stub
		return dao.getCount(loadStatus, loadPeriod, realName);
	}
	@Override
	public Loadrecord findLoadrecordByid(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findLoadrecordByid(id);
	}

	@Override
	public boolean deleteLoadrecordByuid(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteLoadrecordByuid(id)>0?true:false;
	}
	@Override
	@Transactional
	public boolean updateLoadrecordByuid(Integer status, Integer loadStatus, Integer id)throws Exception {
		Loadrecord l=dao.findLoadByid(id);
		Record r=new Record();
		r.setUid(l.getUid());
		r.setBlance(adao.findAccByUidtwo(l.getUid()).getAcBalance());
		r.setRemarks("收入");
		r.setrMoney(l.getLoadMoney());
		r.setrTime(new Timestamp(System.currentTimeMillis()));
		r.setrType("借入");
		boolean flag= dao.updateLoadrecordByuid(status, loadStatus, id)>0;
		l=dao.findLoadByid(id);
		System.out.println(flag+"更新审核状态--------------");
		boolean flag1=false; //增加记录标识
		boolean flag2=false;	//更改余额标识
		boolean flag3=false; //增加还款计划标识
		boolean flag4=false;//增加还款记录标识
		if(flag&&l.getLoadStatus()==1){
			flag1=rdao.addRecord(r)>0;
			System.out.println(flag1+"更新交易记录状态--------------");
			//使用充值方法 增加账户金额，增加还款记录表及还款计划表
			Account acc=adao.findAccByUidtwo(l.getUid());
			int aid=acc.getId();
			flag2=adao.rechargeAcc(acc.getAcBalance()+l.getLoadMoney(), aid)>0;
			System.out.println(flag2+"更新账户余额状态--------------");
			int num=0;
			Timestamp t= l.getLoadTime();
			int year=t.getYear()+1900;
			int month=t.getMonth()+1;
			int yearnum=0;
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String tt="";
			for(int i=0;i<l.getLoadPeriod();i++){
				BackPlan bp=new BackPlan();
				bp.setBackIncome(Math.round((l.getLoadMoney()*l.getLoadRate()/100)*100)/100);
				bp.setBackMoney(Math.round(l.getLoadMoney()/l.getLoadPeriod()*100)/100);
				bp.setBstyle(1);
				bp.setLid(l.getId());
				month++;
				if(month>12){
					month=1;
					yearnum++;
				}
				
				String timeStr=(yearnum+year)+"-"+month+"-"+"5";
				Timestamp btime=new Timestamp(sdf.parse(timeStr).getTime());
				if(l.getLoadPeriod()-1==i){
					tt=timeStr;
				}
				bp.setBackTime(btime);
				if(bdao.addBackPlan(bp)>0){
					num++;
				}
				
			}
			if(num==l.getLoadPeriod()){
				flag3=true;
			}
			System.out.println(flag3+"更新还款安排状态--------------");
			Rebackrecord re=new Rebackrecord();
			re.setLid(id);
			re.setOverMoney(0.00);
			re.setReTotal(l.getLoadMoney()+(Math.round((l.getLoadMoney()*l.getLoadRate()/100)*100)/100)*l.getLoadPeriod());
			re.setReMoney(0.00);
			re.setReTime(new Timestamp(sdf.parse(tt).getTime()));
			re.setReNumber(0);
			re.setReStatus(1);
			flag4=redao.addReBack(re)>0;
			System.out.println(flag4+"更新还款记录记录记录状态--------------");
			return (flag&&flag1&&flag2&&flag3);
		}else{
			return flag;
		}
	}
	
	@Transactional
	@Override
	public boolean addLoadrecord(Loadrecord loadrecord) throws Exception {
		// TODO Auto-generated method stub
		return dao.addLoadrecord(loadrecord)>0?true:false;
	}
	@Override
	public List<Loadrecord> findLoadrecordAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.findLoadrecordAll();
	}
	@Override
	public List<Loadrecord> findLoadrecordAllTime(int pid, String loadtype, int status, Timestamp s, Timestamp e)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.findLoadrecordAllTime(pid, loadtype, status, s, e);
	}
	@Override
	public List<Loadrecord> findLoadrecordByjilu(int uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.findLoadrecordByjilu(uid);
	}
	@Override
	public Loadrecord findLoadByid(int id) {
		// TODO Auto-generated method stub
		return dao.findLoadByid(id);
	}
	@Override
	public int addLoad(Loadrecord loadrecord) {
		// TODO Auto-generated method stub
		return dao.addLoad(loadrecord);
	}
}
