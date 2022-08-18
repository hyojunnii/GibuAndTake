package com.gnt.project.vo;

import java.util.Arrays;

public class FundingRewardVo {
	public FundingRewardVo() {
	}
	
	public FundingRewardVo(int rewNo, int fNo, String[] name, String[] money, String[] count) {
		this.rewNo = rewNo;
		this.fNo = fNo;
		this.name = name;
		this.money = money;
		this.count = count;
	}

	private int rewNo;
	private int fNo;
	private String[] name;
	private String[] money;
	private String[] count;
	
	public int getRewNo() {
		return rewNo;
	}

	public void setRewNo(int rewNo) {
		this.rewNo = rewNo;
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public String[] getName() {
		return name;
	}

	public void setName(String[] name) {
		this.name = name;
	}

	public String[] getMoney() {
		return money;
	}

	public void setMoney(String[] money) {
		this.money = money;
	}

	public String[] getCount() {
		return count;
	}

	public void setCount(String[] count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "FundingRewardVo [rewNo=" + rewNo + ", fNo=" + fNo + ", name=" + Arrays.toString(name) + ", money="
				+ Arrays.toString(money) + ", count=" + Arrays.toString(count) + "]";
	}
	
}
