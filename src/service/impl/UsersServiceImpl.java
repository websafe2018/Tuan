package service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AccountDao;
import dao.BasicinfoDao;
import dao.UsersDao;
import entity.Account;
import entity.Basicinfo;
import entity.Users;
import service.UsersService;
/**
 * Users业务层，在此层统一抛异常，在control层统一用try-catch语句处理异常
 * 事物也需在此层开启 org.springframework.transaction.annotation.Transactional;
 * 在方法前加此注解@Transactional
 */
@Service
public class UsersServiceImpl implements UsersService{
	
	@Resource
	private UsersDao udao;
	@Resource
	private AccountDao adao;
	@Resource
	private BasicinfoDao bdao;

	/*
	 * 查找所有user用户
	 */
	@Override
	public List<Users> findUsersAll() throws Exception {
		
		return udao.findUsersAll();
	}
	
	/*
	 * 后台人员登录
	 */
	@Override
	public Users adminLogin(String userName, String password) throws Exception {
		
		return udao.adminLogin(userName, password);
	}

	/*
	 * 查询所有后台人员
	 */
	@Override
	public List<Users> findAdminUsersAll() throws Exception {
		
		return udao.findAdminUsersAll();
	}
	/*
	 * 根据id删除人员
	 */
	@Override
	public Integer delUserById(int id) throws Exception{
		return udao.delUserById(id);
	}

	/*
	 * 根据id查找该用户
	 */
	@Override
	public Users findUserById(int id) throws Exception {
		return udao.findUserById(id);
	}
	
	/*
	 * 更新用户信息
	 */
	@Transactional
	@Override
	public Integer updateUser(Users user) throws Exception {
		// TODO Auto-generated method stub
		return udao.updateUser(user);
	}

	/*
	 * 查找所有的会员账户信息
	 */
	@Override
	public List<Users> findUsersByRole(int pageno, Timestamp start, Timestamp end, String condition) throws Exception {
		// TODO Auto-generated method stub
		return udao.findUsersByRole((pageno-1)*5, start, end, condition);
	}
	
	/*
	 * 得到所有的会员信息
	 */
	@Override
	public Integer getVipCount(Timestamp start, Timestamp end, String condition) throws Exception {
		// TODO Auto-generated method stub
		return udao.getVipCount(start, end, condition);
	}
	
	/*
	 * 更新会员信息
	 */
	@Transactional
	@Override
	public boolean updateVIP(Users u ,Account acc,Basicinfo basic) throws Exception {
		//Users user=udao.findVipById(id);
		//if(!(user.getAcBalance()==u.getAcBalance()&&user.getRealName().equals(u.getRealName())&&user.getIdnumber().equals(u.getIdnumber())&&
		//		user.getBankNumber().equals(u.getBankNumber())
		//if(!(user.getAcBalance().equals(u.getAddress())&&user.getUnitAddres().equals(u.getUnitAddres()))){
		//if(!(user.getRegisterTime().equals(u.getRegisterTime())&&user.getEmail().equals(u.getEmail())&&user.getTelNo().equals(u.getTelNo()))){
		
		//a表更新 flag状态
		//b表更新 flag状态
		//u表更新 flag状态||
		boolean flag=false;
		if(udao.updateVIP(u)>0|bdao.updateBasiByUid(basic)>0|adao.updateAccByUid(acc)>0){
			flag=true;
		}
		return flag;
	}

	/*
	 * 联表查询vip用户
	 */
	@Override
	public Users findVipById(int id) throws Exception {
		// TODO Auto-generated method stub
		return udao.findVipById(id);
	}

	/*
	 * 删除所有会员信息
	 */
	@Transactional
	@Override
	public boolean delVip(int id) throws Exception {
		boolean flag=false;
		boolean flag1=false;
		boolean flag2=false;
		
		if(udao.findUserById(id)!=null){
			flag=udao.delUserById(id)>0?true:false;
		}else{
			flag=true;
		}
		if(adao.findAccByUid(id).size()>0){
			flag1=adao.delAccByUid(id)>0?true:false;
		}else{
			flag1=true;
		}
		if(bdao.findBasicByUid(id).size()>0){
			flag2=bdao.delBasicByUid(id)>0?true:false;
		}else{
			flag2=true;
		}
		
		return (flag&&flag1&&flag2);
	}
	/*
	 * 验证手机号码
	 */
	@Override
	public Integer checkTel(String telNo) throws Exception {
		// TODO Auto-generated method stub
		return udao.checkTel(telNo);
	}
	/*
	 * 验证邮箱
	 */
	@Override
	public Integer checkEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return udao.checkEmail(email);
	}

	/*
	 * 增加会员
	 */
	@Transactional
	@Override
	public boolean addVip(Users u, Account acc, Basicinfo basic) throws Exception {
		
		if(udao.addVipUser(u)>0){
			Users user=udao.findUserByTel(u.getTelNo());
			if(user!=null){
				int uid=user.getId();
				acc.setUid(uid);
				basic.setUid(uid);
				if(adao.addVipAcc(acc)>0&&bdao.addVipBasic(basic)>0){
					return true;
				}
			}
		}
		return false;
	}

	/*
	 * 检查用户名
	 */
	@Override
	public Integer chenkuName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return udao.chenkuName(userName);
	}

	/*
	 * 修改密码
	 */
	@Transactional
	@Override
	public Integer changePass(String newPass, int id) throws Exception {
		return udao.changePass(newPass, id);
	}

	/*
	 * 添加用户
	 */
	@Transactional
	@Override
	public Integer addVipUser(Users u) throws Exception {
		
		return udao.addVipUser(u);
	}

	/*
	 * 用户登录
	 */
	@Override
	public Users login(String condition, String password) throws Exception {
		return udao.login(condition, password);
	}

	/*
	 * 检查前台登录用户名
	 */
	@Override
	public Integer checkLoginName(String condition) throws Exception {
		// TODO Auto-generated method stub
		return udao.checkLoginName(condition);
	}
	
	/*
	 * 注册方法
	 */
	@Transactional
	@Override
	public boolean register(Users u, Account a, Basicinfo b) throws Exception {
		String email=u.getEmail();
		if(udao.addVipUser(u)>0){
			u=udao.findUserByEmail(email);
			if(u!=null){
				a.setUid(u.getId());
				a.setAcBalance(0.0);
				a.setBlockMoney(0.00);
				
				
				b.setUid(u.getId());
				b.setNickname(u.getEmail());
				if(adao.addVipAcc(a)>0&&bdao.addVipBasic(b)>0){
					return true;
				}
			}
		}
		return false;
	}
	/*
	 * 修改用户数据
	 */
	@Transactional
	@Override
	public Integer updateU(Users u) throws Exception {
		// TODO Auto-generated method stub
		return udao.updateU(u);
	}

	@Override
	public Users findUsersMsg(int uid) {
		// TODO Auto-generated method stub
		return udao.findUsersMsg(uid);
	}
	
	
	
}
