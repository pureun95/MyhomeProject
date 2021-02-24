package com.myhome.user;

public class vwPropertyLikeDTO {
	private int seqUser;
	private String imagePath;
	private int state;
	private int deposit;		//보증금
	private int monthlyRent;	//월세가격
	private int dealing;		//매매가격
	private String roomtype;
	private int spacing;		//평수
	private String floor;
	
	private String location;
	private int seqContractorProperty;
	
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
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
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public int getSpacing() {
		return spacing;
	}
	public void setSpacing(int spacing) {
		this.spacing = spacing;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSeqContractorProperty() {
		return seqContractorProperty;
	}
	public void setSeqContractorProperty(int seqContractorProperty) {
		this.seqContractorProperty = seqContractorProperty;
	}
	
}