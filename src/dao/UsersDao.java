package dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Users;

public interface UsersDao {
	public List<Users> findUsersAll();
	
	public Users adminLogin(String userName,String password);
	
	public List<Users> findAdminUsersAll();
	
	public Integer delUserById(int id);
	
	public Users findUserById(int id);
	
	public Integer updateUser(Users user);
	
	public List<Users> findUsersByRole(int pageno,@Param("start")Timestamp start,@Param("end")Timestamp end ,@Param("cond")String condition );
	
	public Integer getVipCount(@Param("start")Timestamp start,@Param("end")Timestamp end ,@Param("cond")String condition );
	
	public Users findVipById(int id);
	
	public Integer updateVIP(Users u);
	
	public Integer checkTel(String telNo);
	
	public Integer checkEmail(String email);
	
	public Integer addVipUser(Users u);
	
	public Users findUserByTel(String telNo);
	
	public Users findUserByEmail(String email);
	
	public Integer chenkuName(String userName);
	
	public Integer changePass(@Param("newPass")String newPass,int id);
	
	//public Integer addAdmin(Users u);
	
	public Users login(String condition,String password);
	
	public Integer checkLoginName(String condition);
	
	public Users getuBodyById(int uid);
	
	//修改用户数据，动态sql执行
	public Integer updateU(Users u);
	//查找用户所有信息
	public Users findUsersMsg(int uid);
}
