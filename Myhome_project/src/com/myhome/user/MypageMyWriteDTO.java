package com.myhome.user;

import java.sql.Date;

public class MypageMyWriteDTO {


	//2.1 중고장터(tblUsed), 방올리기(tblLessorProperty), 커뮤니티(tblCommunity)에서 내가 쓴 글 목록 받아오기.
	
	//2.2 /댓글/ 중고장터댓글, 커뮤니티댓글 /후기/ 이삿짐센터후기, 청소업체후기, 중개인후기, 매물후기 에서 내가쓴글 목록 받아오기
	//2.3 /신고/ 중고장터신고, 매물거래신고, 커뮤니티신고  에서 내가 쓴 글 목록 받아오기.
	
	//게시글
	private int seqUser;//회원번호
	
	private int seqUsed;
	private int seqCommunity;
	private int seqProperty;
	
	private String title;
	private String content;
	private Date writeDate;
	private int viewCount; //조회수
	private int count;	//댓글수
	private String state;//계약상태
	
	//댓글,후기
		//댓글
	private int seqCommunityComment;
	private int seqUsedComment;
		//후기
	private int seqContractorReview;
	private int seqPropertyReview;
	private int seqMoveReview;
	private int seqCleanReview;
	
	
	private String contractorName;	//중개사이름
	private String ptitle; 	//매물 글 제목
	private String location; // 매물 주소
	private String name;	//업체(이사/청소)이름
	private Date reservationDate;	//업체 예약일
	
	private int rating;		//평점
	
	//신고
	private int seqCommunityReport;
	private int seqUsedReport;
	private int seqPropertyContractReport;
	
	private String reason;//신고사유
	private String reportState;//신고처리상태
	
	//----------------------------------------------------------------//
	
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
	public int getSeqCommunity() {
		return seqCommunity;
	}
	public void setSeqCommunity(int seqCommunity) {
		this.seqCommunity = seqCommunity;
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
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getSeqCommunityComment() {
		return seqCommunityComment;
	}
	public void setSeqCommunityComment(int seqCommunityComment) {
		this.seqCommunityComment = seqCommunityComment;
	}
	public int getSeqUsedComment() {
		return seqUsedComment;
	}
	public void setSeqUsedComment(int seqUsedComment) {
		this.seqUsedComment = seqUsedComment;
	}
	public int getSeqContractorReview() {
		return seqContractorReview;
	}
	public void setSeqContractorReview(int seqContractorReview) {
		this.seqContractorReview = seqContractorReview;
	}
	public int getSeqPropertyReview() {
		return seqPropertyReview;
	}
	public void setSeqPropertyReview(int seqPropertyReview) {
		this.seqPropertyReview = seqPropertyReview;
	}
	public String getContractorName() {
		return contractorName;
	}
	public void setContractorName(String contractorName) {
		this.contractorName = contractorName;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getSeqCommunityReport() {
		return seqCommunityReport;
	}
	public void setSeqCommunityReport(int seqCommunityReport) {
		this.seqCommunityReport = seqCommunityReport;
	}
	public int getSeqUsedReport() {
		return seqUsedReport;
	}
	public void setSeqUsedReport(int seqUsedReport) {
		this.seqUsedReport = seqUsedReport;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getReportState() {
		return reportState;
	}
	public void setReportState(String reportState) {
		this.reportState = reportState;
	}
	public int getSeqProperty() {
		return seqProperty;
	}
	public void setSeqProperty(int seqProperty) {
		this.seqProperty = seqProperty;
	}
	public int getSeqPropertyContractReport() {
		return seqPropertyContractReport;
	}
	public void setSeqPropertyContractReport(int seqPropertyContractReport) {
		this.seqPropertyContractReport = seqPropertyContractReport;
	}
	public int getSeqCleanReview() {
		return seqCleanReview;
	}
	public void setSeqCleanReview(int seqCleanReview) {
		this.seqCleanReview = seqCleanReview;
	}
	public int getSeqMoveReview() {
		return seqMoveReview;
	}
	public void setSeqMoveReview(int seqMoveReview) {
		this.seqMoveReview = seqMoveReview;
	}
	
	
	
	
}
