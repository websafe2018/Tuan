package service;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.BackPlan;

public interface BackPlanService {

public Integer addBackPlan(BackPlan b) throws Exception;
	
	public List<BackPlan> findBackPlan(int lid,Timestamp s,Timestamp e) throws Exception;
	
	public Integer updateStyle(int id,int bstyle) throws Exception;
	
	public BackPlan findBpById(int id) throws Exception;
}
