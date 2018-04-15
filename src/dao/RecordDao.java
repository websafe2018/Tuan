package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Record;

public interface RecordDao {

	public Integer addRecord(Record r);
	
	public List<Record> findRecordAllByUid(int uid);
	
	public List<Record> findReAll(int uid,@Param("remark")String attrval,@Param("type")String rtype,@Param("time")String rTime);
	
	
}
