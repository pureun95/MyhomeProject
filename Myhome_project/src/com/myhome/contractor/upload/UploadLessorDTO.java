package com.myhome.contractor.upload;

/*
 * 중개인과 매칭된 임대인의 매물 올리기 DTO
 * 
 * */
public class UploadLessorDTO {
		
		//1. 방옵션
		private int roomType; //1. 원룸 2. 투룸 3. 오피스텔
		private int spacing;
		
		//2. 계약형태
		private int contractTypeDetail; //1. 월세 2. 전세 3. 매매
		private int deposit;
		private int monthlyRent;
		private int dealing;
		private int contractPeriod;
		
		//3. 관리비
		private int internet;
		private int cable; //방옵션 tv와 겹침 
		private int cleaning;
		private int water;
		private int gas;
		private int electric;
		private int serviceCharge;
		
		//4. 건물옵션
		private int parking;
		private int elevator;
		private int pet;
		private int window;
		
		//5. 방옵션 12개
		private int airconditional;
		private int washer;
		private int bed;
		private int desk;
		private int closet;
		private int tv;
		private int shoebox;
		private int refrigerator;
		private int stove;
		private int induction;
		private int microwave;
		private int bidet;
		
		//6. 지역 
		private String location;
		
		//7. 이미지
		private String path;
		
		//8. 최종넣기
		private int seqContractor;
		private String occupancyDate;
		private String title;
		private String content;
		
		
		//getter & setter
		
		//1. 방옵션
		public int getRoomType() {
			return roomType;
		}
		public void setRoomType(int roomType) {
			this.roomType = roomType;
		}
		public int getSpacing() {
			return spacing;
		}
		public void setSpacing(int spacing) {
			this.spacing = spacing;
		}
		
		//2. 계약형태
		public int getContractTypeDetail() {
			return contractTypeDetail;
		}
		public void setContractTypeDetail(int contractTypeDetail) {
			this.contractTypeDetail = contractTypeDetail;
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
		
		//3. 관리비
		public int getInternet() {
			return internet;
		}
		public void setInternet(int internet) {
			this.internet = internet;
		}
		public int getCable() {
			return cable;
		}
		public void setCable(int cable) {
			this.cable = cable;
		}
		public int getCleaning() {
			return cleaning;
		}
		public void setCleaning(int cleaning) {
			this.cleaning = cleaning;
		}
		public int getWater() {
			return water;
		}
		public void setWater(int water) {
			this.water = water;
		}
		public int getGas() {
			return gas;
		}
		public void setGas(int gas) {
			this.gas = gas;
		}
		public int getElectric() {
			return electric;
		}
		public void setElectric(int electric) {
			this.electric = electric;
		}
		public int getServiceCharge() {
			return serviceCharge;
		}
		public void setServiceCharge(int serviceCharge) {
			this.serviceCharge = serviceCharge;
		}
		
		//4. 건물옵션
		public int getParking() {
			return parking;
		}
		public void setParking(int parking) {
			this.parking = parking;
		}
		public int getElevator() {
			return elevator;
		}
		public void setElevator(int elevator) {
			this.elevator = elevator;
		}
		public int getPet() {
			return pet;
		}
		public void setPet(int pet) {
			this.pet = pet;
		}
		public int getWindow() {
			return window;
		}
		public void setWindow(int window) {
			this.window = window;
		}
		
		//5. 방옵션
		public int getAirconditional() {
			return airconditional;
		}
		public void setAirconditional(int airconditional) {
			this.airconditional = airconditional;
		}
		public int getWasher() {
			return washer;
		}
		public void setWasher(int washer) {
			this.washer = washer;
		}
		public int getBed() {
			return bed;
		}
		public void setBed(int bed) {
			this.bed = bed;
		}
		public int getDesk() {
			return desk;
		}
		public void setDesk(int desk) {
			this.desk = desk;
		}
		public int getCloset() {
			return closet;
		}
		public void setCloset(int closet) {
			this.closet = closet;
		}
		public int getTv() {
			return tv;
		}
		public void setTv(int tv) {
			this.tv = tv;
		}
		public int getShoebox() {
			return shoebox;
		}
		public void setShoebox(int shoebox) {
			this.shoebox = shoebox;
		}
		public int getRefrigerator() {
			return refrigerator;
		}
		public void setRefrigerator(int refrigerator) {
			this.refrigerator = refrigerator;
		}
		public int getStove() {
			return stove;
		}
		public void setStove(int stove) {
			this.stove = stove;
		}
		public int getInduction() {
			return induction;
		}
		public void setInduction(int induction) {
			this.induction = induction;
		}
		public int getMicrowave() {
			return microwave;
		}
		public void setMicrowave(int microwave) {
			this.microwave = microwave;
		}
		public int getBidet() {
			return bidet;
		}
		public void setBidet(int bidet) {
			this.bidet = bidet;
		}
		
		//6. 지역
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		
		//7. 이미지
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		
		//8. 최종넣기
		public int getSeqContractor() {
			return seqContractor;
		}
		public void setSeqContractor(int seqContractor) {
			this.seqContractor = seqContractor;
		}
		public String getOccupancyDate() {
			return occupancyDate;
		}
		public void setOccupancyDate(String occupancyDate) {
			this.occupancyDate = occupancyDate;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		
		
}
