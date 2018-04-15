package entity;

/**
 * 公司表
 * @author Administrator
 *
 */
public class Companyinfo implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//user表id
	private Integer bid;//基本信息表id
	private Double monthlyIncome;//月收入
	private String incomeCompos;//收入构成描述
	private Double monthlyExpenses;//月均支出
	private String monthlyCompos;//总支出构成描述
	private Integer housingcondition;//住房条件
	private Double realestateValue;//房产价值
	private Integer isCar;//是否买车
	private Double vehicleValue;//车辆价值
	private String shareholdCorporName;//参股企业名称
	private Double shareholdCorporMoney;//参股企业出资
	private String elseMoney;//其他资产描述
	private String firstCosurety;//第一联保人
	private String firstRelation;//联保人关系
	private String firstPhone;//手机号
	private String secondCosurety;//第二联保人
	private String secondRelation;//第二联保人关系
	private String secondPhone;//第二手机号
	private String commercialPhoto;//商业图片
	private String uploadFile;//上传图片

	// Constructors

	/** default constructor */
	public Companyinfo() {
	}

	/** full constructor */
	public Companyinfo(Integer uid, Integer bid, Double monthlyIncome, String incomeCompos, Double monthlyExpenses,
			String monthlyCompos, Integer housingcondition, Double realestateValue, Integer isCar, Double vehicleValue,
			String shareholdCorporName, Double shareholdCorporMoney, String elseMoney, String firstCosurety,
			String firstRelation, String firstPhone, String secondCosurety, String secondRelation, String secondPhone,
			String commercialPhoto, String uploadFile) {
		this.uid = uid;
		this.bid = bid;
		this.monthlyIncome = monthlyIncome;
		this.incomeCompos = incomeCompos;
		this.monthlyExpenses = monthlyExpenses;
		this.monthlyCompos = monthlyCompos;
		this.housingcondition = housingcondition;
		this.realestateValue = realestateValue;
		this.isCar = isCar;
		this.vehicleValue = vehicleValue;
		this.shareholdCorporName = shareholdCorporName;
		this.shareholdCorporMoney = shareholdCorporMoney;
		this.elseMoney = elseMoney;
		this.firstCosurety = firstCosurety;
		this.firstRelation = firstRelation;
		this.firstPhone = firstPhone;
		this.secondCosurety = secondCosurety;
		this.secondRelation = secondRelation;
		this.secondPhone = secondPhone;
		this.commercialPhoto = commercialPhoto;
		this.uploadFile = uploadFile;
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

	public Double getMonthlyIncome() {
		return this.monthlyIncome;
	}

	public void setMonthlyIncome(Double monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}

	public String getIncomeCompos() {
		return this.incomeCompos;
	}

	public void setIncomeCompos(String incomeCompos) {
		this.incomeCompos = incomeCompos;
	}

	public Double getMonthlyExpenses() {
		return this.monthlyExpenses;
	}

	public void setMonthlyExpenses(Double monthlyExpenses) {
		this.monthlyExpenses = monthlyExpenses;
	}

	public String getMonthlyCompos() {
		return this.monthlyCompos;
	}

	public void setMonthlyCompos(String monthlyCompos) {
		this.monthlyCompos = monthlyCompos;
	}

	public Integer getHousingcondition() {
		return this.housingcondition;
	}

	public void setHousingcondition(Integer housingcondition) {
		this.housingcondition = housingcondition;
	}

	public Double getRealestateValue() {
		return this.realestateValue;
	}

	public void setRealestateValue(Double realestateValue) {
		this.realestateValue = realestateValue;
	}

	public Integer getIsCar() {
		return this.isCar;
	}

	public void setIsCar(Integer isCar) {
		this.isCar = isCar;
	}

	public Double getVehicleValue() {
		return this.vehicleValue;
	}

	public void setVehicleValue(Double vehicleValue) {
		this.vehicleValue = vehicleValue;
	}

	public String getShareholdCorporName() {
		return this.shareholdCorporName;
	}

	public void setShareholdCorporName(String shareholdCorporName) {
		this.shareholdCorporName = shareholdCorporName;
	}

	public Double getShareholdCorporMoney() {
		return this.shareholdCorporMoney;
	}

	public void setShareholdCorporMoney(Double shareholdCorporMoney) {
		this.shareholdCorporMoney = shareholdCorporMoney;
	}

	public String getElseMoney() {
		return this.elseMoney;
	}

	public void setElseMoney(String elseMoney) {
		this.elseMoney = elseMoney;
	}

	public String getFirstCosurety() {
		return this.firstCosurety;
	}

	public void setFirstCosurety(String firstCosurety) {
		this.firstCosurety = firstCosurety;
	}

	public String getFirstRelation() {
		return this.firstRelation;
	}

	public void setFirstRelation(String firstRelation) {
		this.firstRelation = firstRelation;
	}

	public String getFirstPhone() {
		return this.firstPhone;
	}

	public void setFirstPhone(String firstPhone) {
		this.firstPhone = firstPhone;
	}

	public String getSecondCosurety() {
		return this.secondCosurety;
	}

	public void setSecondCosurety(String secondCosurety) {
		this.secondCosurety = secondCosurety;
	}

	public String getSecondRelation() {
		return this.secondRelation;
	}

	public void setSecondRelation(String secondRelation) {
		this.secondRelation = secondRelation;
	}

	public String getSecondPhone() {
		return this.secondPhone;
	}

	public void setSecondPhone(String secondPhone) {
		this.secondPhone = secondPhone;
	}

	public String getCommercialPhoto() {
		return this.commercialPhoto;
	}

	public void setCommercialPhoto(String commercialPhoto) {
		this.commercialPhoto = commercialPhoto;
	}

	public String getUploadFile() {
		return this.uploadFile;
	}

	public void setUploadFile(String uploadFile) {
		this.uploadFile = uploadFile;
	}

}