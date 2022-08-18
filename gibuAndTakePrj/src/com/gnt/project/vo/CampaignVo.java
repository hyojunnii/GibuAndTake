package com.gnt.project.vo;

public class CampaignVo {
	public CampaignVo() {
	}
	
	public CampaignVo(int camNo, int regNo, String category, String gPeople, String pPeople) {
		this.camNo = camNo;
		this.regNo = regNo;
		this.category = category;
		this.gPeople = gPeople;
		this.pPeople = pPeople;
	}

	private int camNo;
	private int regNo;
	private String category;
	private String gPeople;
	private String pPeople;
	
	public int getCamNo() {
		return camNo;
	}

	public void setCamNo(int camNo) {
		this.camNo = camNo;
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

	public String getgPeople() {
		return gPeople;
	}

	public void setgPeople(String gPeople) {
		this.gPeople = gPeople;
	}

	public String getpPeople() {
		return pPeople;
	}

	public void setpPeople(String pPeople) {
		this.pPeople = pPeople;
	}

	@Override
	public String toString() {
		return "CampaignVo [camNo=" + camNo + ", regNo=" + regNo + ", category=" + category + ", gPeople=" + gPeople
				+ ", pPeople=" + pPeople + "]";
	}

}
