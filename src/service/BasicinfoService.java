package service;

import java.util.List;

import entity.Basicinfo;

public interface BasicinfoService {

	public boolean addBasicinfo(Basicinfo basic) throws Exception;//申请快速借款时添加基本信息
	public boolean updateBasiByUidtwo(Basicinfo basi) throws Exception;//申请快速借款时修改基本信息
	public Basicinfo findBasicByUidtwo(int uid)throws Exception;

	public  List<Basicinfo> findBasicByAll() throws Exception;
	
	public boolean updateBasiByUidThree(Basicinfo basi)throws Exception;//个人中心修改基本信息
	public boolean addBasiByUidThree(Basicinfo basi)throws Exception;//个人中心添加基本信息

	
	public boolean updateBasiByheadPic( String headPic,int uid)throws Exception;//修改图片路径信息
	public boolean updateBasiBynickname( String nickname,int uid)throws Exception;//修改昵称信息
}
