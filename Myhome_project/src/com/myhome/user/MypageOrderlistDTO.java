package com.myhome.user;

import java.util.Date;

public class MypageOrderlistDTO {

	private int seqContract;
	private int seqUser;
	private int seqContractorProperty;
	private String title;
	private String name;
	private String contractorName;
	private Date contractDate;
	private int seqContractorReview;
	private int seqPropertyReview;
	
	
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
	public int getSeqContractorProperty() {
		return seqContractorProperty;
	}
	public void setSeqContractorProperty(int seqContractorProperty) {
		this.seqContractorProperty = seqContractorProperty;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContractorName() {
		return contractorName;
	}
	public void setContractorName(String contractorName) {
		this.contractorName = contractorName;
	}
	public Date getContractDate() {
		return contractDate;
	}
	public void setContractDate(Date contractDate) {
		this.contractDate = contractDate;
	}
	public int getSeqContractorReview() {
		return seqContractorReview;
	}
	public void setSeqContractorReview(int seqContractorReview) {
		this.seqContractorReview = seqContractorReview;
	}
	public int getSeqPropertyReview() {
		return seqPropertyReview;
	}
	public void setSeqPropertyReview(int seqPropertyReview) {
		this.seqPropertyReview = seqPropertyReview;
	}
	
	
}
