package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 资产表
 * @author Administrator
 *
 */

public class Propertyinfo implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//用户id
	private Integer bid;//基本信息id
	private String make;//汽车品牌
	private String polo;//汽车型号
	private Double carPrices;//汽车价格
	private String carProducer;//汽车产地
	private Double mileage;//公里数
	private Integer wlanoverhaul;//有无大修
	private String vehicleearthly;//车辆属地
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp houseTime;//房产购买时间
	private Double houseArea;//房产面积
	private Double houseMoney;//房产价格
	private Double houseTerm;//房产年限
	private Integer isDecoration;//上是否装修
	private Integer isHouseLoan;//是否有房贷

	// Constructors

	/** default constructor */
	public Propertyinfo() {
	}

	/** full constructor */
	public Propertyinfo(Integer uid, Integer bid, String make, String polo, Double carPrices, String carProducer,
			Double mileage, Integer wlanoverhaul, String vehicleearthly, Timestamp houseTime, Double houseArea,
			Double houseMoney, Double houseTerm, Integer isDecoration, Integer isHouseLoan) {
		this.uid = uid;
		this.bid = bid;
		this.make = make;
		this.polo = polo;
		this.carPrices = carPrices;
		this.carProducer = carProducer;
		this.mileage = mileage;
		this.wlanoverhaul = wlanoverhaul;
		this.vehicleearthly = vehicleearthly;
		this.houseTime = houseTime;
		this.houseArea = houseArea;
		this.houseMoney = houseMoney;
		this.houseTerm = houseTerm;
		this.isDecoration = isDecoration;
		this.isHouseLoan = isHouseLoan;
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

	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getMake() {
		return this.make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getPolo() {
		return this.polo;
	}

	public void setPolo(String polo) {
		this.polo = polo;
	}

	public Double getCarPrices() {
		return this.carPrices;
	}

	public void setCarPrices(Double carPrices) {
		this.carPrices = carPrices;
	}

	public String getCarProducer() {
		return this.carProducer;
	}

	public void setCarProducer(String carProducer) {
		this.carProducer = carProducer;
	}

	public Double getMileage() {
		return this.mileage;
	}

	public void setMileage(Double mileage) {
		this.mileage = mileage;
	}

	public Integer getWlanoverhaul() {
		return this.wlanoverhaul;
	}

	public void setWlanoverhaul(Integer wlanoverhaul) {
		this.wlanoverhaul = wlanoverhaul;
	}

	public String getVehicleearthly() {
		return this.vehicleearthly;
	}

	public void setVehicleearthly(String vehicleearthly) {
		this.vehicleearthly = vehicleearthly;
	}

	public Timestamp getHouseTime() {
		return this.houseTime;
	}

	public void setHouseTime(Timestamp houseTime) {
		this.houseTime = houseTime;
	}

	public Double getHouseArea() {
		return this.houseArea;
	}

	public void setHouseArea(Double houseArea) {
		this.houseArea = houseArea;
	}

	public Double getHouseMoney() {
		return this.houseMoney;
	}

	public void setHouseMoney(Double houseMoney) {
		this.houseMoney = houseMoney;
	}

	public Double getHouseTerm() {
		return this.houseTerm;
	}

	public void setHouseTerm(Double houseTerm) {
		this.houseTerm = houseTerm;
	}

	public Integer getIsDecoration() {
		return this.isDecoration;
	}

	public void setIsDecoration(Integer isDecoration) {
		this.isDecoration = isDecoration;
	}

	public Integer getIsHouseLoan() {
		return this.isHouseLoan;
	}

	public void setIsHouseLoan(Integer isHouseLoan) {
		this.isHouseLoan = isHouseLoan;
	}

}