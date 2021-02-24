package com.myhome.user;

import java.util.Date;

public class BoardUsedDTO {

	private int seqUsed;
	private String category;
	private String title;
	private String nickname;
	private Date writeDate;
	private int seqUser;
	private String name;
	private String tradeMode;
	private int price;
	private String imagePath;

	private int commentCount;

	private int totalcount; // 전체 글 수

	private String content; //본문



	public int getSeqUsed() {
		return seqUsed;
	}
	public void setSeqUsed(int seqUsed) {
		this.seqUsed = seqUsed;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}



}