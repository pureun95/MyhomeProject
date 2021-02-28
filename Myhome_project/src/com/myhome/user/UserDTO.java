package com.myhome.user;

public class UserDTO {

	private int seqAllUser;
	private String id;
	private String name;
	private String password;
	private String email;
	private String nickname;
	private int state;
	private String phonenumber;
	private String address;

	private String idNumber;

	// user mypageinfo.do 에 사용
	private String interestroomtype;
	private String interestlocation;
	private int alarm;
	private int seqLocation;

	public String getInterestroomtype() {
		return interestroomtype;
	}

	public void setInterestroomtype(String interestroomtype) {
		this.interestroomtype = interestroomtype;
	}

	public String getInterestlocation() {
		return interestlocation;
	}

	public void setInterestlocation(String interestlocation) {
		this.interestlocation = interestlocation;
	}

	public int getAlarm() {
		return alarm;
	}

	public void setAlarm(int alarm) {
		this.alarm = alarm;
	}

	public int getSeqLocation() {
		return seqLocation;
	}

	public void setSeqLocation(int seqLocation) {
		this.seqLocation = seqLocation;
	}

	public int getSeqPropertyRoomtypeDetail() {
		return seqPropertyRoomtypeDetail;
	}

	public void setSeqPropertyRoomtypeDetail(int seqPropertyRoomtypeDetail) {
		this.seqPropertyRoomtypeDetail = seqPropertyRoomtypeDetail;
	}

	private int seqPropertyRoomtypeDetail;

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public int getSeqAllUser() {
		return seqAllUser;
	}

	public void setSeqAllUser(int seqAllUser) {
		this.seqAllUser = seqAllUser;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
