package com.project.hospital.vo;

import java.sql.Timestamp;

public class ReservationVO {
	
	private String reservId;
	private String reservContent;
	private String userNum;
	private String otId;
	private String timetableId;

	// 병합 후 추가
	private Timestamp createdAt;
	private Timestamp updatedAt;
	
	public ReservationVO() {
		super();
	}
	
	
	
	public ReservationVO(String reservId, String reservContent, String userNum, String otId, String timetableId,
			Timestamp createdAt, Timestamp updatedAt) {
		super();
		this.reservId = reservId;
		this.reservContent = reservContent;
		this.userNum = userNum;
		this.otId = otId;
		this.timetableId = timetableId;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	

	public String getReservId() {
		return reservId;
	}
	public void setReservId(String reservId) {
		this.reservId = reservId;
	}
	public String getReservContent() {
		return reservContent;
	}
	public void setReservContent(String reservContent) {
		this.reservContent = reservContent;
	}

	public String getUserNum() {
		return userNum;
	}
	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}
	public String getOtId() {
		return otId;
	}
	public void setOtId(String otId) {
		this.otId = otId;
	}
	
	
	public String getTimetableId() {
		return timetableId;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	public Timestamp getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Timestamp updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Override
	public String toString() {
		return "ReservationVO [reservId=" + reservId + ", reservContent=" + reservContent + ", userNum=" + userNum
				+ ", otId=" + otId + ", timetableId=" + timetableId + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
}
