package entity;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.annotation.JSONField;

public class Body {

	// 用户 Users

		private Integer id;//id
		private Integer u_roleId;//角色id
		private String u_userName;//用户名
		private String u_password;//密码
		@JSONField(format="yyyy-MM-dd HH:mm:ss")
		private Timestamp u_registerTime;//注册时间
		private String u_telNo;//手机号码
		private String u_email;//邮箱
		//角色表
		private Integer role_id;//id
		private String role_role;//角色
	//账户 account
		
		private Integer a_id;//id
		private Integer a_uid;//user表id
		private String a_realName;//真实姓名
		private String a_idnumber;//身份证号
		private String a_bankNumber;//银行卡号
		private String a_bank;//开户银行
		private String a_backTel;//预留手机号
		private Double a_acBalance;//账户余额
		private Double a_blockMoney;//冻结资金
		private Double a_income;//收入
		private Double a_expend;//支出
		private String a_paymentPwd;//支付密码
		private Double a_overIncome;//逾期收益
		private String a_sqName;//借款申请人姓名
		
	//基本信息 basicinfo
		private Integer b_id;//id
		private Integer b_uid;//user表id
		private String b_nickname;//昵称
		private String b_education;//最高学历
		private String b_memberLevel;//会员等级
		private String b_headPic;//图像路径
		private String b_school;//毕业学校
		private Integer b_marriage;//婚姻状况
		private String b_address;//居住地址
		private String b_industry;//公司行业
		private Integer b_scale;//公司规模
		private String b_position;//职位
		private Double b_workTime;//工作年限
		private String b_income;//月收入
		private Integer b_isHouse;//是否购房
		private Integer b_isCar;//是否购车
		private String b_emergeContact;//紧急联系人
		private String b_telNo;//紧急联系人电话
		private String b_relation;//联系人关系
		private String b_queryOne;//问题一 
		private String b_answerOne;//答案一
		private String b_queryTwo;//问题二
		private String b_answerTwo;//答案二
		private String b_area;//所在地区
		private String b_numberId;//证件号
		private Integer b_age;//年龄
		private String b_gender;//性别
		private Double b_loanMoney;//贷款金额
		private String b_residencePhone;//住宅电话
		private String b_organization;//单位名称
		private String b_unitAddres;//单位地址
		private String b_worktelePhone;//单位电话
		private String b_clanName;//亲属姓名
		private String b_relationOne;//担保人关系
		private String b_clanPhone;//亲属电话
		private String b_elseOne;//其他1
		private String b_elseName;//其他联系人
		private String b_relationTwo;//担保人关系
		private String b_clanPhones;//手机号
		private String b_elseTwo;//其他2
		private String b_certifier;//证明人
		private String b_certifierPhonne;//证明人手机
		
		//公司表companyinfo
		private Integer c_id;//id
		private Integer c_uid;//user表id
		private Integer c_bid;//基本信息表id
		private Double c_monthlyIncome;//月收入
		private String c_incomeCompos;//收入构成描述
		private Double c_monthlyExpenses;//月均支出
		private String c_monthlyCompos;//总支出构成描述
		private Integer c_housingcondition;//住房条件
		private Double c_realestateValue;//房产价值
		private Integer c_isCar;//是否买车
		private Double c_vehicleValue;//车辆价值
		private String c_shareholdCorporName;//参股企业名称
		private Double c_shareholdCorporMoney;//参股企业出资
		private String c_elseMoney;//其他资产描述
		private String c_firstCosurety;//第一联保人
		private String c_firstRelation;//联保人关系
		private String c_firstPhone;//手机号
		private String c_secondCosurety;//第二联保人
		private String c_secondRelation;//第二联保人关系
		private String c_secondPhone;//第二手机号
		private String c_commercialPhoto;//商业图片
		private String c_uploadFile;//上传图片
		
		//所有投资记录 Investrecord
		private List<Investrecord> investList;
		
		//所有投资的散标Standardinvest.java
		private Map<Integer,Standardinvest> standMap;
		
