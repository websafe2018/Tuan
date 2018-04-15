package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 所有投资记录
 * @author Administrator
 *
 */

public class Investrecord implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//用户id
	private Integer iid;//智能投资id
	private Integer sid;//散标投资
	private Integer bidsNumber;//投标数量
	private Double imoney;//投标金额
	private String itype;//投标方式
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp itime;//投标时间
	private Double expectIncome;//预期收益
	private Double realIncome;//实际收益
	private Integer rebackType;//结清状态

	/******************/
	private String sname;//投资标号
	private double srate;//利率
	private int speriod;//周转期限
	private String srepayType;//还款方式
	
	public Investrecord(Integer id, Integer uid, Integer iid, Integer sid, Integer bidsNumber, Double imoney,
			String itype, Timestamp itime, Double expectIncome, Double realIncome, Integer rebackType, String sname,
			double srate, int speriod, String srepayType) {
		super();
		this.id = id;
		this.uid = uid;
		this.iid = iid;
		this.sid = sid;
		this.bidsNumber = bidsNumber;
		this.imoney = imoney;
		this.itype = itype;
		this.itime = itime;
		this.expectIncome = expectIncome;
		this.realIncome = realIncome;
		this.rebackType = rebackType;
		this.sname = sname;
		this.srate = srate;
		this.speriod = speriod;
		this.srepayType = srepayType;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public double getSrate() {
		return srate;
	}

	public void setSrate(double srate) {
		this.srate = srate;
	}

	public int getSperiod() {
		return speriod;
	}

	public void setSperiod(int speriod) {
		this.speriod = speriod;
	}

	public String getSrepayType() {
		return srepayType;
	}

	public void setSrepayType(String srepayType) {
		this.srepayType = srepayType;
	}


	// Constructors

	/** default constructor */
	public Investrecord() {
	}

	/** full constructor */
	public Investrecord(Integer uid, Integer iid, Integer sid, Integer bidsNumber, Double imoney, String itype,
			Timestamp itime, Double expectIncome, Double realIncome, Integer rebackType) {
		this.uid = uid;
		this.iid = iid;
		this.sid = sid;
		this.bidsNumber = bidsNumber;
		this.imoney = imoney;
		this.itype = itype;
		this.itime = itime;
		this.expectIncome = expectIncome;
		this.realIncome = realIncome;
		this.rebackType = rebackType;
	}

	// Property accessors

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

	public Integer getIid() {
		return this.iid;
	}

	public void setIid(Integer iid) {
		this.iid = iid;
	}

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Integer getBidsNumber() {
		return this.bidsNumber;
	}

	public void setBidsNumber(Integer bidsNumber) {
		this.bidsNumber = bidsNumber;
	}

	public Double getImoney() {
		return this.imoney;
	}

	public void setImoney(Double imoney) {
		this.imoney = imoney;
	}

	public String getItype() {
		return this.itype;
	}

	public void setItype(String itype) {
		this.itype = itype;
	}

	public Timestamp getItime() {
		return this.itime;
	}

	public void setItime(Timestamp itime) {
		this.itime = itime;
	}

	public Double getExpectIncome() {
		return this.expectIncome;
	}

	public void setExpectIncome(Double expectIncome) {
		this.expectIncome = expectIncome;
	}

	public Double getRealIncome() {
		return this.realIncome;
	}

	public void setRealIncome(Double realIncome) {
		this.realIncome = realIncome;
	}

	public Integer getRebackType() {
		return this.rebackType;
	}

	public void setRebackType(Integer rebackType) {
		this.rebackType = rebackType;
	}

}