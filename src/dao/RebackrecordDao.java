package dao;

import java.util.List;

import entity.Rebackrecord;

public interface RebackrecordDao {

	public List<Rebackrecord> getRebackBodyByLid(int lid); 
	
	public Integer addReBack(Rebackrecord r);
	
	public Integer updateReback(Rebackrecord r);
	
}
