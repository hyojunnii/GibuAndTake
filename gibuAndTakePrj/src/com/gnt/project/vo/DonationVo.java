package com.gnt.project.vo;

public class DonationVo {
	
	public DonationVo() {
	}
	
	public DonationVo(int dNo, int regNo, String category, String gMoney, String pMoney, String exeSDate,
			String exeEDate, String person) {
		this.dNo = dNo;
		this.regNo = regNo;
		this.category = category;
		this.gMoney = gMoney;
		this.pMoney = pMoney;
		this.exeSDate = exeSDate;
		this.exeEDate = exeEDate;
		this.person = person;
	}

	private int dNo;
	private int regNo;
	private String category;
	private String gMoney;
	private String pMoney;
	private String exeSDate;
	private String exeEDate;
	private String person;
	
	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public int getRegNo() {
		return regNo;
	}

	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getgMoney() {
		return gMoney;
	}

	public void setgMoney(String gMoney) {
		this.gMoney = gMoney;
	}

	public String getpMoney() {
		return pMoney;
	}

	public void setpMoney(String pMoney) {
		this.pMoney = pMoney;
	}

	public String getExeSDate() {
		return exeSDate;
	}

	public void setExeSDate(String exeSDate) {
		this.exeSDate = exeSDate;
	}

	public String getExeEDate() {
		return exeEDate;
	}

	public void setExeEDate(String exeEDate) {
		this.exeEDate = exeEDate;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	@Override
	public String toString() {
		return "DonationVo [dNo=" + dNo + ", regNo=" + regNo + ", category=" + category + ", gMoney=" + gMoney
				+ ", pMoney=" + pMoney + ", exeSDate=" + exeSDate + ", exeEDate=" + exeEDate + ", person=" + person
				+ "]";
	}
	
}
