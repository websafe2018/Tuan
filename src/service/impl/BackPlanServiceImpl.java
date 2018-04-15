package service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.BackPlanDao;
import entity.BackPlan;
import service.BackPlanService;
@Service
public class BackPlanServiceImpl implements BackPlanService{

	@Resource
	private BackPlanDao bdao;
	@Transactional
	@Override
	public Integer addBackPlan(BackPlan b) throws Exception {
		// TODO Auto-generated method stub
		return bdao.addBackPlan(b);
	}

	@Override
	public List<BackPlan> findBackPlan(int lid,Timestamp s, Timestamp e) throws Exception {
		// TODO Auto-generated method stub
		return bdao.findBackPlan(lid,s, e);
	}

	@Transactional
	@Override
	public Integer updateStyle(int id, int bstyle) throws Exception {
		// TODO Auto-generated method stub
		return bdao.updateStyle(id, bstyle);
	}

	@Override
	public BackPlan findBpById(int id) throws Exception {
		// TODO Auto-generated method stub
		return bdao.findBpById(id);
	}
	

}
