package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Basicinfo;

public interface BasicinfoDao {
	public Integer updateBasiByUid(Basicinfo basi);
	
	public Integer delBasicByUid(int uid);
	
	public List<Basicinfo> findBasicByUid(int uid);
	
	public Integer addVipBasic(Basicinfo basic);
	
	public Integer addBasicinfo(Basicinfo basic);//申请快速借款时添加基本信息
	public Integer updateBasiByUidtwo(Basicinfo basi);//申请快速借款时修改基本信息
	public Basicinfo findBasicByUidtwo(int uid);
	
	public Basicinfo getbBodyByUid(int uid );
	
	public  List<Basicinfo> findBasicByAll(); //查找表 所有信息
	

	public Integer updateBasiByUidThree(Basicinfo basi);//个人中心修改基本信息
	public Integer addBasiByUidThree(Basicinfo basi);//个人中心添加基本信息
	
	public Integer updateBasiByheadPic(@Param("headPic") String headPic,@Param("uid") int uid);//修改图片路径信息
	public Integer updateBasiBynickname(@Param("nickname") String nickname,@Param("uid") int uid);//修改昵称信息
}
