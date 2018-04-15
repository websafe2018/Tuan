package service;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Rechargerecord;

public interface RechargerecordService {

	public List<Rechargerecord> findReAll(int pageno,Timestamp minTime,Timestamp maxTime,String realName) throws Exception;
	
	public Integer getReCount(Timestamp minTime,Timestamp maxTime,String realName) throws Exception;
	
	public Rechargerecord findReById(int id)  throws Exception;
	
	public boolean addRecharge(Rechargerecord re) throws Exception;
	
	public List<Rechargerecord> getRecharBodyByAid(int aid);
	
	public List<Rechargerecord> getRechargeListByAid(int aid,Timestamp s,Timestamp e);
}
