package com.myhome.user;

public class CommentCommunityDTO {
	
	private String seqCommunityComment;
	private String seqCommunity;
	private String seqUser;
	private String seqAllUser;
	private String writeDate;
	private String ccontent;
	
	private String nickName;
	
	

	public String getSeqCommunityComment() {
		return seqCommunityComment;
	}

	public void setSeqCommunityComment(String seqCommunityComment) {
		this.seqCommunityComment = seqCommunityComment;
	}

	public String getSeqCommunity() {
		return seqCommunity;
	}

	public void setSeqCommunity(String seqCommunity) {
		this.seqCommunity = seqCommunity;
	}

	public String getSeqUser() {
		return seqUser;
	}

	public void setSeqUser(String seqUser) {
		this.seqUser = seqUser;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}



	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getSeqAllUser() {
		return seqAllUser;
	}

	public void setSeqAllUser(String seqAllUser) {
		this.seqAllUser = seqAllUser;
	}

}
