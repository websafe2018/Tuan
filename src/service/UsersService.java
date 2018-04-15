package service;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Account;
import entity.Basicinfo;
import entity.Users;

public interface UsersService {
	public List<Users> findUsersAll() throws Exception;
	
	public Users adminLogin(String userName,String password) throws Exception;
	
	public List<Users> findAdminUsersAll() throws Exception;
	
	public Integer delUserById(int id) throws Exception;
	
	public Users findUserById(int id) throws Exception;
	
	public Integer updateUser(Users user) throws Exception;
	
	public List<Users> findUsersByRole(int pageno,Timestamp start,Timestamp end ,String condition ) throws Exception;
	
	public Integer getVipCount(Timestamp start,Timestamp end ,String condition ) throws Exception;
	
	public boolean updateVIP(Users u,Account acc,Basicinfo basic) throws Exception;
	
	public Users findVipById(int id) throws Exception;
	
	public boolean delVip(int id) throws Exception;
	
	public Integer checkTel(String telNo) throws Exception;
	
	public Integer checkEmail(String email) throws Exception;
	
	public boolean addVip(Users u,Account acc,Basicinfo basic) throws Exception;
	
	public Integer chenkuName(String userName) throws Exception;
	
	public Integer changePass(String newPass,int id) throws Exception;
	
	public Integer addVipUser(Users u) throws Exception;
	
	public Users login(String condition,String password) throws Exception;
	
	public Integer checkLoginName(String condition) throws Exception;
	
	public boolean register(Users u,Account a,Basicinfo b) throws Exception;
	
	//修改用户数据，动态sql执行
	public Integer updateU(Users u)throws Exception;
	//查找用户所有信息
	public Users findUsersMsg(int uid);
}
