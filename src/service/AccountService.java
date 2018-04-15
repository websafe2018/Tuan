package service;

import java.util.List;

import entity.Account;

public interface AccountService {
	
	public Integer checkIdNum(String idnumber) throws Exception;
	
	public Integer checkBank(String bankNumber) throws Exception;
	
	public boolean addAccount(Account acc) throws Exception;//申请快速借款向个人账户表添加账单
	public boolean updateAccountByUid(Account acc) throws Exception;//申请快速借款向个人账户表修改账单
	
	public Account findAccByUidtwo (int uid)throws Exception;
	
	public Integer rechargeAcc(double money,int id) throws Exception;//充值
	
	public List<Account>  findAccountNumber()throws Exception;
	
	//动态修改用户账户数据
	public Integer updateAcc(Account acc);
}
