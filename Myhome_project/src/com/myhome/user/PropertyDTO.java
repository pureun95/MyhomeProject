package com.myhome.user;

import java.util.Date;

public class PropertyDTO {
	private int seqProperty;
	private int seqPropertyContractType;
	private int seqPropertyRoomOption;
	private int seqPropertyBuildingOption;
	private int seqLocation;
	private int seqMaintenanceOption;
	private int seqPropertyRoomType;
	private int seqImage;
	private String occupancyDate;
	private String floor;
	private String title;
	private String content;
	
	
	public int getSeqProperty() {
		return seqProperty;
	}
	public void setSeqProperty(int seqProperty) {
		this.seqProperty = seqProperty;
	}
	public int getSeqPropertyContractType() {
		return seqPropertyContractType;
	}
	public void setSeqPropertyContractType(int seqPropertyContractType) {
		this.seqPropertyContractType = seqPropertyContractType;
	}
	public int getSeqPropertyRoomOption() {
		return seqPropertyRoomOption;
	}
	public void setSeqPropertyRoomOption(int seqPropertyRoomOption) {
		this.seqPropertyRoomOption = seqPropertyRoomOption;
	}
	public int getSeqPropertyBuildingOption() {
		return seqPropertyBuildingOption;
	}
	public void setSeqPropertyBuildingOption(int seqPropertyBuildingOption) {
		this.seqPropertyBuildingOption = seqPropertyBuildingOption;
	}
	public int getSeqLocation() {
		return seqLocation;
	}
	public void setSeqLocation(int seqLocation) {
		this.seqLocation = seqLocation;
	}
	public int getSeqMaintenanceOption() {
		return seqMaintenanceOption;
	}
	public void setSeqMaintenanceOption(int seqMaintenanceOption) {
		this.seqMaintenanceOption = seqMaintenanceOption;
	}
	public int getSeqPropertyRoomType() {
		return seqPropertyRoomType;
	}
	public void setSeqPropertyRoomType(int seqPropertyRoomType) {
		this.seqPropertyRoomType = seqPropertyRoomType;
	}
	public int getSeqImage() {
		return seqImage;
	}
	public void setSeqImage(int seqImage) {
		this.seqImage = seqImage;
	}
	
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
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
	public String getOccupancyDate() {
		return occupancyDate;
	}
	public void setOccupancyDate(String occupancyDate) {
		this.occupancyDate = occupancyDate;
	}
	
	
}
