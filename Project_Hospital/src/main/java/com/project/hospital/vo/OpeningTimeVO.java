package com.project.hospital.vo;

import java.sql.Timestamp;

public class OpeningTimeVO {
	
	private String otId;
	private String drId;
	private String timeType;
	private String otState;
	private String yearDate;

	// 병합 시 추가
	private Timestamp createdAt;
	private Timestamp updatedAt;
	
	
	public OpeningTimeVO() {
		super();
	}

	public OpeningTimeVO(String otId, String drId, String timeType, String otState, String yearDate,
			Timestamp createdAt, Timestamp updatedAt) {
		super();
		this.otId = otId;
		this.drId = drId;
		this.timeType = timeType;
		this.otState = otState;
		this.yearDate = yearDate;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}


	public String getTimeType() {
		return timeType;
	}

	public String getOtId() {
		return otId;
	}
	public String getDrId() {
		return drId;
	}
	public String getOtState() {
		return otState;
	}
	public String getYearDate() {
		return yearDate;
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
	
	
}
