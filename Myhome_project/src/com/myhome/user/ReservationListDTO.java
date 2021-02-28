package com.myhome.user;

import java.util.Date;

public class ReservationListDTO {

	private int seqUser;
	private String name;
	private Date reservationDate;
	private int price;
	
	private int seqCleanReservation;
	private int seqClean;
	private int seqCleanReview;
	
	
	private int seqMoveReservation;
	private int seqMove;
	private int seqMoveReview;
	
	
	
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
	public int getSeqCleanReservation() {
		return seqCleanReservation;
	}
	public void setSeqCleanReservation(int seqCleanReservation) {
		this.seqCleanReservation = seqCleanReservation;
	}
	public int getSeqClean() {
		return seqClean;
	}
	public void setSeqClean(int seqClean) {
		this.seqClean = seqClean;
	}
	public int getSeqMoveReservation() {
		return seqMoveReservation;
	}
	public void setSeqMoveReservation(int seqMoveReservation) {
		this.seqMoveReservation = seqMoveReservation;
	}
	public int getSeqMove() {
		return seqMove;
	}
	public void setSeqMove(int seqMove) {
		this.seqMove = seqMove;
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
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
