package dao;



import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Standardinvest;

public interface StandardinvestDao {
	//查找所有散标投资项目，可根据标的类型，周转期限，年化利率，结清方式，进行中的和满标的进行查询，
	public List<Standardinvest> findStandardinvestAll(@Param("standardinvest")Standardinvest stan,int pageno);
	//根据项目id查找一个散标投资项目
	public Standardinvest findStandardinvest(int id);
	//根据项目id删除一个散标投资项目
	public int delStandardinvest(int id);
	//修改散标投资项目的信息以及上下架
	public int updateStandardinvest(Standardinvest stan);
	//添加一个新的散标投资项目
	public int addStandardinvest(Standardinvest stan);
	//查找所有散标投资项目的数目，以及根据标的类型，周转期限，年化利率，结清方式，进行中的和满标的进行查询后的数目
	public Long getcount(@Param("standardinvest")Standardinvest stan);
	
	//public List<Standardinvest> findStandardInvestTime(Timestamp s,Timestamp e);
	
	public List<Standardinvest> findStandardInvestTime(@Param("pid")int pid,@Param("tys")int tys, @Param("s")Timestamp s,@Param("e")Timestamp e);

	// 按年化利率 、投资期限 、投标进度 、发标时间排序，参数代表排序类型
	public List<Standardinvest> orderStandardinvestAll(@Param("standardinvest")Standardinvest stan,Integer pageno,@Param("group")Integer group,@Param("order")Integer order);
}