		//借款记录 loadrecord
		private List<Loadrecord> loadList;
		
		
		public Map<Integer, Standardinvest> getStandMap() {
			return standMap;
		}


		public void setStandMap(Map<Integer, Standardinvest> standMap) {
			this.standMap = standMap;
		}


		public Body(Integer id, Integer u_roleId, String u_userName, String u_password, Timestamp u_registerTime,
				String u_telNo, String u_email, Integer role_id, String role_role, Integer a_id, Integer a_uid,
				String a_realName, String a_idnumber, String a_bankNumber, String a_bank, String a_backTel,
				Double a_acBalance, Double a_blockMoney, Double a_income, Double a_expend, String a_paymentPwd,
				Double a_overIncome, String a_sqName, Integer b_id, Integer b_uid, String b_nickname,
				String b_education, String b_memberLevel, String b_headPic, String b_school, Integer b_marriage,
				String b_address, String b_industry, Integer b_scale, String b_position, Double b_workTime,
				String b_income, Integer b_isHouse, Integer b_isCar, String b_emergeContact, String b_telNo,
				String b_relation, String b_queryOne, String b_answerOne, String b_queryTwo, String b_answerTwo,
				String b_area, String b_numberId, Integer b_age, String b_gender, Double b_loanMoney,
				String b_residencePhone, String b_organization, String b_unitAddres, String b_worktelePhone,
				String b_clanName, String b_relationOne, String b_clanPhone, String b_elseOne, String b_elseName,
				String b_relationTwo, String b_clanPhones, String b_elseTwo, String b_certifier,
				String b_certifierPhonne, Integer c_id, Integer c_uid, Integer c_bid, Double c_monthlyIncome,
				String c_incomeCompos, Double c_monthlyExpenses, String c_monthlyCompos, Integer c_housingcondition,
				Double c_realestateValue, Integer c_isCar, Double c_vehicleValue, String c_shareholdCorporName,
				Double c_shareholdCorporMoney, String c_elseMoney, String c_firstCosurety, String c_firstRelation,
				String c_firstPhone, String c_secondCosurety, String c_secondRelation, String c_secondPhone,
				String c_commercialPhoto, String c_uploadFile, List<Investrecord> investList,
				Map<Integer, Standardinvest> standMap, List<Loadrecord> loadList,
				Map<Integer, List<Rebackrecord>> rebackMap, List<Rechargerecord> rechargeList) {
			super();
			this.id = id;
			this.u_roleId = u_roleId;
			this.u_userName = u_userName;
			this.u_password = u_password;
			this.u_registerTime = u_registerTime;
			this.u_telNo = u_telNo;
			this.u_email = u_email;
			this.role_id = role_id;
			this.role_role = role_role;
			this.a_id = a_id;
			this.a_uid = a_uid;
			this.a_realName = a_realName;
			this.a_idnumber = a_idnumber;
			this.a_bankNumber = a_bankNumber;
			this.a_bank = a_bank;
			this.a_backTel = a_backTel;
			this.a_acBalance = a_acBalance;
			this.a_blockMoney = a_blockMoney;
			this.a_income = a_income;
			this.a_expend = a_expend;
			this.a_paymentPwd = a_paymentPwd;
			this.a_overIncome = a_overIncome;
			this.a_sqName = a_sqName;
			this.b_id = b_id;
			this.b_uid = b_uid;
			this.b_nickname = b_nickname;
			this.b_education = b_education;
			this.b_memberLevel = b_memberLevel;
			this.b_headPic = b_headPic;
			this.b_school = b_school;
			this.b_marriage = b_marriage;
			this.b_address = b_address;
			this.b_industry = b_industry;
			this.b_scale = b_scale;
			this.b_position = b_position;
			this.b_workTime = b_workTime;
			this.b_income = b_income;
			this.b_isHouse = b_isHouse;
			this.b_isCar = b_isCar;
			this.b_emergeContact = b_emergeContact;
			this.b_telNo = b_telNo;
			this.b_relation = b_relation;
			this.b_queryOne = b_queryOne;
			this.b_answerOne = b_answerOne;
			this.b_queryTwo = b_queryTwo;
			this.b_answerTwo = b_answerTwo;
			this.b_area = b_area;
			this.b_numberId = b_numberId;
			this.b_age = b_age;
			this.b_gender = b_gender;
			this.b_loanMoney = b_loanMoney;
			this.b_residencePhone = b_residencePhone;
			this.b_organization = b_organization;
			this.b_unitAddres = b_unitAddres;
			this.b_worktelePhone = b_worktelePhone;
			this.b_clanName = b_clanName;
			this.b_relationOne = b_relationOne;
			this.b_clanPhone = b_clanPhone;
			this.b_elseOne = b_elseOne;
			this.b_elseName = b_elseName;
			this.b_relationTwo = b_relationTwo;
			this.b_clanPhones = b_clanPhones;
			this.b_elseTwo = b_elseTwo;
			this.b_certifier = b_certifier;
			this.b_certifierPhonne = b_certifierPhonne;
			this.c_id = c_id;
			this.c_uid = c_uid;
			this.c_bid = c_bid;
			this.c_monthlyIncome = c_monthlyIncome;
			this.c_incomeCompos = c_incomeCompos;
			this.c_monthlyExpenses = c_monthlyExpenses;
			this.c_monthlyCompos = c_monthlyCompos;
			this.c_housingcondition = c_housingcondition;
			this.c_realestateValue = c_realestateValue;
			this.c_isCar = c_isCar;
			this.c_vehicleValue = c_vehicleValue;
			this.c_shareholdCorporName = c_shareholdCorporName;
			this.c_shareholdCorporMoney = c_shareholdCorporMoney;
			this.c_elseMoney = c_elseMoney;
			this.c_firstCosurety = c_firstCosurety;
			this.c_firstRelation = c_firstRelation;
			this.c_firstPhone = c_firstPhone;
			this.c_secondCosurety = c_secondCosurety;
			this.c_secondRelation = c_secondRelation;
			this.c_secondPhone = c_secondPhone;
			this.c_commercialPhoto = c_commercialPhoto;
			this.c_uploadFile = c_uploadFile;
			this.investList = investList;
			this.standMap = standMap;
			this.loadList = loadList;
			this.rebackMap = rebackMap;
			this.rechargeList = rechargeList;
		}


