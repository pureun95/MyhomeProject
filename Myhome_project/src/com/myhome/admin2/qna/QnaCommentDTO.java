package com.myhome.admin2.qna;

public class QnaCommentDTO {
	
	private String seqQnAComment;
	private String seqAdmin;
	private String seqQna;
	private String content;
	private String writeDate;
	public String getSeqQnAComment() {
		return seqQnAComment;
	}
	public void setSeqQnAComment(String seqQnAComment) {
		this.seqQnAComment = seqQnAComment;
	}
	public String getSeqAdmin() {
		return seqAdmin;
	}
	public void setSeqAdmin(String seqAdmin) {
		this.seqAdmin = seqAdmin;
	}
	
	public String getSeqQna() {
		return seqQna;
	}
	public void setSeqQna(String seqQna) {
		this.seqQna = seqQna;
	}
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	
}
