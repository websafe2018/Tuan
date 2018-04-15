package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Record;

public interface RecordService {
	public Integer addRecord(Record r);
	
	public List<Record> findRecordAllByUid(int uid);
	
	public List<Record> findReAll(int uid,String attrval,String rtype,String rTime) throws Exception;
}