		//还款记录 rebackrecord
		private Map<Integer,List<Rebackrecord>> rebackMap;
		
		
		//个人充值记录表
		private List<Rechargerecord> rechargeList;


		public Body() {
			super();
			// TODO Auto-generated constructor stub
		}


		public Body(Integer id, Integer u_roleId, String u_userName, String u_password, Timestamp u_registerTime,
				String u_telNo, String u_email, Integer role_id, String role_role, Integer a_id, Integer a_uid,
				String a_realName, String a_idnumber, String a_bankNumber, String a_bank, String a_backTel,
				Double a_acBalance, Double a_blockMoney, Double a_income, Double a_expend, String a_paymentPwd,
				Double a_overIncome, String a_sqName, Integer b_id, Integer b_uid, String b_nickname,
				String b_education, String b_memberLevel, String b_headPic, String b_school, Integer b_marriage,
				String b_address, String b_industry, Integer b_scale, String b_position, Double b_workTime,
				String b_income, Integer b_isHouse, Integer b_isCar, String b_emergeContact, String b_telNo,
				String b_relation, String b_queryOne, String b_answerOne, String b_queryTwo, String b_answerTwo,
				String b_area, String b_numberId, Integer b_age, String b_gender, Double b_loanMoney,
				String b_residencePhone, String b_organization, String b_unitAddres, String b_worktelePhone,
				String b_clanName, String b_relationOne, String b_clanPhone, String b_elseOne, String b_elseName,
				String b_relationTwo, String b_clanPhones, String b_elseTwo, String b_certifier,
				String b_certifierPhonne, Integer c_id, Integer c_uid, Integer c_bid, Double c_monthlyIncome,
				String c_incomeCompos, Double c_monthlyExpenses, String c_monthlyCompos, Integer c_housingcondition,
				Double c_realestateValue, Integer c_isCar, Double c_vehicleValue, String c_shareholdCorporName,
				Double c_shareholdCorporMoney, String c_elseMoney, String c_firstCosurety, String c_firstRelation,
				String c_firstPhone, String c_secondCosurety, String c_secondRelation, String c_secondPhone,
				String c_commercialPhoto, String c_uploadFile, List<Investrecord> investList, List<Loadrecord> loadList,
				Map<Integer, List<Rebackrecord>> rebackMap, List<Rechargerecord> rechargeList) {
			super();
			this.id = id;
			this.u_roleId = u_roleId;
			this.u_userName = u_userName;
			this.u_password = u_password;
			this.u_registerTime = u_registerTime;
			this.u_telNo = u_telNo;
			this.u_email = u_email;
			this.role_id = role_id;
			this.role_role = role_role;
			this.a_id = a_id;
			this.a_uid = a_uid;
			this.a_realName = a_realName;
			this.a_idnumber = a_idnumber;
			this.a_bankNumber = a_bankNumber;
			this.a_bank = a_bank;
			this.a_backTel = a_backTel;
			this.a_acBalance = a_acBalance;
			this.a_blockMoney = a_blockMoney;
			this.a_income = a_income;
			this.a_expend = a_expend;
			this.a_paymentPwd = a_paymentPwd;
			this.a_overIncome = a_overIncome;
			this.a_sqName = a_sqName;
			this.b_id = b_id;
			this.b_uid = b_uid;
			this.b_nickname = b_nickname;
			this.b_education = b_education;
			this.b_memberLevel = b_memberLevel;
			this.b_headPic = b_headPic;
			this.b_school = b_school;
			this.b_marriage = b_marriage;
			this.b_address = b_address;
			this.b_industry = b_industry;
			this.b_scale = b_scale;
			this.b_position = b_position;
			this.b_workTime = b_workTime;
			this.b_income = b_income;
			this.b_isHouse = b_isHouse;
			this.b_isCar = b_isCar;
			this.b_emergeContact = b_emergeContact;
			this.b_telNo = b_telNo;
			this.b_relation = b_relation;
			this.b_queryOne = b_queryOne;
			this.b_answerOne = b_answerOne;
			this.b_queryTwo = b_queryTwo;
			this.b_answerTwo = b_answerTwo;
			this.b_area = b_area;
			this.b_numberId = b_numberId;
			this.b_age = b_age;
			this.b_gender = b_gender;
			this.b_loanMoney = b_loanMoney;
			this.b_residencePhone = b_residencePhone;
			this.b_organization = b_organization;
			this.b_unitAddres = b_unitAddres;
			this.b_worktelePhone = b_worktelePhone;
			this.b_clanName = b_clanName;
			this.b_relationOne = b_relationOne;
			this.b_clanPhone = b_clanPhone;
			this.b_elseOne = b_elseOne;
			this.b_elseName = b_elseName;
			this.b_relationTwo = b_relationTwo;
			this.b_clanPhones = b_clanPhones;
			this.b_elseTwo = b_elseTwo;
			this.b_certifier = b_certifier;
			this.b_certifierPhonne = b_certifierPhonne;
			this.c_id = c_id;
			this.c_uid = c_uid;
			this.c_bid = c_bid;
			this.c_monthlyIncome = c_monthlyIncome;
			this.c_incomeCompos = c_incomeCompos;
			this.c_monthlyExpenses = c_monthlyExpenses;
			this.c_monthlyCompos = c_monthlyCompos;
			this.c_housingcondition = c_housingcondition;
			this.c_realestateValue = c_realestateValue;
			this.c_isCar = c_isCar;
			this.c_vehicleValue = c_vehicleValue;
			this.c_shareholdCorporName = c_shareholdCorporName;
			this.c_shareholdCorporMoney = c_shareholdCorporMoney;
			this.c_elseMoney = c_elseMoney;
			this.c_firstCosurety = c_firstCosurety;
			this.c_firstRelation = c_firstRelation;
			this.c_firstPhone = c_firstPhone;
			this.c_secondCosurety = c_secondCosurety;
			this.c_secondRelation = c_secondRelation;
			this.c_secondPhone = c_secondPhone;
			this.c_commercialPhoto = c_commercialPhoto;
			this.c_uploadFile = c_uploadFile;
			this.investList = investList;
			this.loadList = loadList;
			this.rebackMap = rebackMap;
			this.rechargeList = rechargeList;
		}


