package entity;

/**
 * 平台收费率表
 * @author Administrator
 *
 */

public class Plantincomerate implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Double chargeRate;//提现收费利率
	private Double transferRight;//债权转让率
	private Double overRate;//还款逾期利率
	private Double loadRate;//借款管理收费率
	private Double adviceBack;//提前退出收费率
	private Double memberMoth;//超级会员1个月
	private Double memberSixMoth;//超级会员6个月
	private Double memberYear;//超级会员1年

	// Constructors

	/** default constructor */
	public Plantincomerate() {
	}

	/** full constructor */
	public Plantincomerate(Double chargeRate, Double transferRight, Double overRate, Double loadRate, Double adviceBack,
			Double memberMoth, Double memberSixMoth, Double memberYear) {
		this.chargeRate = chargeRate;
		this.transferRight = transferRight;
		this.overRate = overRate;
		this.loadRate = loadRate;
		this.adviceBack = adviceBack;
		this.memberMoth = memberMoth;
		this.memberSixMoth = memberSixMoth;
		this.memberYear = memberYear;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getChargeRate() {
		return this.chargeRate;
	}

	public void setChargeRate(Double chargeRate) {
		this.chargeRate = chargeRate;
	}

	public Double getTransferRight() {
		return this.transferRight;
	}

	public void setTransferRight(Double transferRight) {
		this.transferRight = transferRight;
	}

	public Double getOverRate() {
		return this.overRate;
	}

	public void setOverRate(Double overRate) {
		this.overRate = overRate;
	}

	public Double getLoadRate() {
		return this.loadRate;
	}

	public void setLoadRate(Double loadRate) {
		this.loadRate = loadRate;
	}

	public Double getAdviceBack() {
		return this.adviceBack;
	}

	public void setAdviceBack(Double adviceBack) {
		this.adviceBack = adviceBack;
	}

	public Double getMemberMoth() {
		return this.memberMoth;
	}

	public void setMemberMoth(Double memberMoth) {
		this.memberMoth = memberMoth;
	}

	public Double getMemberSixMoth() {
		return this.memberSixMoth;
	}

	public void setMemberSixMoth(Double memberSixMoth) {
		this.memberSixMoth = memberSixMoth;
	}

	public Double getMemberYear() {
		return this.memberYear;
	}

	public void setMemberYear(Double memberYear) {
		this.memberYear = memberYear;
	}

}