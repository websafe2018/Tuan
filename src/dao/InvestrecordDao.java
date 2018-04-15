package dao;

import java.util.List;

import entity.Investrecord;

public interface InvestrecordDao {
	public Integer addInvest(Investrecord inv);	
	
	public List<Investrecord> getiBodyByUid(int uid);
	
	public Investrecord getInvestBySid(int sid,int uid);
}
