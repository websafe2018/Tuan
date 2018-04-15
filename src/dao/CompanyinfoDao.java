package dao;

import entity.Companyinfo;

public interface CompanyinfoDao {

	public Integer addComp(Companyinfo comp);
	
	public Companyinfo getcBodyByUid(int uid);
}
