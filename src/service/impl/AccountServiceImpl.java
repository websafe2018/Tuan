package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AccountDao;
import entity.Account;
import service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{

	@Resource
	private AccountDao adao;
	
	/*
	 * 验证身份证号
	 */
	@Override
	public Integer checkIdNum(String idnumber) throws Exception{
		return adao.checkIdNum(idnumber);
	}

	/*
	 * 验证银行卡号
	 */
	@Override
	public Integer checkBank(String bankNumber) throws Exception{
		// TODO Auto-generated method stub
		return adao.checkBank(bankNumber);
	}

	@Override
	public boolean addAccount(Account acc) throws Exception {
		// TODO Auto-generated method stub
		return adao.addAccount(acc)>0?true:false;
	}
	@Transactional
	@Override
	public boolean updateAccountByUid(Account acc) throws Exception {
		// TODO Auto-generated method stub
		return adao.updateAccountByUid(acc) >0?true:false;
	}

	@Override
	public Account findAccByUidtwo(int uid) throws Exception {
		// TODO Auto-generated method stub
		return adao.findAccByUidtwo(uid);
	}

	/*
	 * 充值
	 */
	@Transactional
	@Override
	public Integer rechargeAcc(double money, int id) throws Exception {
		// TODO Auto-generated method stub
		return adao.rechargeAcc(money, id);
	}

	/*
	 * 查找年级
	 */
	@Override
	public List<Account> findAccountNumber() throws Exception {
		// TODO Auto-generated method stub
		return adao.findAccountNumber();
	}

	//修改用户账户数据
	@Transactional
	public Integer updateAcc(Account acc) {
		// TODO Auto-generated method stub
		return adao.updateAcc(acc);
	}

	
}