		public Integer getId() {
			return id;
		}


		public void setId(Integer id) {
			this.id = id;
		}


		public Integer getU_roleId() {
			return u_roleId;
		}


		public void setU_roleId(Integer u_roleId) {
			this.u_roleId = u_roleId;
		}


		public String getU_userName() {
			return u_userName;
		}


		public void setU_userName(String u_userName) {
			this.u_userName = u_userName;
		}


		public String getU_password() {
			return u_password;
		}


		public void setU_password(String u_password) {
			this.u_password = u_password;
		}


		public Timestamp getU_registerTime() {
			return u_registerTime;
		}


		public void setU_registerTime(Timestamp u_registerTime) {
			this.u_registerTime = u_registerTime;
		}


		public String getU_telNo() {
			return u_telNo;
		}


		public void setU_telNo(String u_telNo) {
			this.u_telNo = u_telNo;
		}


		public String getU_email() {
			return u_email;
		}


		public void setU_email(String u_email) {
			this.u_email = u_email;
		}


		public Integer getRole_id() {
			return role_id;
		}


		public void setRole_id(Integer role_id) {
			this.role_id = role_id;
		}


		public String getRole_role() {
			return role_role;
		}


		public void setRole_role(String role_role) {
			this.role_role = role_role;
		}


		public Integer getA_id() {
			return a_id;
		}


