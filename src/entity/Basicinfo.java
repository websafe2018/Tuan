package entity;
/**
 * 基本信息表
 * @author Administrator
 *
 */

public class Basicinfo implements java.io.Serializable {

	// Fields

	private Integer id;//id
	private Integer uid;//user表id
	private String nickname;//昵称
	private String education;//最高学历
	private String memberLevel;//会员等级
	private String headPic;//图像路径
	private String school;//毕业学校
	private Integer marriage;//婚姻状况
	private String address;//居住地址
	private String industry;//公司行业
	private Integer scale;//公司规模
	private String position;//职位
	private Double workTime;//工作年限
	private String income;//月收入
	private Integer isHouse;//是否购房
	private Integer isCar;//是否购车
	private String emergeContact;//紧急联系人
	private String telNo;//紧急联系人电话
	private String relation;//联系人关系
	private String queryOne;//问题一 
	private String answerOne;//答案一
	private String queryTwo;//问题二
	private String answerTwo;//答案二
	private String area;//所在地区
	private String numberId;//证件号
	private Integer age;//年龄
	private String gender;//性别
	private Double loanMoney;//贷款金额
	private String residencePhone;//住宅电话
	private String organization;//单位名称
	private String unitAddres;//单位地址
	private String worktelePhone;//单位电话
	private String clanName;//亲属姓名
	private String relationOne;//担保人关系
	private String clanPhone;//亲属电话
	private String elseOne;//其他1
	private String elseName;//其他联系人
	private String relationTwo;//担保人关系
	private String clanPhones;//手机号
	private String elseTwo;//其他2
	private String certifier;//证明人
	private String certifierPhonne;//证明人手机

	// Constructors

	/** default constructor */
	public Basicinfo() {
	}

