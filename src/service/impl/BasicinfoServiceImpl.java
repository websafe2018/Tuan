package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.BasicinfoDao;
import entity.Basicinfo;
import service.BasicinfoService;
@Service
public class BasicinfoServiceImpl  implements BasicinfoService {

	@Resource
	private BasicinfoDao dao;
	
	
	@Override
	public boolean addBasicinfo(Basicinfo basic) throws Exception {
		// TODO Auto-generated method stub
		return dao.addBasicinfo(basic)>0?true:false;
	}

	@Override
	public boolean updateBasiByUidtwo(Basicinfo basi) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateBasiByUidtwo(basi) >0?true:false;
	}

	@Override
	public Basicinfo findBasicByUidtwo(int uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.findBasicByUidtwo(uid);
	}

	@Override
	public List<Basicinfo> findBasicByAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.findBasicByAll();
	}

	@Transactional
	@Override
	public boolean updateBasiByUidThree(Basicinfo basi) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateBasiByUidThree(basi)>0?true:false;
	}
	@Transactional
	@Override
	public boolean addBasiByUidThree(Basicinfo basi) throws Exception {
		// TODO Auto-generated method stub
		return dao.addBasiByUidThree(basi)>0?true:false;
	}
	
	
	@Transactional
	@Override
	public boolean updateBasiByheadPic(String headPic,int uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateBasiByheadPic(headPic, uid)>0?true:false;
	}
	@Transactional
	@Override
	public boolean updateBasiBynickname(String nickname,int uid) throws Exception {
		// TODO Auto-generated method stub
		return  dao.updateBasiBynickname(nickname, uid)>0?true:false;
	}

	
}