		public void setA_id(Integer a_id) {
			this.a_id = a_id;
		}


		public Integer getA_uid() {
			return a_uid;
		}


		public void setA_uid(Integer a_uid) {
			this.a_uid = a_uid;
		}


		public String getA_realName() {
			return a_realName;
		}


		public void setA_realName(String a_realName) {
			this.a_realName = a_realName;
		}


		public String getA_idnumber() {
			return a_idnumber;
		}


		public void setA_idnumber(String a_idnumber) {
			this.a_idnumber = a_idnumber;
		}


		public String getA_bankNumber() {
			return a_bankNumber;
		}


		public void setA_bankNumber(String a_bankNumber) {
			this.a_bankNumber = a_bankNumber;
		}


		public String getA_bank() {
			return a_bank;
		}


		public void setA_bank(String a_bank) {
			this.a_bank = a_bank;
		}


		public String getA_backTel() {
			return a_backTel;
		}


		public void setA_backTel(String a_backTel) {
			this.a_backTel = a_backTel;
		}


		public Double getA_acBalance() {
			return a_acBalance;
		}


		public void setA_acBalance(Double a_acBalance) {
			this.a_acBalance = a_acBalance;
		}


		public Double getA_blockMoney() {
			return a_blockMoney;
		}


		public void setA_blockMoney(Double a_blockMoney) {
			this.a_blockMoney = a_blockMoney;
		}


		public Double getA_income() {
			return a_income;
		}


		public void setA_income(Double a_income) {
			this.a_income = a_income;
		}


		public Double getA_expend() {
			return a_expend;
		}


		public void setA_expend(Double a_expend) {
			this.a_expend = a_expend;
		}


		public String getA_paymentPwd() {
			return a_paymentPwd;
		}


		public void setA_paymentPwd(String a_paymentPwd) {
			this.a_paymentPwd = a_paymentPwd;
		}


		public Double getA_overIncome() {
			return a_overIncome;
		}


		public void setA_overIncome(Double a_overIncome) {
			this.a_overIncome = a_overIncome;
		}


		public String getA_sqName() {
			return a_sqName;
		}


