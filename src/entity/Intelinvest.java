package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;
/**
 * 智能投资
 * @author Administrator
 *
 */

public class Intelinvest implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer pid;//项目id
	private String iname;//项目代码
	private Double irate;//预期年化利率
	private Integer iperiod;//投资周期
	private String interType;//付息方式
	private Integer planPeriod;//计划期限
	private Double planPrice;//计划单位
	private Integer irestNumber;//剩余份数
	private Double planMoney;//计划金额
	private String repayType;//还款方式
	private Integer joinNumber;//加入人次
	private Integer preInvest;//优先投标次数
	private Double compRate;//优先投标完成率
	private Integer beJoin;//已加入份额
	private Integer hpeNumber;//帮助借款人
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp istartTime;//开放时间
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp openPeriod;//开放周期
	private Integer preStatus;//满标状态
	private Integer backStatus;//上下架状态

	// Constructors

	/** default constructor */
	public Intelinvest() {
	}

	/** full constructor */
	public Intelinvest(Integer pid, String iname, Double irate, Integer iperiod, String interType, Integer planPeriod,
			Double planPrice, Integer irestNumber, Double planMoney, String repayType, Integer joinNumber,
			Integer preInvest, Double compRate, Integer beJoin, Integer hpeNumber, Timestamp istartTime,
			Timestamp openPeriod, Integer preStatus, Integer backStatus) {
		this.pid = pid;
		this.iname = iname;
		this.irate = irate;
		this.iperiod = iperiod;
		this.interType = interType;
		this.planPeriod = planPeriod;
		this.planPrice = planPrice;
		this.irestNumber = irestNumber;
		this.planMoney = planMoney;
		this.repayType = repayType;
		this.joinNumber = joinNumber;
		this.preInvest = preInvest;
		this.compRate = compRate;
		this.beJoin = beJoin;
		this.hpeNumber = hpeNumber;
		this.istartTime = istartTime;
		this.openPeriod = openPeriod;
		this.preStatus = preStatus;
		this.backStatus = backStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getIname() {
		return this.iname;
	}

	public void setIname(String iname) {
		this.iname = iname;
	}

	public Double getIrate() {
		return this.irate;
	}

	public void setIrate(Double irate) {
		this.irate = irate;
	}

	public Integer getIperiod() {
		return this.iperiod;
	}

	public void setIperiod(Integer iperiod) {
		this.iperiod = iperiod;
	}

	public String getInterType() {
		return this.interType;
	}

	public void setInterType(String interType) {
		this.interType = interType;
	}

	public Integer getPlanPeriod() {
		return this.planPeriod;
	}

	public void setPlanPeriod(Integer planPeriod) {
		this.planPeriod = planPeriod;
	}

	public Double getPlanPrice() {
		return this.planPrice;
	}

	public void setPlanPrice(Double planPrice) {
		this.planPrice = planPrice;
	}

	public Integer getIrestNumber() {
		return this.irestNumber;
	}

	public void setIrestNumber(Integer irestNumber) {
		this.irestNumber = irestNumber;
	}

	public Double getPlanMoney() {
		return this.planMoney;
	}

	public void setPlanMoney(Double planMoney) {
		this.planMoney = planMoney;
	}

	public String getRepayType() {
		return this.repayType;
	}

	public void setRepayType(String repayType) {
		this.repayType = repayType;
	}

	public Integer getJoinNumber() {
		return this.joinNumber;
	}

	public void setJoinNumber(Integer joinNumber) {
		this.joinNumber = joinNumber;
	}

	public Integer getPreInvest() {
		return this.preInvest;
	}

	public void setPreInvest(Integer preInvest) {
		this.preInvest = preInvest;
	}

	public Double getCompRate() {
		return this.compRate;
	}

	public void setCompRate(Double compRate) {
		this.compRate = compRate;
	}

	public Integer getBeJoin() {
		return this.beJoin;
	}

	public void setBeJoin(Integer beJoin) {
		this.beJoin = beJoin;
	}

	public Integer getHpeNumber() {
		return this.hpeNumber;
	}

	public void setHpeNumber(Integer hpeNumber) {
		this.hpeNumber = hpeNumber;
	}

	public Timestamp getIstartTime() {
		return this.istartTime;
	}

	public void setIstartTime(Timestamp istartTime) {
		this.istartTime = istartTime;
	}

	public Timestamp getOpenPeriod() {
		return this.openPeriod;
	}

	public void setOpenPeriod(Timestamp openPeriod) {
		this.openPeriod = openPeriod;
	}

	public Integer getPreStatus() {
		return this.preStatus;
	}

	public void setPreStatus(Integer preStatus) {
		this.preStatus = preStatus;
	}

	public Integer getBackStatus() {
		return this.backStatus;
	}

	public void setBackStatus(Integer backStatus) {
		this.backStatus = backStatus;
	}

}