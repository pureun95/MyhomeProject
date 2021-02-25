package com.myhome.user;

public class vwContractorDTO {
	private int seqContractor;
	private String contractorName;
	private String companyNumber;
	private String address;
	private String phoneNumber;
	private int reportCount;
	
	
	public int getSeqContractor() {
		return seqContractor;
	}
	public void setSeqContractor(int seqContractor) {
		this.seqContractor = seqContractor;
	}
	public String getContractorName() {
		return contractorName;
	}
	public void setContractorName(String contractorName) {
		this.contractorName = contractorName;
	}
	public String getCompanyNumber() {
		return companyNumber;
	}
	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getReportCount() {
		return reportCount;
	}
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	
}
