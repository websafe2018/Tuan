package service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.RechargerecordDao;
import entity.Rechargerecord;
import service.RechargerecordService;
@Service
public class RechargerecordServiceImpl implements RechargerecordService{
	@Resource
	private RechargerecordDao rdao;

	/*
	 * 有条件查找充值记录
	 */
	@Override
	public List<Rechargerecord> findReAll(int pageno,Timestamp minTime, Timestamp maxTime, String realName) throws Exception{
		// TODO Auto-generated method stub
		return rdao.findReAll((pageno-1)*5,minTime, maxTime, realName);
	}

	/*
	 * 获得充值记录条数
	 */
	@Override
	public Integer getReCount(Timestamp minTime, Timestamp maxTime, String realName) throws Exception {
		// TODO Auto-generated method stub
		return rdao.getReCount(minTime, maxTime, realName);
	}

	/*
	 * 根据编号查找用户
	 */
	@Override
	public Rechargerecord findReById(int id) throws Exception {
		// TODO Auto-generated method stub
		return rdao.findReById(id);
	}

	/*
	 * 增加充值记录
	 */
	@Transactional
	@Override
	public boolean addRecharge(Rechargerecord re) throws Exception {
		return rdao.addRecharge(re)>0?true:false;
	}

	/*
	 * 得到账户的所有充值记录
	 */
	@Override
	public List<Rechargerecord> getRecharBodyByAid(int aid) {
		// TODO Auto-generated method stub
		return rdao.getRecharBodyByAid(aid);
	}

	/*
	 * 带时间查询
	 */
	@Override
	public List<Rechargerecord> getRechargeListByAid(int aid, Timestamp s, Timestamp e) {
		// TODO Auto-generated method stub
		return rdao.getRechargeListByAid(aid, s, e);
	}

}
