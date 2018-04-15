package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.RebackrecordDao;
import entity.Rebackrecord;
import service.RebackrecordService;
@Service
public class RebackrecordServiceImpl implements RebackrecordService{

	@Resource
	private RebackrecordDao rdao;
	@Override
	public List<Rebackrecord> getRebackBodyByLid(int lid) throws Exception {
		// TODO Auto-generated method stub
		return rdao.getRebackBodyByLid(lid);
	}

	@Override
	public Integer addReBack(Rebackrecord r) throws Exception {
		// TODO Auto-generated method stub
		return rdao.addReBack(r);
	}

	@Override
	public Integer updateReback(Rebackrecord r) throws Exception {
		// TODO Auto-generated method stub
		return rdao.updateReback(r);
	}

}
