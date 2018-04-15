package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 还款记录
 * @author Administrator
 *
 */

public class Rebackrecord implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer lid;//借款记录id
	private Double reTotal;//需还本息
	private Double reMoney;//已还金额
	private Double overMoney;//逾期金额
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp reTime;//结清时间
	private Integer reNumber;//已还份数
	private Integer reStatus;//结清状态
	private Integer ereback;//提前结清
	private Integer punReback;//准时结清
	private Integer overReback;//逾期期数
	private Integer overPay;//逾期垫付

	// Constructors

	/** default constructor */
	public Rebackrecord() {
	}

	/** full constructor */
	public Rebackrecord(Integer lid, Double reTotal, Double reMoney, Double overMoney, Timestamp reTime,
			Integer reNumber, Integer reStatus, Integer ereback, Integer punReback, Integer overReback,
			Integer overPay) {
		this.lid = lid;
		this.reTotal = reTotal;
		this.reMoney = reMoney;
		this.overMoney = overMoney;
		this.reTime = reTime;
		this.reNumber = reNumber;
		this.reStatus = reStatus;
		this.ereback = ereback;
		this.punReback = punReback;
		this.overReback = overReback;
		this.overPay = overPay;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getLid() {
		return this.lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public Double getReTotal() {
		return this.reTotal;
	}

	public void setReTotal(Double reTotal) {
		this.reTotal = reTotal;
	}

	public Double getReMoney() {
		return this.reMoney;
	}

	public void setReMoney(Double reMoney) {
		this.reMoney = reMoney;
	}

	public Double getOverMoney() {
		return this.overMoney;
	}

	public void setOverMoney(Double overMoney) {
		this.overMoney = overMoney;
	}

	public Timestamp getReTime() {
		return this.reTime;
	}

	public void setReTime(Timestamp reTime) {
		this.reTime = reTime;
	}

	public Integer getReNumber() {
		return this.reNumber;
	}

	public void setReNumber(Integer reNumber) {
		this.reNumber = reNumber;
	}

	public Integer getReStatus() {
		return this.reStatus;
	}

	public void setReStatus(Integer reStatus) {
		this.reStatus = reStatus;
	}

	public Integer getEreback() {
		return this.ereback;
	}

	public void setEreback(Integer ereback) {
		this.ereback = ereback;
	}

	public Integer getPunReback() {
		return this.punReback;
	}

	public void setPunReback(Integer punReback) {
		this.punReback = punReback;
	}

	public Integer getOverReback() {
		return this.overReback;
	}

	public void setOverReback(Integer overReback) {
		this.overReback = overReback;
	}

	public Integer getOverPay() {
		return this.overPay;
	}

	public void setOverPay(Integer overPay) {
		this.overPay = overPay;
	}

}