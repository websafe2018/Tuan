package dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Rechargerecord;

public interface RechargerecordDao {

	public List<Rechargerecord> findReAll(int pageno,@Param("min")Timestamp minTime,@Param("max")Timestamp maxTime,@Param("uname")String realName);
	
	public Integer getReCount(@Param("min")Timestamp minTime,@Param("max")Timestamp maxTime,@Param("uname")String realName);
	
	public Rechargerecord findReById(int id);
	
	public List<Rechargerecord> getRecharBodyByAid(int aid);
	
	public Integer addRecharge(Rechargerecord re);
	
	public List<Rechargerecord> getRechargeListByAid(int aid,@Param("s")Timestamp s,@Param("e")Timestamp e);
	
}