	/** full constructor */
	public Basicinfo(Integer uid, String nickname, String education, String memberLevel, String headPic, String school,
			Integer marriage, String address, String industry, Integer scale, String position, Double workTime,
			String income, Integer isHouse, Integer isCar, String emergeContact, String telNo, String relation,
			String queryOne, String answerOne, String queryTwo, String answerTwo, String area, String numberId,
			Integer age, String gender, Double loanMoney, String residencePhone, String organization, String unitAddres,
			String worktelePhone, String clanName, String relationOne, String clanPhone, String elseOne,
			String elseName, String relationTwo, String clanPhones, String elseTwo, String certifier,
			String certifierPhonne) {
		this.uid = uid;
		this.nickname = nickname;
		this.education = education;
		this.memberLevel = memberLevel;
		this.headPic = headPic;
		this.school = school;
		this.marriage = marriage;
		this.address = address;
		this.industry = industry;
		this.scale = scale;
		this.position = position;
		this.workTime = workTime;
		this.income = income;
		this.isHouse = isHouse;
		this.isCar = isCar;
		this.emergeContact = emergeContact;
		this.telNo = telNo;
		this.relation = relation;
		this.queryOne = queryOne;
		this.answerOne = answerOne;
		this.queryTwo = queryTwo;
		this.answerTwo = answerTwo;
		this.area = area;
		this.numberId = numberId;
		this.age = age;
		this.gender = gender;
		this.loanMoney = loanMoney;
		this.residencePhone = residencePhone;
		this.organization = organization;
		this.unitAddres = unitAddres;
		this.worktelePhone = worktelePhone;
		this.clanName = clanName;
		this.relationOne = relationOne;
		this.clanPhone = clanPhone;
		this.elseOne = elseOne;
		this.elseName = elseName;
		this.relationTwo = relationTwo;
		this.clanPhones = clanPhones;
		this.elseTwo = elseTwo;
		this.certifier = certifier;
		this.certifierPhonne = certifierPhonne;
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

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getMemberLevel() {
		return this.memberLevel;
	}

	public void setMemberLevel(String memberLevel) {
		this.memberLevel = memberLevel;
	}

	public String getHeadPic() {
		return this.headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Integer getMarriage() {
		return this.marriage;
	}

	public void setMarriage(Integer marriage) {
		this.marriage = marriage;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public Integer getScale() {
		return this.scale;
	}

	public void setScale(Integer scale) {
		this.scale = scale;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Double getWorkTime() {
		return this.workTime;
	}

	public void setWorkTime(Double workTime) {
		this.workTime = workTime;
	}

	public String getIncome() {
		return this.income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public Integer getIsHouse() {
		return this.isHouse;
	}

	public void setIsHouse(Integer isHouse) {
		this.isHouse = isHouse;
	}

	public Integer getIsCar() {
		return this.isCar;
	}

	public void setIsCar(Integer isCar) {
		this.isCar = isCar;
	}

	public String getEmergeContact() {
		return this.emergeContact;
	}

	public void setEmergeContact(String emergeContact) {
		this.emergeContact = emergeContact;
	}

	public String getTelNo() {
		return this.telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

	public String getRelation() {
		return this.relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getQueryOne() {
		return this.queryOne;
	}

	public void setQueryOne(String queryOne) {
		this.queryOne = queryOne;
	}

	public String getAnswerOne() {
		return this.answerOne;
	}

	public void setAnswerOne(String answerOne) {
		this.answerOne = answerOne;
	}

	public String getQueryTwo() {
		return this.queryTwo;
	}

	public void setQueryTwo(String queryTwo) {
		this.queryTwo = queryTwo;
	}

	public String getAnswerTwo() {
		return this.answerTwo;
	}

	public void setAnswerTwo(String answerTwo) {
		this.answerTwo = answerTwo;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getNumberId() {
		return this.numberId;
	}

	public void setNumberId(String numberId) {
		this.numberId = numberId;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Double getLoanMoney() {
		return this.loanMoney;
	}

	public void setLoanMoney(Double loanMoney) {
		this.loanMoney = loanMoney;
	}

	public String getResidencePhone() {
		return this.residencePhone;
	}

	public void setResidencePhone(String residencePhone) {
		this.residencePhone = residencePhone;
	}

	public String getOrganization() {
		return this.organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getUnitAddres() {
		return this.unitAddres;
	}

	public void setUnitAddres(String unitAddres) {
		this.unitAddres = unitAddres;
	}

	public String getWorktelePhone() {
		return this.worktelePhone;
	}

	public void setWorktelePhone(String worktelePhone) {
		this.worktelePhone = worktelePhone;
	}

	public String getClanName() {
		return this.clanName;
	}

	public void setClanName(String clanName) {
		this.clanName = clanName;
	}

	public String getRelationOne() {
		return this.relationOne;
	}

	public void setRelationOne(String relationOne) {
		this.relationOne = relationOne;
	}

	public String getClanPhone() {
		return this.clanPhone;
	}

	public void setClanPhone(String clanPhone) {
		this.clanPhone = clanPhone;
	}

	public String getElseOne() {
		return this.elseOne;
	}

	public void setElseOne(String elseOne) {
		this.elseOne = elseOne;
	}

	public String getElseName() {
		return this.elseName;
	}

	public void setElseName(String elseName) {
		this.elseName = elseName;
	}

	public String getRelationTwo() {
		return this.relationTwo;
	}

	public void setRelationTwo(String relationTwo) {
		this.relationTwo = relationTwo;
	}

	public String getClanPhones() {
		return this.clanPhones;
	}

	public void setClanPhones(String clanPhones) {
		this.clanPhones = clanPhones;
	}

	public String getElseTwo() {
		return this.elseTwo;
	}

	public void setElseTwo(String elseTwo) {
		this.elseTwo = elseTwo;
	}

	public String getCertifier() {
		return this.certifier;
	}

	public void setCertifier(String certifier) {
		this.certifier = certifier;
	}

	public String getCertifierPhonne() {
		return this.certifierPhonne;
	}

	public void setCertifierPhonne(String certifierPhonne) {
		this.certifierPhonne = certifierPhonne;
	}

}