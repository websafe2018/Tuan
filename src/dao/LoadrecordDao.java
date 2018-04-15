package dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Loadrecord;

public interface LoadrecordDao {
	
	public List<Loadrecord> findLoadrecordByjiedai(@Param("loadStatus") Integer loadStatus ,@Param("loadPeriod")Integer loadPeriod ,@Param("realName")String realName,@Param("pageno")Integer pageno);
	public int getCount(@Param("loadStatus") Integer loadStatus ,@Param("loadPeriod")Integer loadPeriod ,@Param("realName")String realName);
	public Loadrecord findLoadrecordByid(@Param("id")int id);
	public int updateLoadrecordByuid(@Param("status")Integer status,@Param("loadStatus")Integer loadStatus,@Param("id")Integer id);
	public int deleteLoadrecordByuid(@Param("id")Integer id);
	
	public int addLoadrecord(Loadrecord loadrecord);//快速借款申请时添加用户借单
	
	public List<Loadrecord> findLoadrecordByjilu(@Param("uid")int uid);// 借款记录查询
	public int addLoad(Loadrecord loadrecord);//
	
	public List<Loadrecord> getlBodyByUid(int uid);
	
	//等到借款的总额
		public List<Loadrecord> findLoadrecordAll();
		
		//根据项目类型，借款方式，时间来查询；
		public List<Loadrecord> findLoadrecordAllTime(@Param("pid")int pid,@Param("loadtype")String  loadtype,@Param("status")int status, @Param("s")Timestamp s,@Param("e")Timestamp e);
		
		public Loadrecord findLoadByid(int id);
}
