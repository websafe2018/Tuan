package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.RecordDao;
import entity.Record;
import service.RecordService;
@Service
public class RecordServiceImpl implements RecordService{

	@Resource
	private RecordDao rdao;
	/*
	 * 新增交易记录
	 */
	@Override
	public Integer addRecord(Record r) {
		// TODO Auto-generated method stub
		return rdao.addRecord(r);
	}
	/*
	 * 查询所有的交易记录
	 */
	@Override
	public List<Record> findRecordAllByUid(int uid) {
		// TODO Auto-generated method stub
		return rdao.findRecordAllByUid(uid);
	}
	@Override
	public List<Record> findReAll(int uid, String attrval, String rtype, String rTime) throws Exception {
		return rdao.findReAll(uid, attrval, rtype, rTime);
	}

}
