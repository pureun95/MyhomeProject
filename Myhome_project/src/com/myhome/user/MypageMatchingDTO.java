package com.myhome.user;

public class MypageMatchingDTO {

	private int seqMatching;
	private int seqUser;
	private int seqProperty;
	private int seqContractor;
	private int seqLessorProperty;
	private String title;
	private String contractorName;
	private String name;
	private String response;
	
	private String location; //매물 주소
	
	
	public int getSeqMatching() {
		return seqMatching;
	}
	public void setSeqMatching(int seqMatching) {
		this.seqMatching = seqMatching;
	}
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	public int getSeqProperty() {
		return seqProperty;
	}
	public void setSeqProperty(int seqProperty) {
		this.seqProperty = seqProperty;
	}
	public int getSeqContractor() {
		return seqContractor;
	}
	public void setSeqContractor(int seqContractor) {
		this.seqContractor = seqContractor;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContractorName() {
		return contractorName;
	}
	public void setContractorName(String contractorName) {
		this.contractorName = contractorName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSeqLessorProperty() {
		return seqLessorProperty;
	}
	public void setSeqLessorProperty(int seqLessorProperty) {
		this.seqLessorProperty = seqLessorProperty;
	}
	
	
}
