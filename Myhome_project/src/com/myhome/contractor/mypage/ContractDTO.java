package com.myhome.contractor.mypage;

import java.util.Calendar;

/**
 * 
 * @ 중개인 전자계약 DTO
 * 
 * */
public class ContractDTO {

	private String seqContract; //전자계약 seq
	
	private String seqUserC; //중개인 seq
	private String seqUserL; //임대인seq
	private String seqUserT; //임차인 seq
	
	private String nameC; //중개인 이름
	private String nameT; //임차인 이름
	private String nameL; //임대인 이름
	
	private String telC; //중개인 전화번호
	private String telL; //임대인 전화번호
	private String telT; //임차인 전화번호
	
	private String businessNum; //중개인 사업자번호
	private String ssnT; //임차인 주민번호
	private String ssnL; //임대인 주민번호
	
	private String signC; //중개인 암호
	private String signT; //임차인 암호
	private String signL; //임대인 암호

	private String contractDate; //전자계약일
	private String state; //계약상태
	
	private String seqCp; //매칭된 매물번호
	private String seqLp; //임대인 매물번호
	private String seqp;	//모든 매물번호
	
	private String location;	//매물주소
	
	private String deposit;	//계약금(보증금)
	private String monthlyRent; //월세
	private String period;		//기간
	private String dealing;	//매매
	
	private String addressL; //임대인 주소
	private String addressT; //임차인 주소
	private String addressC; //중개인주소
	

	//getter setter
	
	public String getAddressL() {
		return addressL;
	}
	public void setAddressL(String addressL) {
		this.addressL = addressL;
	}
	public String getAddressT() {
		return addressT;
	}
	public void setAddressT(String addressT) {
		this.addressT = addressT;
	}
	public String getAddressC() {
		return addressC;
	}
	public void setAddressC(String addressC) {
		this.addressC = addressC;
	}
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	public String getMonthlyRent() {
		return monthlyRent;
	}
	public void setMonthlyRent(String monthlyRent) {
		this.monthlyRent = monthlyRent;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getDealing() {
		return dealing;
	}
	public void setDealing(String dealing) {
		this.dealing = dealing;
	}
	
	public String getSeqUserC() {
		return seqUserC;
	}
	public void setSeqUserC(String seqUserC) {
		this.seqUserC = seqUserC;
	}
	public String getSeqUserL() {
		return seqUserL;
	}
	public void setSeqUserL(String seqUserL) {
		this.seqUserL = seqUserL;
	}
	public String getSeqUserT() {
		return seqUserT;
	}
	public void setSeqUserT(String seqUserT) {
		this.seqUserT = seqUserT;
	}
	public String getNameC() {
		return nameC;
	}
	public void setNameC(String nameC) {
		this.nameC = nameC;
	}
	public String getNameT() {
		return nameT;
	}
	public void setNameT(String nameT) {
		this.nameT = nameT;
	}
	public String getNameL() {
		return nameL;
	}
	public void setNameL(String nameL) {
		this.nameL = nameL;
	}
	public String getTelC() {
		return telC;
	}
	public void setTelC(String telC) {
		this.telC = telC;
	}
	public String getTelL() {
		return telL;
	}
	public void setTelL(String telL) {
		this.telL = telL;
	}
	public String getTelT() {
		return telT;
	}
	public void setTelT(String telT) {
		this.telT = telT;
	}
	public String getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	public String getSsnT() {
		return ssnT;
	}
	public void setSsnT(String ssnT) {
		this.ssnT = ssnT;
	}
	public String getSsnL() {
		return ssnL;
	}
	public void setSsnL(String ssnL) {
		this.ssnL = ssnL;
	}
	public String getSignC() {
		return signC;
	}
	public void setSignC(String signC) {
		this.signC = signC;
	}
	public String getSignT() {
		return signT;
	}
	public void setSignT(String signT) {
		this.signT = signT;
	}
	public String getSignL() {
		return signL;
	}
	public void setSignL(String signL) {
		this.signL = signL;
	}
	public String getContractDate() {
		return contractDate;
	}
	public void setContractDate(String contractDate) {
		this.contractDate = contractDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSeqCp() {
		return seqCp;
	}
	public void setSeqCp(String seqCp) {
		this.seqCp = seqCp;
	}
	public String getSeqLp() {
		return seqLp;
	}
	public void setSeqLp(String seqLp) {
		this.seqLp = seqLp;
	}
	public String getSeqp() {
		return seqp;
	}
	public void setSeqp(String seqp) {
		this.seqp = seqp;
	}
	public String getSeqContract() {
		return seqContract;
	}
	public void setSeqContract(String seqContract) {
		this.seqContract = seqContract;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	
	
	
}
