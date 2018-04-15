package service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.AccountDao;
import dao.BasicinfoDao;
import dao.CompanyinfoDao;
import dao.InvestrecordDao;
import dao.LoadrecordDao;
import dao.RebackrecordDao;
import dao.RechargerecordDao;
import dao.RoleDao;
import dao.StandardinvestDao;
import dao.UsersDao;
import entity.Account;
import entity.Basicinfo;
import entity.Body;
import entity.Companyinfo;
import entity.Investrecord;
import entity.Loadrecord;
import entity.Rebackrecord;
import entity.Rechargerecord;
import entity.Role;
import entity.Standardinvest;
import entity.Users;
import service.BodyService;

@Service
public class BodyServiceImpl implements BodyService{

	@Resource
	private UsersDao udao;
	@Resource
	private AccountDao adao;
	@Resource
	private BasicinfoDao bdao;
	@Resource 
	private CompanyinfoDao cdao;
	@Resource
	private InvestrecordDao idao;
	@Resource
	private LoadrecordDao ldao;
	@Resource
	private RoleDao roleDao;
	@Resource
	private RebackrecordDao rebackDao;
	@Resource
	private RechargerecordDao rechargeDao;
	@Resource
	private StandardinvestDao sdao;
	
	
	/*
	 * 根据用户id拿到所有相关的数据并组装成对象传给前台
	 */
	@Override
	public Body getBody(int uid) {
		Body body=new Body();
		Users u=udao.getuBodyById(uid);
		if(u!=null){
			//组装body，users部分
			body.setId(u.getId());
			body.setU_email(u.getEmail());
			body.setU_password(u.getPassword());
			body.setU_registerTime(u.getRegisterTime());
			body.setU_roleId(u.getRoleId());
			body.setU_telNo(u.getTelNo());
			body.setU_userName(u.getUserName());
			
			//组装body——role部分
			
			Role role=roleDao.findRoleById(u.getRoleId());
			body.setRole_id(role.getId());
			body.setRole_role(role.getRole());
			
			//组装body——account部分
			Account a=adao.getaBodyByUid(u.getId());
			if(a!=null){
				body.setA_acBalance(a.getAcBalance());
				body.setA_backTel(a.getBackTel());
				body.setA_bank(a.getBank());
				body.setA_bankNumber(a.getBankNumber());
				body.setA_blockMoney(a.getBlockMoney());
				body.setA_expend(a.getExpend());
				body.setA_id(a.getId());
				body.setA_idnumber(a.getIdnumber());
				body.setA_income(a.getIncome());
				body.setA_overIncome(a.getOverIncome());
				body.setA_paymentPwd(a.getPaymentPwd());
				body.setA_realName(a.getRealName());
				body.setA_sqName(a.getSqName());
				body.setA_uid(a.getUid());
				
				//组装body——Rechargerecord部分
				List<Rechargerecord> rechargeList=rechargeDao.getRecharBodyByAid(a.getId());
				body.setRechargeList(rechargeList);
				
			}
			//组装body——basicinfo部分
			Basicinfo b= bdao.getbBodyByUid(u.getId());
			if(b!=null){
				body.setB_address(b.getAddress());
				body.setB_age(b.getAge());
				body.setB_answerOne(b.getAnswerOne());
				body.setB_answerTwo(b.getAnswerTwo());
				body.setB_area(b.getArea());
				body.setB_certifier(b.getCertifier());
				body.setB_certifierPhonne(b.getCertifierPhonne());
				body.setB_clanName(b.getClanName());
				body.setB_clanPhone(b.getClanPhone());
				body.setB_clanPhones(b.getClanPhones());
				body.setB_education(b.getEducation());
				body.setB_elseName(b.getElseName());
				body.setB_elseOne(b.getElseOne());
				body.setB_elseTwo(b.getElseTwo());
				body.setB_emergeContact(b.getEmergeContact());
				body.setB_gender(b.getGender());
				body.setB_headPic(b.getHeadPic());
				body.setB_id(b.getId());
				body.setB_income(b.getIncome());
				body.setB_industry(b.getIndustry());
				body.setB_isCar(b.getIsCar());
				body.setB_isHouse(b.getIsHouse());
				body.setB_loanMoney(b.getLoanMoney());
				body.setB_marriage(b.getMarriage());
				body.setB_memberLevel(b.getMemberLevel());
				body.setB_nickname(b.getNickname());
				body.setB_numberId(b.getNumberId());
				body.setB_organization(b.getOrganization());
				body.setB_position(b.getPosition());
				body.setB_queryOne(b.getQueryOne());
				body.setB_queryTwo(b.getQueryTwo());
				body.setB_relation(b.getRelation());
				body.setB_relationOne(b.getRelationOne());
				body.setB_relationTwo(b.getRelationTwo());
				body.setB_residencePhone(b.getResidencePhone());
				body.setB_scale(b.getScale());
				body.setB_school(b.getSchool());
				body.setB_telNo(b.getTelNo());
				body.setB_uid(b.getUid());
				body.setB_unitAddres(b.getUnitAddres());
				body.setB_worktelePhone(b.getWorktelePhone());
				body.setB_workTime(b.getWorkTime());
			}
			//组装body——Companyinfo部分
			Companyinfo c=cdao.getcBodyByUid(u.getId());
			if(c!=null){
				body.setC_bid(c.getId());
				body.setC_commercialPhoto(c.getCommercialPhoto());
				body.setC_elseMoney(c.getElseMoney());
				body.setC_firstCosurety(c.getFirstCosurety());
				body.setC_firstPhone(c.getFirstPhone());
				body.setC_firstRelation(c.getFirstRelation());
				body.setC_housingcondition(c.getHousingcondition());
				body.setC_id(c.getId());
				body.setC_incomeCompos(c.getIncomeCompos());
				body.setC_isCar(c.getIsCar());
				body.setC_monthlyCompos(c.getMonthlyCompos());
				body.setC_monthlyExpenses(c.getMonthlyExpenses());
				body.setC_monthlyIncome(c.getMonthlyIncome());
				body.setC_realestateValue(c.getRealestateValue());
				body.setC_secondCosurety(c.getSecondCosurety());
				body.setC_secondPhone(c.getSecondPhone());
				body.setC_secondRelation(c.getSecondRelation());
				body.setC_shareholdCorporMoney(c.getShareholdCorporMoney());
				body.setC_shareholdCorporName(c.getShareholdCorporName());
				body.setC_uid(c.getUid());
				body.setC_uploadFile(c.getUploadFile());
				body.setC_vehicleValue(c.getVehicleValue());
			}
			//组装body——Investrecord部分
			List<Investrecord> investList=idao.getiBodyByUid(u.getId());
			if(investList!=null){
				body.setInvestList(investList);	
				Map<Integer,Standardinvest> standMap=new HashMap<Integer, Standardinvest>();
				for(int i=0;i<investList.size();i++){
					standMap.put(investList.get(i).getSid(),sdao.findStandardinvest(investList.get(i).getSid()));
				}
				body.setStandMap(standMap);
			}else{
				investList=new ArrayList<Investrecord>();
			}
			//组装body——Loadrecord部分
			List<Loadrecord> loadList=ldao.getlBodyByUid(u.getId());
			if(loadList!=null){
				body.setLoadList(loadList);
				//组装body——rebackrecord部分
				Map<Integer,List<Rebackrecord>> rebackMap=new HashMap<Integer, List<Rebackrecord>>();
				for(int i=0;i<loadList.size();i++){
					Integer lid=loadList.get(i).getId();
					List<Rebackrecord> rebackList=rebackDao.getRebackBodyByLid(lid);
					rebackMap.put(lid, rebackList);
				}
				body.setRebackMap(rebackMap);
			}
			
			
		}
		System.out.println(body.getU_userName());
		return body;
	}

}
