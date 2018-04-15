package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 个人充值记录表
 */

public class Rechargerecord implements java.io.Serializable {

	// Fields

	private Integer id;//主键
	private Integer aid;//个人账户表id
	private String chargeNumber;//充值流水号
	private String chargeType;//充值方式
	private Double chargeMoney;//充值金额
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp chargeTime;//充值时间
	private Integer chargeStatus;//充值状态1:充值中/0：已到账
//新增
	private String realName;
	// Constructors

	/** default constructor */
	public Rechargerecord() {
	}

	public Rechargerecord(Integer id, Integer aid, String chargeNumber, String chargeType, Double chargeMoney,
			Timestamp chargeTime, Integer chargeStatus, String realName) {
		super();
		this.id = id;
		this.aid = aid;
		this.chargeNumber = chargeNumber;
		this.chargeType = chargeType;
		this.chargeMoney = chargeMoney;
		this.chargeTime = chargeTime;
		this.chargeStatus = chargeStatus;
		this.realName = realName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	/** full constructor */
	public Rechargerecord(Integer aid, String chargeNumber, String chargeType, Double chargeMoney, Timestamp chargeTime,
			Integer chargeStatus) {
		this.aid = aid;
		this.chargeNumber = chargeNumber;
		this.chargeType = chargeType;
		this.chargeMoney = chargeMoney;
		this.chargeTime = chargeTime;
		this.chargeStatus = chargeStatus;
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

	public String getChargeNumber() {
		return this.chargeNumber;
	}

	public void setChargeNumber(String chargeNumber) {
		this.chargeNumber = chargeNumber;
	}

	public String getChargeType() {
		return this.chargeType;
	}

	public void setChargeType(String chargeType) {
		this.chargeType = chargeType;
	}

	public Double getChargeMoney() {
		return this.chargeMoney;
	}

	public void setChargeMoney(Double chargeMoney) {
		this.chargeMoney = chargeMoney;
	}

	public Timestamp getChargeTime() {
		return this.chargeTime;
	}

	public void setChargeTime(Timestamp chargeTime) {
		this.chargeTime = chargeTime;
	}

	public Integer getChargeStatus() {
		return this.chargeStatus;
	}

	public void setChargeStatus(Integer chargeStatus) {
		this.chargeStatus = chargeStatus;
	}

}