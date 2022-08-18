package com.gnt.project.vo;

import java.util.Arrays;

public class DonationExecuteVo {
	
	public DonationExecuteVo() {
	}
	
	public DonationExecuteVo(int eNo, int dNo, String[] category, String[] content, String[] money) {
		this.eNo = eNo;
		this.dNo = dNo;
		this.category = category;
		this.content = content;
		this.money = money;
	}

	private int eNo;
	private int dNo;
	private String[] category;
	private String[] content;
	private String[] money;
	
	public int geteNo() {
		return eNo;
	}

	public void seteNo(int eNo) {
		this.eNo = eNo;
	}

	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public String[] getCategory() {
		return category;
	}

	public void setCategory(String[] category) {
		this.category = category;
	}

	public String[] getContent() {
		return content;
	}

	public void setContent(String[] content) {
		this.content = content;
	}

	public String[] getMoney() {
		return money;
	}

	public void setMoney(String[] money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "DonationExecuteVo [eNo=" + eNo + ", dNo=" + dNo + ", category=" + Arrays.toString(category)
				+ ", content=" + Arrays.toString(content) + ", money=" + Arrays.toString(money) + "]";
	}
	
}
