package com.myhome.user;

import java.util.Date;

public class vwUsedLikeDTO {
	

	private int seqUser;
	private int seqUsed;
	private String title;
	private String sellNickname;
	private String state;
	private String imagePath;
	private Date writeDate;
	private String tradeMode;
	
	private int price;
	
	
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	public int getSeqUsed() {
		return seqUsed;
	}
	public void setSeqUsed(int seqUsed) {
		this.seqUsed = seqUsed;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSellNickname() {
		return sellNickname;
	}
	public void setSellNickname(String sellNickname) {
		this.sellNickname = sellNickname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getTradeMode() {
		return tradeMode;
	}
	public void setTradeMode(String tradeMode) {
		this.tradeMode = tradeMode;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