		public void setA_sqName(String a_sqName) {
			this.a_sqName = a_sqName;
		}


		public Integer getB_id() {
			return b_id;
		}


		public void setB_id(Integer b_id) {
			this.b_id = b_id;
		}


		public Integer getB_uid() {
			return b_uid;
		}


		public void setB_uid(Integer b_uid) {
			this.b_uid = b_uid;
		}


		public String getB_nickname() {
			return b_nickname;
		}


		public void setB_nickname(String b_nickname) {
			this.b_nickname = b_nickname;
		}


		public String getB_education() {
			return b_education;
		}


		public void setB_education(String b_education) {
			this.b_education = b_education;
		}


		public String getB_memberLevel() {
			return b_memberLevel;
		}


		public void setB_memberLevel(String b_memberLevel) {
			this.b_memberLevel = b_memberLevel;
		}


		public String getB_headPic() {
			return b_headPic;
		}


		public void setB_headPic(String b_headPic) {
			this.b_headPic = b_headPic;
		}


		public String getB_school() {
			return b_school;
		}


		public void setB_school(String b_school) {
			this.b_school = b_school;
		}


		public Integer getB_marriage() {
			return b_marriage;
		}


		public void setB_marriage(Integer b_marriage) {
			this.b_marriage = b_marriage;
		}


		public String getB_address() {
			return b_address;
		}


		public void setB_address(String b_address) {
			this.b_address = b_address;
		}


		public String getB_industry() {
			return b_industry;
		}


		public void setB_industry(String b_industry) {
			this.b_industry = b_industry;
		}


		public Integer getB_scale() {
			return b_scale;
		}


		public void setB_scale(Integer b_scale) {
			this.b_scale = b_scale;
		}


		public String getB_position() {
			return b_position;
		}


		public void setB_position(String b_position) {
			this.b_position = b_position;
		}


		public Double getB_workTime() {
			return b_workTime;
		}


		public void setB_workTime(Double b_workTime) {
			this.b_workTime = b_workTime;
		}


		public String getB_income() {
			return b_income;
		}


		public void setB_income(String b_income) {
			this.b_income = b_income;
		}


		public Integer getB_isHouse() {
			return b_isHouse;
		}


		public void setB_isHouse(Integer b_isHouse) {
			this.b_isHouse = b_isHouse;
		}


		public Integer getB_isCar() {
			return b_isCar;
		}


		public void setB_isCar(Integer b_isCar) {
			this.b_isCar = b_isCar;
		}


		public String getB_emergeContact() {
			return b_emergeContact;
		}


		public void setB_emergeContact(String b_emergeContact) {
			this.b_emergeContact = b_emergeContact;
		}


		public String getB_telNo() {
			return b_telNo;
		}


		public void setB_telNo(String b_telNo) {
			this.b_telNo = b_telNo;
		}


		public String getB_relation() {
			return b_relation;
		}


		public void setB_relation(String b_relation) {
			this.b_relation = b_relation;
		}


		public String getB_queryOne() {
			return b_queryOne;
		}


		public void setB_queryOne(String b_queryOne) {
			this.b_queryOne = b_queryOne;
		}


		public String getB_answerOne() {
			return b_answerOne;
		}


		public void setB_answerOne(String b_answerOne) {
			this.b_answerOne = b_answerOne;
		}


		public String getB_queryTwo() {
			return b_queryTwo;
		}


		public void setB_queryTwo(String b_queryTwo) {
			this.b_queryTwo = b_queryTwo;
		}


		public String getB_answerTwo() {
			return b_answerTwo;
		}


		public void setB_answerTwo(String b_answerTwo) {
			this.b_answerTwo = b_answerTwo;
		}


		public String getB_area() {
			return b_area;
		}


		public void setB_area(String b_area) {
			this.b_area = b_area;
		}


		public String getB_numberId() {
			return b_numberId;
		}


		public void setB_numberId(String b_numberId) {
			this.b_numberId = b_numberId;
		}


