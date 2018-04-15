package entity;

import java.sql.Timestamp;
import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;

/*
 * 还款安排计划对象
 */

public class BackPlan {
	
	private int id;
	
	private int lid;	//借款编号

	@JSONField(format="yyyy-MM-dd")
	private Timestamp backTime;  //还款时间
	
	private double backMoney; //每月应还本金
	
	private double backIncome;//每月应还利息
	
	private int bstyle; //还款状态

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public Timestamp getBackTime() {
		return backTime;
	}

	public void setBackTime(Timestamp backTime) {
		this.backTime = backTime;
	}

	public double getBackMoney() {
		return backMoney;
	}

	public void setBackMoney(double backMoney) {
		this.backMoney = backMoney;
	}

	public double getBackIncome() {
		return backIncome;
	}

	public void setBackIncome(double backIncome) {
		this.backIncome = backIncome;
	}

	public int getBstyle() {
		return bstyle;
	}

	public void setBstyle(int bstyle) {
		this.bstyle = bstyle;
	}

	public BackPlan(int id, int lid, Timestamp backTime, double backMoney, double backIncome, int bstyle) {
		super();
		this.id = id;
		this.lid = lid;
		this.backTime = backTime;
		this.backMoney = backMoney;
		this.backIncome = backIncome;
		this.bstyle = bstyle;
	}

	public BackPlan() {
		super();
		// TODO Auto-generated constructor stub
	}






	
}
