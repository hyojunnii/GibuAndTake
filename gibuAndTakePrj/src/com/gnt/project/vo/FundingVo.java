package com.gnt.project.vo;

public class FundingVo {
	public FundingVo() {
	}
	
	public FundingVo(int fNo, int regNo, String category, String gMoney, String pMoney) {
		this.fNo = fNo;
		this.regNo = regNo;
		this.category = category;
		this.gMoney = gMoney;
		this.pMoney = pMoney;
	}

	private int fNo;
	private int regNo;
	private String category;
	private String gMoney;
	private String pMoney;
	
	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
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

	@Override
	public String toString() {
		return "FundingVo [fNo=" + fNo + ", regNo=" + regNo + ", category=" + category + ", gMoney=" + gMoney
				+ ", pMoney=" + pMoney + "]";
	}

}
