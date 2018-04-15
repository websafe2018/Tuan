package service;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Loadrecord;

public interface LoadrecordService {
	
	public List<Loadrecord> findLoadrecordByjiedai (Integer loadStatus ,Integer loadPeriod ,String realName,Integer pageno)throws Exception;
	public int getCount(Integer loadStatus ,Integer loadPeriod ,String realName)throws Exception;
	public Loadrecord findLoadrecordByid(int id)throws Exception;
	public boolean updateLoadrecordByuid(Integer status,Integer loadStatus,Integer id)throws Exception;
	
	public boolean deleteLoadrecordByuid(Integer id)throws Exception;
	
	public boolean addLoadrecord(Loadrecord loadrecord) throws Exception;//快速借款申请时添加用户借单
	public List<Loadrecord> findLoadrecordByjilu(@Param("uid")int uid) throws Exception;// 借款记录查询
	
	//等到借款的总额
	public List<Loadrecord> findLoadrecordAll()throws Exception;
			
	//根据项目类型，借款方式，是否过审，时间来查询；
	public List<Loadrecord> findLoadrecordAllTime(int pid,String  loadtype,int status,Timestamp s,Timestamp e)throws Exception;
	
	public Loadrecord findLoadByid(int id);
	public int addLoad(Loadrecord loadrecord);//
}
