package com.project.hospital.admindrMain.dto;

public class MonthCntDTO {
	
	private String year;
	private int month1;
	private int month2;
	private int month3;
	private int month4;
	private int month5;
	private int month6;
	private int month7;
	private int month8;
	private int month9;
	private int month10;
	private int month11;
	private int month12;
	
	public MonthCntDTO() {
		super();
	}

	public MonthCntDTO(String year, int month1, int month2, int month3, int month4, int month5, int month6, int month7,
			int month8, int month9, int month10, int month11, int month12) {
		super();
		this.year = year;
		this.month1 = month1;
		this.month2 = month2;
		this.month3 = month3;
		this.month4 = month4;
		this.month5 = month5;
		this.month6 = month6;
		this.month7 = month7;
		this.month8 = month8;
		this.month9 = month9;
		this.month10 = month10;
		this.month11 = month11;
		this.month12 = month12;
	}

	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getMonth1() {
		return month1;
	}

	public void setMonth1(int month1) {
		this.month1 = month1;
	}

	public int getMonth2() {
		return month2;
	}

	public void setMonth2(int month2) {
		this.month2 = month2;
	}

	public int getMonth3() {
		return month3;
	}

	public void setMonth3(int month3) {
		this.month3 = month3;
	}

	public int getMonth4() {
		return month4;
	}

	public void setMonth4(int month4) {
		this.month4 = month4;
	}

	public int getMonth5() {
		return month5;
	}

	public void setMonth5(int month5) {
		this.month5 = month5;
	}

	public int getMonth6() {
		return month6;
	}

	public void setMonth6(int month6) {
		this.month6 = month6;
	}

	public int getMonth7() {
		return month7;
	}

	public void setMonth7(int month7) {
		this.month7 = month7;
	}

	public int getMonth8() {
		return month8;
	}

	public void setMonth8(int month8) {
		this.month8 = month8;
	}

	public int getMonth9() {
		return month9;
	}

	public void setMonth9(int month9) {
		this.month9 = month9;
	}

	public int getMonth10() {
		return month10;
	}

	public void setMonth10(int month10) {
		this.month10 = month10;
	}

	public int getMonth11() {
		return month11;
	}

	public void setMonth11(int month11) {
		this.month11 = month11;
	}

	public int getMonth12() {
		return month12;
	}

	public void setMonth12(int month12) {
		this.month12 = month12;
	}

	@Override
	public String toString() {
		return "MonthCntDTO [year=" + year + ", month1=" + month1 + ", month2=" + month2 + ", month3=" + month3
				+ ", month4=" + month4 + ", month5=" + month5 + ", month6=" + month6 + ", month7=" + month7
				+ ", month8=" + month8 + ", month9=" + month9 + ", month10=" + month10 + ", month11=" + month11
				+ ", month12=" + month12 + "]";
	}

	
}
