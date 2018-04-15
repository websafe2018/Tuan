package service;

import java.util.List;

import entity.Rebackrecord;

public interface RebackrecordService {

public List<Rebackrecord> getRebackBodyByLid(int lid) throws Exception; 
	
public Integer addReBack(Rebackrecord r) throws Exception;

public Integer updateReback(Rebackrecord r) throws Exception;
}
