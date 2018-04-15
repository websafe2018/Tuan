package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 散标投资
 * @author Administrator
 *
 */

public class Standardinvest implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer pid;//标的类型id
	private String sname;//项目代码
	private Double stotelMoney;//项目总金额
	private Double srate;//预期年化利率
	private Integer speriod;//周转期限
	private Double sprice;//出借单位
	private String srepayType;//还款方式
	private Integer sloadNumber;//借入份数
	private Integer srestNumber;//剩余份数
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp istartTime;//开放时间
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp sopenPeriod;//开放周期
	private Integer spreStatus;//满标状态 0未满，1已满
	private Integer sbackStatus;//上下架状态 0未上 1 已上

	
	// Constructors

	/** default c
	 * onstructor */
	public Standardinvest() {
		
	}

	/** full constructor */
	public Standardinvest(Integer pid, String sname, Double stotelMoney, Double srate, Integer speriod, Double sprice,
			String srepayType, Integer sloadNumber, Integer srestNumber, Timestamp istartTime, Timestamp sopenPeriod,
			Integer spreStatus, Integer sbackStatus) {
		this.pid = pid;
		this.sname = sname;
		this.stotelMoney = stotelMoney;
		this.srate = srate;
		this.speriod = speriod;
		this.sprice = sprice;
		this.srepayType = srepayType;
		this.sloadNumber = sloadNumber;
		this.srestNumber = srestNumber;
		this.istartTime = istartTime;
		this.sopenPeriod = sopenPeriod;
		this.spreStatus = spreStatus;
		this.sbackStatus = sbackStatus;
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

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Double getStotelMoney() {
		return this.stotelMoney;
	}

	public void setStotelMoney(Double stotelMoney) {
		this.stotelMoney = stotelMoney;
	}

	public Double getSrate() {
		return this.srate;
	}

	public void setSrate(Double srate) {
		this.srate = srate;
	}

	public Integer getSperiod() {
		return this.speriod;
	}

	public void setSperiod(Integer speriod) {
		this.speriod = speriod;
	}

	public Double getSprice() {
		return this.sprice;
	}

	public void setSprice(Double sprice) {
		this.sprice = sprice;
	}

	public String getSrepayType() {
		return this.srepayType;
	}

	public void setSrepayType(String srepayType) {
		this.srepayType = srepayType;
	}

	public Integer getSloadNumber() {
		return this.sloadNumber;
	}

	public void setSloadNumber(Integer sloadNumber) {
		this.sloadNumber = sloadNumber;
	}

	public Integer getSrestNumber() {
		return this.srestNumber;
	}

	public void setSrestNumber(Integer srestNumber) {
		this.srestNumber = srestNumber;
	}

	public Timestamp getIstartTime() {
		return this.istartTime;
	}

	public void setIstartTime(Timestamp istartTime) {
		this.istartTime = istartTime;
	}

	public Timestamp getSopenPeriod() {
		return this.sopenPeriod;
	}

	public void setSopenPeriod(Timestamp sopenPeriod) {
		this.sopenPeriod = sopenPeriod;
	}

	public Integer getSpreStatus() {
		return this.spreStatus;
	}

	public void setSpreStatus(Integer spreStatus) {
		this.spreStatus = spreStatus;
	}

	public Integer getSbackStatus() {
		return this.sbackStatus;
	}

	public void setSbackStatus(Integer sbackStatus) {
		this.sbackStatus = sbackStatus;
	}

}