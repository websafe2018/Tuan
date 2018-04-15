package dao;

import java.util.List;

import entity.Account;

public interface AccountDao {
	public Integer updateAccByUid(Account acc);
	
	public Integer delAccByUid(int uid);
	
	public List<Account> findAccByUid(int uid);
	
	public Integer checkIdNum(String idnumber);
	
	public Integer checkBank(String bankNumber);
	
	public Integer addVipAcc(Account acc);
	
	public Integer addAccount(Account acc);//申请快速借款向个人账户表添加账单
	public Integer updateAccountByUid(Account acc);//申请快速借款向个人账户表修改账单
	public Account findAccByUidtwo (int uid);
	
	public Account getaBodyByUid(int uid);
	
	public Integer rechargeAcc(double money,int id);//充值
	
	//查询身份证号码年
		public List<Account>  findAccountNumber();
		
	//动态修改用户账户数据
	public Integer updateAcc(Account acc);
}
