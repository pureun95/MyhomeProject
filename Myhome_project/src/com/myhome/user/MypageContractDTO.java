package com.myhome.user;

import java.util.Date;

public class MypageContractDTO {

	private int seqContract; //전자계약번호
	private int seqUser; //임대인번호
	private String sellname; //임대인이름 
	private String buyname;	//임차인이름
	private String contractorName; //중개인이름
	private String contractState; //계약상태
	private int seqContractorProperty;
	
	private String contractorSign;	//중개인암호
	private String lessorSign;	//중개인암호
	private String tenantSign;	//중개인암호
	private Date contractDate;	//계약일
	private String contractContent;	//계약내용
	private int bSeqUser;	//임차인번호
	private String bName;	//임차인이름
	private String bPhoneNumber;	//임차인전화번호
	private String bAddress;		//임차인집주소
	private String bIdNumber;		//임차인 주민번호
	
	private String sName;	//임대인이름
	private String sPhoneNumber;	//임대인전화번호
	private String sAddress;		//임대인집주소
	private String sIdNumber;		//임대인 주민번호
	 
	private String cPhoneNumber;	//중개인전화번호
	private String cAddress;		//중개사주소
	private String companyNumber;	//사업자 등록번호
	
	private int deposit;		//보증금
	private int monthlyRent;	//월세
	private int dealing;			//매매가격
	private int contractPeriod;	//계약기간(달)
	
	private String contractType;	//계약종류(월,전세,매매)
	private String location;	//매물주소
	
	
	public String getContractorSign() {
		return contractorSign;
	}
	public void setContractorSign(String contractorSign) {
		this.contractorSign = contractorSign;
	}
	public String getLessorSign() {
		return lessorSign;
	}
	public void setLessorSign(String lessorSign) {
		this.lessorSign = lessorSign;
	}
	public String getTenantSign() {
		return tenantSign;
	}
	public void setTenantSign(String tenantSign) {
		this.tenantSign = tenantSign;
	}
	public Date getContractDate() {
		return contractDate;
	}
	public void setContractDate(Date contractDate) {
		this.contractDate = contractDate;
	}
	public String getContractContent() {
		return contractContent;
	}
	public void setContractContent(String contractContent) {
		this.contractContent = contractContent;
	}
	public int getbSeqUser() {
		return bSeqUser;
	}
	public void setbSeqUser(int bSeqUser) {
		this.bSeqUser = bSeqUser;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbPhoneNumber() {
		return bPhoneNumber;
	}
	public void setbPhoneNumber(String bPhoneNumber) {
		this.bPhoneNumber = bPhoneNumber;
	}
	public String getbAddress() {
		return bAddress;
	}
	public void setbAddress(String bAddress) {
		this.bAddress = bAddress;
	}
	public String getbIdNumber() {
		return bIdNumber;
	}
	public void setbIdNumber(String bIdNumber) {
		this.bIdNumber = bIdNumber;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsPhoneNumber() {
		return sPhoneNumber;
	}
	public void setsPhoneNumber(String sPhoneNumber) {
		this.sPhoneNumber = sPhoneNumber;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public String getsIdNumber() {
		return sIdNumber;
	}
	public void setsIdNumber(String sIdNumber) {
		this.sIdNumber = sIdNumber;
	}
	public String getcPhoneNumber() {
		return cPhoneNumber;
	}
	public void setcPhoneNumber(String cPhoneNumber) {
		this.cPhoneNumber = cPhoneNumber;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	public String getCompanyNumber() {
		return companyNumber;
	}
	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getMonthlyRent() {
		return monthlyRent;
	}
	public void setMonthlyRent(int monthlyRent) {
		this.monthlyRent = monthlyRent;
	}
	public int getDealing() {
		return dealing;
	}
	public void setDealing(int dealing) {
		this.dealing = dealing;
	}
	public int getContractPeriod() {
		return contractPeriod;
	}
	public void setContractPeriod(int contractPeriod) {
		this.contractPeriod = contractPeriod;
	}
	public String getContractType() {
		return contractType;
	}
	public void setContractType(String contractType) {
		this.contractType = contractType;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSeqContract() {
		return seqContract;
	}
	public void setSeqContract(int seqContract) {
		this.seqContract = seqContract;
	}
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	public String getSellname() {
		return sellname;
	}
	public void setSellname(String sellname) {
		this.sellname = sellname;
	}
	public String getBuyname() {
		return buyname;
	}
	public void setBuyname(String buyname) {
		this.buyname = buyname;
	}
	public String getContractorName() {
		return contractorName;
	}
	public void setContractorName(String contractorName) {
		this.contractorName = contractorName;
	}
	public String getContractState() {
		return contractState;
	}
	public void setContractState(String contractState) {
		this.contractState = contractState;
	}
	public int getSeqContractorProperty() {
		return seqContractorProperty;
	}
	public void setSeqContractorProperty(int seqContractorProperty) {
		this.seqContractorProperty = seqContractorProperty;
	}
	
	
	
}
