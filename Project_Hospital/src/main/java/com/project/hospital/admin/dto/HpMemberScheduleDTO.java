package com.project.hospital.admin.dto;

import java.util.ArrayList;
import java.util.List;

public class HpMemberScheduleDTO {
	
	private String amOtId;
	private String amStatus;
	private String pmOtId;
	private String pmStatus;
	private String date;
	private List<String> amReservOtIdList = new ArrayList<String>();
	private List<String> pmReservOtIdList = new ArrayList<String>();
	
	
	public HpMemberScheduleDTO() {
		super();
	}


	public HpMemberScheduleDTO(String amOtId, String amStatus, String pmOtId, String pmStatus, String date,
			List<String> amReservOtIdList, List<String> pmReservOtIdList) {
		super();
		this.amOtId = amOtId;
		this.amStatus = amStatus;
		this.pmOtId = pmOtId;
		this.pmStatus = pmStatus;
		this.date = date;
		this.amReservOtIdList = amReservOtIdList;
		this.pmReservOtIdList = pmReservOtIdList;
	}




	public String getAmOtId() {
		return amOtId;
	}


	public String getPmOtId() {
		return pmOtId;
	}


	public void setAmOtId(String amOtId) {
		this.amOtId = amOtId;
	}


	public void setPmOtId(String pmOtId) {
		this.pmOtId = pmOtId;
	}


	public String getAmStatus() {
		return amStatus;
	}


	public void setAmStatus(String amStatus) {
		this.amStatus = amStatus;
	}


	public String getPmStatus() {
		return pmStatus;
	}


	public void setPmStatus(String pmStatus) {
		this.pmStatus = pmStatus;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public List<String> getAmReservOtIdList() {
		return amReservOtIdList;
	}


	public void setAmReservOtIdList(List<String> amReservOtIdList) {
		this.amReservOtIdList = amReservOtIdList;
	}


	public List<String> getPmReservOtIdList() {
		return pmReservOtIdList;
	}


	public void setPmReservOtIdList(List<String> pmReservOtIdList) {
		this.pmReservOtIdList = pmReservOtIdList;
	}


	

	public void addAmReservList(String otId) {
		amReservOtIdList.add(otId);
	}


	public void addPmReservList(String otId) {
		pmReservOtIdList.add(otId);
		
	}
	

}