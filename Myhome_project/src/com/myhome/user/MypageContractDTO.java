package com.myhome.user;

public class MypageContractDTO {

	private int seqContract; //전자계약번호
	private int seqUser; //임대인번호
	private String sellname; //임대인이름 
	private String buyname;	//임차인이름
	private String contractorName; //중개인이름
	private String contractState; //계약상태
	
	
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
	
	
	
}
