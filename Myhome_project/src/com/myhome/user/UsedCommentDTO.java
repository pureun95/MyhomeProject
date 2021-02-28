package com.myhome.user;

import java.util.Date;

public class UsedCommentDTO {
	
	private int seqUsedComment;
	private String nickname;
	private int seqUsed;
	private String content;
	private Date writeDate;
	
	private int seqUser;
	
	
	public int getSeqUsedComment() {
		return seqUsedComment;
	}
	public void setSeqUsedComment(int seqUsedComment) {
		this.seqUsedComment = seqUsedComment;
	}
	
	public int getSeqUsed() {
		return seqUsed;
	}
	public void setSeqUsed(int seqUsed) {
		this.seqUsed = seqUsed;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(int seqUser) {
		this.seqUser = seqUser;
	}
	
	
}
