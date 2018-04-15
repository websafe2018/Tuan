package service;



import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Standardinvest;

public interface StandardinvestService {
	//根据项目id删除一个散标投资项目
	public int delStandardinvest(int id);
	//根据项目id查找一个散标投资项目
	public Standardinvest findStandardinvest (int id)throws Exception;
	//查找所有散标投资项目，可根据标的类型，周转期限，年化利率，结清方式，进行中的和满标的进行查询，
	public List<Standardinvest> findStandardinvestAll(Standardinvest stan,int pageno);
	//修改散标投资项目的信息以及上下架
	public int updateStandardinvest(Standardinvest stan)throws Exception;
	//添加一个新的散标投资项目
	public int addStandardinvest(Standardinvest stan)throws Exception;
	//查找所有散标投资项目的数目，以及根据标的类型，周转期限，年化利率，结清方式，进行中的和满标的进行查询后的数目
	public Long getcount(Standardinvest stan);
	
	public List<Standardinvest> findStandardInvestTime(int pid,int tys,Timestamp s,Timestamp e)throws Exception;
	
	
	// 按年化利率 、投资期限 、投标进度 、发标时间排序，参数代表排序类型
	public List<Standardinvest> orderStandardinvestAll(@Param("standardinvest")Standardinvest stan,Integer pageno,@Param("group")Integer group,@Param("order")Integer order) throws Exception;
	//投资
	public int touzi(Integer invId,Integer uid,Double invSprice,Integer invNum);
}
