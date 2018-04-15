package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 
 * @author Administrator
 * 用户交易记录表
 */
public class Record {

	  private int id;// int(4) NOT NULL AUTO_INCREMENT COMMENT '交易记录账户编号',
	  private int uid ;//int(4) DEFAULT NULL COMMENT '用户账号编号',
	  @JSONField(format="yyyy-MM-dd")
	  private Timestamp rTime;// datetime NOT NULL,
	  private String rType ;//varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '借入，借出，充值',
	  private double blance;// double(8,2) DEFAULT NULL COMMENT '交易前余额',
	  private double rMoney ;//double(8,2) DEFAULT NULL COMMENT '交易金额',
	  private String remarks;// varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Timestamp getrTime() {
		return rTime;
	}
	public void setrTime(Timestamp rTime) {
		this.rTime = rTime;
	}
	public String getrType() {
		return rType;
	}
	public void setrType(String rType) {
		this.rType = rType;
	}
	public double getBlance() {
		return blance;
	}
	public void setBlance(double blance) {
		this.blance = blance;
	}
	public double getrMoney() {
		return rMoney;
	}
	public void setrMoney(double rMoney) {
		this.rMoney = rMoney;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Record(int id, int uid, Timestamp rTime, String rType, double blance, double rMoney, String remarks) {
		super();
		this.id = id;
		this.uid = uid;
		this.rTime = rTime;
		this.rType = rType;
		this.blance = blance;
		this.rMoney = rMoney;
		this.remarks = remarks;
	}
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	  
	  
}
