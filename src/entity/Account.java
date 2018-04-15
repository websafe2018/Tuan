package entity;

/**
 * 个人账户表
 * @author Administrator
 *
 */
public class Account implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//user表id
	private String realName;//真实姓名
	private String idnumber;//身份证号
	private String bankNumber;//银行卡号
	private String bank;//开户银行
	private String backTel;//预留手机号
	private Double acBalance;//账户余额
	private Double blockMoney;//冻结资金
	private Double income;//收入
	private Double expend;//支出
	private String paymentPwd;//支付密码
	private Double overIncome;//逾期收益
	private String sqName;//借款申请人姓名

	// Constructors

	/** default constructor */
	public Account() {
	}

	/** full constructor */
	public Account(Integer uid, String realName, String idnumber, String bankNumber, String bank, String backTel,
			Double acBalance, Double blockMoney, Double income, Double expend, String paymentPwd, Double overIncome,
			String sqName) {
		this.uid = uid;
		this.realName = realName;
		this.idnumber = idnumber;
		this.bankNumber = bankNumber;
		this.bank = bank;
		this.backTel = backTel;
		this.acBalance = acBalance;
		this.blockMoney = blockMoney;
		this.income = income;
		this.expend = expend;
		this.paymentPwd = paymentPwd;
		this.overIncome = overIncome;
		this.sqName = sqName;
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

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getIdnumber() {
		return this.idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getBankNumber() {
		return this.bankNumber;
	}

	public void setBankNumber(String bankNumber) {
		this.bankNumber = bankNumber;
	}

	public String getBank() {
		return this.bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBackTel() {
		return this.backTel;
	}

	public void setBackTel(String backTel) {
		this.backTel = backTel;
	}

	public Double getAcBalance() {
		return this.acBalance;
	}

	public void setAcBalance(Double acBalance) {
		this.acBalance = acBalance;
	}

	public Double getBlockMoney() {
		return this.blockMoney;
	}

	public void setBlockMoney(Double blockMoney) {
		this.blockMoney = blockMoney;
	}

	public Double getIncome() {
		return this.income;
	}

	public void setIncome(Double income) {
		this.income = income;
	}

	public Double getExpend() {
		return this.expend;
	}

	public void setExpend(Double expend) {
		this.expend = expend;
	}

	public String getPaymentPwd() {
		return this.paymentPwd;
	}

	public void setPaymentPwd(String paymentPwd) {
		this.paymentPwd = paymentPwd;
	}

	public Double getOverIncome() {
		return this.overIncome;
	}

	public void setOverIncome(Double overIncome) {
		this.overIncome = overIncome;
	}

	public String getSqName() {
		return this.sqName;
	}

	public void setSqName(String sqName) {
		this.sqName = sqName;
	}

}