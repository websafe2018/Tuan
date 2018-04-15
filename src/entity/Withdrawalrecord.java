package entity;

import java.sql.Timestamp;

/**
 * 提现表
 * Withdrawalrecord entity. @author MyEclipse Persistence Tools
 */

public class Withdrawalrecord implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer aid;
	private String draNumber;
	private String drawalType;
	private Double drawalMoney;
	private Timestamp drawalTime;
	private Double withdrawal;
	private Integer draStatus;
	private Integer draResult;

	// Constructors

	/** default constructor */
	public Withdrawalrecord() {
	}

	/** full constructor */
	public Withdrawalrecord(Integer aid, String draNumber, String drawalType, Double drawalMoney, Timestamp drawalTime,
			Double withdrawal, Integer draStatus, Integer draResult) {
		this.aid = aid;
		this.draNumber = draNumber;
		this.drawalType = drawalType;
		this.drawalMoney = drawalMoney;
		this.drawalTime = drawalTime;
		this.withdrawal = withdrawal;
		this.draStatus = draStatus;
		this.draResult = draResult;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getDraNumber() {
		return this.draNumber;
	}

	public void setDraNumber(String draNumber) {
		this.draNumber = draNumber;
	}

	public String getDrawalType() {
		return this.drawalType;
	}

	public void setDrawalType(String drawalType) {
		this.drawalType = drawalType;
	}

	public Double getDrawalMoney() {
		return this.drawalMoney;
	}

	public void setDrawalMoney(Double drawalMoney) {
		this.drawalMoney = drawalMoney;
	}

	public Timestamp getDrawalTime() {
		return this.drawalTime;
	}

	public void setDrawalTime(Timestamp drawalTime) {
		this.drawalTime = drawalTime;
	}

	public Double getWithdrawal() {
		return this.withdrawal;
	}

	public void setWithdrawal(Double withdrawal) {
		this.withdrawal = withdrawal;
	}

	public Integer getDraStatus() {
		return this.draStatus;
	}

	public void setDraStatus(Integer draStatus) {
		this.draStatus = draStatus;
	}

	public Integer getDraResult() {
		return this.draResult;
	}

	public void setDraResult(Integer draResult) {
		this.draResult = draResult;
	}

}