		public Integer getB_age() {
			return b_age;
		}


		public void setB_age(Integer b_age) {
			this.b_age = b_age;
		}


		public String getB_gender() {
			return b_gender;
		}


		public void setB_gender(String b_gender) {
			this.b_gender = b_gender;
		}


		public Double getB_loanMoney() {
			return b_loanMoney;
		}


		public void setB_loanMoney(Double b_loanMoney) {
			this.b_loanMoney = b_loanMoney;
		}


		public String getB_residencePhone() {
			return b_residencePhone;
		}


		public void setB_residencePhone(String b_residencePhone) {
			this.b_residencePhone = b_residencePhone;
		}


		public String getB_organization() {
			return b_organization;
		}


		public void setB_organization(String b_organization) {
			this.b_organization = b_organization;
		}


		public String getB_unitAddres() {
			return b_unitAddres;
		}


		public void setB_unitAddres(String b_unitAddres) {
			this.b_unitAddres = b_unitAddres;
		}


		public String getB_worktelePhone() {
			return b_worktelePhone;
		}


		public void setB_worktelePhone(String b_worktelePhone) {
			this.b_worktelePhone = b_worktelePhone;
		}


		public String getB_clanName() {
			return b_clanName;
		}


		public void setB_clanName(String b_clanName) {
			this.b_clanName = b_clanName;
		}


		public String getB_relationOne() {
			return b_relationOne;
		}


		public void setB_relationOne(String b_relationOne) {
			this.b_relationOne = b_relationOne;
		}


		public String getB_clanPhone() {
			return b_clanPhone;
		}


		public void setB_clanPhone(String b_clanPhone) {
			this.b_clanPhone = b_clanPhone;
		}


		public String getB_elseOne() {
			return b_elseOne;
		}


		public void setB_elseOne(String b_elseOne) {
			this.b_elseOne = b_elseOne;
		}


		public String getB_elseName() {
			return b_elseName;
		}


		public void setB_elseName(String b_elseName) {
			this.b_elseName = b_elseName;
		}


		public String getB_relationTwo() {
			return b_relationTwo;
		}


		public void setB_relationTwo(String b_relationTwo) {
			this.b_relationTwo = b_relationTwo;
		}


		public String getB_clanPhones() {
			return b_clanPhones;
		}


		public void setB_clanPhones(String b_clanPhones) {
			this.b_clanPhones = b_clanPhones;
		}


		public String getB_elseTwo() {
			return b_elseTwo;
		}


		public void setB_elseTwo(String b_elseTwo) {
			this.b_elseTwo = b_elseTwo;
		}


		public String getB_certifier() {
			return b_certifier;
		}


		public void setB_certifier(String b_certifier) {
			this.b_certifier = b_certifier;
		}


		public String getB_certifierPhonne() {
			return b_certifierPhonne;
		}


		public void setB_certifierPhonne(String b_certifierPhonne) {
			this.b_certifierPhonne = b_certifierPhonne;
		}


		public Integer getC_id() {
			return c_id;
		}


		public void setC_id(Integer c_id) {
			this.c_id = c_id;
		}


		public Integer getC_uid() {
			return c_uid;
		}


		public void setC_uid(Integer c_uid) {
			this.c_uid = c_uid;
		}


		public Integer getC_bid() {
			return c_bid;
		}


		public void setC_bid(Integer c_bid) {
			this.c_bid = c_bid;
		}


		public Double getC_monthlyIncome() {
			return c_monthlyIncome;
		}


		public void setC_monthlyIncome(Double c_monthlyIncome) {
			this.c_monthlyIncome = c_monthlyIncome;
		}


		public String getC_incomeCompos() {
			return c_incomeCompos;
		}


		public void setC_incomeCompos(String c_incomeCompos) {
			this.c_incomeCompos = c_incomeCompos;
		}


		public Double getC_monthlyExpenses() {
			return c_monthlyExpenses;
		}


		public void setC_monthlyExpenses(Double c_monthlyExpenses) {
			this.c_monthlyExpenses = c_monthlyExpenses;
		}


