package service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.InvestrecordDao;
import entity.Investrecord;
import service.InvestrecordService;

@Service
public class InvestrecordServiceImpl implements InvestrecordService{

	@Resource
	private InvestrecordDao idao;
	
	
	@Override
	public Investrecord getInvestBySid(int sid,int uid) {
		// TODO Auto-generated method stub
		return idao.getInvestBySid(sid,uid);
	}

}
