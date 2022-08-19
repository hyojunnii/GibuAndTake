package com.gnt.breakdown.vo;

public class BreakdownVo {
	//기부 내역 vo
	public BreakdownVo () {
		
	}
	
	public BreakdownVo(String memberId, String regName, String payNo, String payName, int payMoney, String payDate) {
		super();
		this.memberId = memberId;
		this.regName = regName;
		this.payNo = payNo;
		this.payName = payName;
		this.payMoney = payMoney;
		this.payDate = payDate;
	}

	private String memberId; //유저 아이디
	private String regName; //기부 프로그램 이름
	private String payNo; //결제 번호
	private String payName; //결제 수단
	private int payMoney; //기부(결제) 금액
	private String payDate; //기부(결제) 일자
	
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getRegName() {
		return regName;
	}

	public void setRegName(String regName) {
		this.regName = regName;
	}

	public String getPayNo() {
		return payNo;
	}

	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public int getPayMoney() {
		return payMoney;
	}

	public void setPayMoney(int payMoney) {
		this.payMoney = payMoney;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	@Override
	public String toString() {
		return "BreakdownVo [memberId=" + memberId + ", regName=" + regName + ", payNo=" + payNo + ", payName="
				+ payName + ", payMoney=" + payMoney + ", payDate=" + payDate + "]";
	}
	
	
}
