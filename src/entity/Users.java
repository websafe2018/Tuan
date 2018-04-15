package entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 用户
 * @author Administrator
 *
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer roleId;//角色id
	private String userName;//用户名
	private String password;//密码
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp registerTime;//注册时间
	private String telNo;//手机号码
	private String email;//邮箱
	
	//新增属性
	private String role;//角色名
	private String realName;//真实姓名
	private String idnumber;//身份证号
	private String bankNumber;//银行卡号
	private String address;//所在城市
	private String unitAddres;//工作单位
	private Double acBalance;//会员余额
	private String nickname; //昵称
	
	
	public Users(Integer id, Integer roleId, String role, String userName, String password, Timestamp registerTime,
			String telNo, String email, String realName, String idnumber, String bankNumber, String address,
			String unitAddres, Double acBalance, String nickname) {
		super();
		this.id = id;
		this.roleId = roleId;
		this.role = role;
		this.userName = userName;
		this.password = password;
		this.registerTime = registerTime;
		this.telNo = telNo;
		this.email = email;
		this.realName = realName;
		this.idnumber = idnumber;
		this.bankNumber = bankNumber;
		this.address = address;
		this.unitAddres = unitAddres;
		this.acBalance = acBalance;
		this.nickname = nickname;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickName(String nickname) {
		this.nickname = nickname;
	}
	public Users(Integer id, Integer roleId, String role, String userName, String password, Timestamp registerTime,
			String telNo, String email, String realName, String idnumber, String bankNumber, String address,
			String unitAddres, Double acBalance) {
		super();
		this.id = id;
		this.roleId = roleId;
		this.role = role;
		this.userName = userName;
		this.password = password;
		this.registerTime = registerTime;
		this.telNo = telNo;
		this.email = email;
		this.realName = realName;
		this.idnumber = idnumber;
		this.bankNumber = bankNumber;
		this.address = address;
		this.unitAddres = unitAddres;
		this.acBalance = acBalance;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public String getBankNumber() {
		return bankNumber;
	}
	public void setBankNumber(String bankNumber) {
		this.bankNumber = bankNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUnitAddres() {
		return unitAddres;
	}
	public void setUnitAddres(String unitAddres) {
		this.unitAddres = unitAddres;
	}
	public Double getAcBalance() {
		return acBalance;
	}
	public void setAcBalance(Double acBalance) {
		this.acBalance = acBalance;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Timestamp getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Users(Integer id, Integer roleId, String role, String userName, String password, Timestamp registerTime,
			String telNo, String email) {
		super();
		this.id = id;
		this.roleId = roleId;
		this.role = role;
		this.userName = userName;
		this.password = password;
		this.registerTime = registerTime;
		this.telNo = telNo;
		this.email = email;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}


}