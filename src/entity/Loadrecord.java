package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 借款记录
 * @author Administrator
 *
 */

public class Loadrecord implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//用户id
	private Integer pid;//借款类型类id
	private Integer rid;//还款方式类id
	private Double loadMoney;//借款金额
	private String loadType;//结款方式
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp loadTime;//借款时间
	private Double loadRate;//借款利率
	private Integer loadPeriod;//借款期限
	private Double overRate;//逾期利率
	private Integer status;//征信审核
	private Integer assetStatus;//资产审核
	private Integer loadStatus;//借款状态
	private String telNo;//联系电话
	private String orderId;//订单号
	
	
	//----------------------------------------------
	private String userName;//用户名
	private String realName;//真实姓名
	private String organization;//单位名称
	private String address;//居住地址
	private String IDNumber;//身份证号
	private String rName;//结清方式
	
	// Constructors

	
	
	/** default constructor */
	public Loadrecord() {
	}

	public String getIDNumber() {
		return IDNumber;
	}

	public void setIDNumber(String iDNumber) {
		IDNumber = iDNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/** minimal constructor */
	public Loadrecord(Integer id) {
		this.id = id;
	}

	public String getrName() {
		return rName;
	}


	public void setrName(String rName) {
		this.rName = rName;
	}


	/** full constructor */
	public Loadrecord(Integer id, Integer uid, Integer pid, Integer rid, Double loadMoney, String loadType,
			Timestamp loadTime, Double loadRate, Integer loadPeriod, Double overRate, Integer status,
			Integer assetStatus, Integer loadStatus, String telNo,String orderId) {
		this.id = id;
		this.uid = uid;
		this.pid = pid;
		this.rid = rid;
		this.loadMoney = loadMoney;
		this.loadType = loadType;
		this.loadTime = loadTime;
		this.loadRate = loadRate;
		this.loadPeriod = loadPeriod;
		this.overRate = overRate;
		this.status = status;
		this.assetStatus = assetStatus;
		this.loadStatus = loadStatus;
		this.telNo = telNo;
		this.orderId = orderId;
	}

	// Property accessors
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Integer getId() {
		return this.id;
	}

	

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Double getLoadMoney() {
		return this.loadMoney;
	}

	public void setLoadMoney(Double loadMoney) {
		this.loadMoney = loadMoney;
	}

	public String getLoadType() {
		return this.loadType;
	}

	public void setLoadType(String loadType) {
		this.loadType = loadType;
	}

	public Timestamp getLoadTime() {
		return this.loadTime;
	}

	public void setLoadTime(Timestamp loadTime) {
		this.loadTime = loadTime;
	}

	public Double getLoadRate() {
		return this.loadRate;
	}

	public void setLoadRate(Double loadRate) {
		this.loadRate = loadRate;
	}

	public Integer getLoadPeriod() {
		return this.loadPeriod;
	}

	public void setLoadPeriod(Integer loadPeriod) {
		this.loadPeriod = loadPeriod;
	}

	public Double getOverRate() {
		return this.overRate;
	}

	public void setOverRate(Double overRate) {
		this.overRate = overRate;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getAssetStatus() {
		return this.assetStatus;
	}

	public void setAssetStatus(Integer assetStatus) {
		this.assetStatus = assetStatus;
	}

	public Integer getLoadStatus() {
		return this.loadStatus;
	}

	public void setLoadStatus(Integer loadStatus) {
		this.loadStatus = loadStatus;
	}

	public String getTelNo() {
		return this.telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

}