		public String getC_monthlyCompos() {
			return c_monthlyCompos;
		}


		public void setC_monthlyCompos(String c_monthlyCompos) {
			this.c_monthlyCompos = c_monthlyCompos;
		}


		public Integer getC_housingcondition() {
			return c_housingcondition;
		}


		public void setC_housingcondition(Integer c_housingcondition) {
			this.c_housingcondition = c_housingcondition;
		}


		public Double getC_realestateValue() {
			return c_realestateValue;
		}


		public void setC_realestateValue(Double c_realestateValue) {
			this.c_realestateValue = c_realestateValue;
		}


		public Integer getC_isCar() {
			return c_isCar;
		}


		public void setC_isCar(Integer c_isCar) {
			this.c_isCar = c_isCar;
		}


		public Double getC_vehicleValue() {
			return c_vehicleValue;
		}


		public void setC_vehicleValue(Double c_vehicleValue) {
			this.c_vehicleValue = c_vehicleValue;
		}


		public String getC_shareholdCorporName() {
			return c_shareholdCorporName;
		}


		public void setC_shareholdCorporName(String c_shareholdCorporName) {
			this.c_shareholdCorporName = c_shareholdCorporName;
		}


		public Double getC_shareholdCorporMoney() {
			return c_shareholdCorporMoney;
		}


		public void setC_shareholdCorporMoney(Double c_shareholdCorporMoney) {
			this.c_shareholdCorporMoney = c_shareholdCorporMoney;
		}


		public String getC_elseMoney() {
			return c_elseMoney;
		}


		public void setC_elseMoney(String c_elseMoney) {
			this.c_elseMoney = c_elseMoney;
		}


		public String getC_firstCosurety() {
			return c_firstCosurety;
		}


		public void setC_firstCosurety(String c_firstCosurety) {
			this.c_firstCosurety = c_firstCosurety;
		}


		public String getC_firstRelation() {
			return c_firstRelation;
		}


		public void setC_firstRelation(String c_firstRelation) {
			this.c_firstRelation = c_firstRelation;
		}


		public String getC_firstPhone() {
			return c_firstPhone;
		}


		public void setC_firstPhone(String c_firstPhone) {
			this.c_firstPhone = c_firstPhone;
		}


		public String getC_secondCosurety() {
			return c_secondCosurety;
		}


		public void setC_secondCosurety(String c_secondCosurety) {
			this.c_secondCosurety = c_secondCosurety;
		}


		public String getC_secondRelation() {
			return c_secondRelation;
		}


		public void setC_secondRelation(String c_secondRelation) {
			this.c_secondRelation = c_secondRelation;
		}


		public String getC_secondPhone() {
			return c_secondPhone;
		}


		public void setC_secondPhone(String c_secondPhone) {
			this.c_secondPhone = c_secondPhone;
		}


		public String getC_commercialPhoto() {
			return c_commercialPhoto;
		}


		public void setC_commercialPhoto(String c_commercialPhoto) {
			this.c_commercialPhoto = c_commercialPhoto;
		}


		public String getC_uploadFile() {
			return c_uploadFile;
		}


		public void setC_uploadFile(String c_uploadFile) {
			this.c_uploadFile = c_uploadFile;
		}


		public List<Investrecord> getInvestList() {
			return investList;
		}


		public void setInvestList(List<Investrecord> investList) {
			this.investList = investList;
		}


		public List<Loadrecord> getLoadList() {
			return loadList;
		}


		public void setLoadList(List<Loadrecord> loadList) {
			this.loadList = loadList;
		}


		public Map<Integer, List<Rebackrecord>> getRebackMap() {
			return rebackMap;
		}


		public void setRebackMap(Map<Integer, List<Rebackrecord>> rebackMap) {
			this.rebackMap = rebackMap;
		}


		public List<Rechargerecord> getRechargeList() {
			return rechargeList;
		}


		public void setRechargeList(List<Rechargerecord> rechargeList) {
			this.rechargeList = rechargeList;
		}
		
		
}
