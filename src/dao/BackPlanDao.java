package dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.BackPlan;

public interface BackPlanDao {

	public Integer addBackPlan(BackPlan b);
	
	public List<BackPlan> findBackPlan(int lid,@Param("s")Timestamp s,@Param("e")Timestamp e);
	
	public Integer updateStyle(int id,int bstyle);
	
	public BackPlan findBpById(int id);
}
