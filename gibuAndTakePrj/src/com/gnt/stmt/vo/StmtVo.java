package com.gnt.stmt.vo;

public class StmtVo {

	public StmtVo() {
		
	}
	
	public StmtVo(String memberId, String executeNo, String donationNo, String executeCtg, String executeCnt,
			String executeMoney) {
		super();
		this.memberId = memberId;
		this.executeNo = executeNo;
		this.donationNo = donationNo;
		this.executeCtg = executeCtg;
		this.executeCnt = executeCnt;
		this.executeMoney = executeMoney;
	}

	private String memberId;
	private String don
	
	private String executeNo;
	private String donationNo;
	private String executeCtg;
	private String executeCnt;
	private String executeMoney;
	
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getExecuteNo() {
		return executeNo;
	}

	public void setExecuteNo(String executeNo) {
		this.executeNo = executeNo;
	}

	public String getDonationNo() {
		return donationNo;
	}

	public void setDonationNo(String donationNo) {
		this.donationNo = donationNo;
	}

	public String getExecuteCtg() {
		return executeCtg;
	}

	public void setExecuteCtg(String executeCtg) {
		this.executeCtg = executeCtg;
	}

	public String getExecuteCnt() {
		return executeCnt;
	}

	public void setExecuteCnt(String executeCnt) {
		this.executeCnt = executeCnt;
	}

	public String getExecuteMoney() {
		return executeMoney;
	}

	public void setExecuteMoney(String executeMoney) {
		this.executeMoney = executeMoney;
	}

	@Override
	public String toString() {
		return "StmtVo [memberId=" + memberId + ", executeNo=" + executeNo + ", donationNo=" + donationNo
				+ ", executeCtg=" + executeCtg + ", executeCnt=" + executeCnt + ", executeMoney=" + executeMoney + "]";
	}
	
}
