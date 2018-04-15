package entity;

/**
 * 平台收益表
 * @author Administrator
 *
 */
public class Plantincome implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer loadId;//借款记录id
	private Integer investId;//所有投资记录id
	private Double drawalCharge;//提现收费
	private Double transferRight;//债权转让收费
	private Double overCharge;//还款逾期收费
	private Double loadCharge;//借款管理收费
	private Double investCharge;//复投宝溢出收费
	private Double webCharge;//we项目收费
	private Double memberCharge;//会员管理费
	private Double totalMoney;//总计
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getLoadId() {
		return loadId;
	}
	public void setLoadId(Integer loadId) {
		this.loadId = loadId;
	}
	public Integer getInvestId() {
		return investId;
	}
	public void setInvestId(Integer investId) {
		this.investId = investId;
	}
	public Double getDrawalCharge() {
		return drawalCharge;
	}
	public void setDrawalCharge(Double drawalCharge) {
		this.drawalCharge = drawalCharge;
	}
	public Double getTransferRight() {
		return transferRight;
	}
	public void setTransferRight(Double transferRight) {
		this.transferRight = transferRight;
	}
	public Double getOverCharge() {
		return overCharge;
	}
	public void setOverCharge(Double overCharge) {
		this.overCharge = overCharge;
	}
	public Double getLoadCharge() {
		return loadCharge;
	}
	public void setLoadCharge(Double loadCharge) {
		this.loadCharge = loadCharge;
	}
	public Double getInvestCharge() {
		return investCharge;
	}
	public void setInvestCharge(Double investCharge) {
		this.investCharge = investCharge;
	}
	public Double getWebCharge() {
		return webCharge;
	}
	public void setWebCharge(Double webCharge) {
		this.webCharge = webCharge;
	}
	public Double getMemberCharge() {
		return memberCharge;
	}
	public void setMemberCharge(Double memberCharge) {
		this.memberCharge = memberCharge;
	}
	public Double getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}
	public Plantincome(Integer id, Integer loadId, Integer investId, Double drawalCharge, Double transferRight,
			Double overCharge, Double loadCharge, Double investCharge, Double webCharge, Double memberCharge,
			Double totalMoney) {
		super();
		this.id = id;
		this.loadId = loadId;
		this.investId = investId;
		this.drawalCharge = drawalCharge;
		this.transferRight = transferRight;
		this.overCharge = overCharge;
		this.loadCharge = loadCharge;
		this.investCharge = investCharge;
		this.webCharge = webCharge;
		this.memberCharge = memberCharge;
		this.totalMoney = totalMoney;
	}
	public Plantincome() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}