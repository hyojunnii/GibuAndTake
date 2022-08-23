package com.gnt.stmt.vo;

public class StmtVo {

	public StmtVo() {
		
	}

	public StmtVo(int memberNo, String regNo, String donaNo, String regName, String donaClass, String donaGmomey,
			String donaPmoney, String donaSdate, String donaEdate, String donaPerson, String exeNo, String exeCtg,
			String exeCnt, String exeMoney) {
		super();
		this.memberNo = memberNo;
		this.regNo = regNo;
		this.donaNo = donaNo;
		this.regName = regName;
		this.donaClass = donaClass;
		this.donaGmomey = donaGmomey;
		this.donaPmoney = donaPmoney;
		this.donaSdate = donaSdate;
		this.donaEdate = donaEdate;
		this.donaPerson = donaPerson;
		this.exeNo = exeNo;
		this.exeCtg = exeCtg;
		this.exeCnt = exeCnt;
		this.exeMoney = exeMoney;
	}

	private int memberNo;
	private String regNo;
	private String donaNo;
	private String regName;
	private String donaClass;
	private String donaGmomey;
	private String donaPmoney;
	private String donaSdate;
	private String donaEdate;
	private String donaPerson; 
	
	private String exeNo;
	private String exeCtg;
	private String exeCnt;
	private String exeMoney;
	
	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int no) {
		this.memberNo = no;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public String getDonaNo() {
		return donaNo;
	}

	public void setDonaNo(String donaNo) {
		this.donaNo = donaNo;
	}

	public String getRegName() {
		return regName;
	}

	public void setRegName(String regName) {
		this.regName = regName;
	}

	public String getDonaClass() {
		return donaClass;
	}

	public void setDonaClass(String donaClass) {
		this.donaClass = donaClass;
	}

	public String getDonaGmomey() {
		return donaGmomey;
	}

	public void setDonaGmomey(String donaGmomey) {
		this.donaGmomey = donaGmomey;
	}

	public String getDonaPmoney() {
		return donaPmoney;
	}

	public void setDonaPmoney(String donaPmoney) {
		this.donaPmoney = donaPmoney;
	}

	public String getDonaSdate() {
		return donaSdate;
	}

	public void setDonaSdate(String donaSdate) {
		this.donaSdate = donaSdate;
	}

	public String getDonaEdate() {
		return donaEdate;
	}

	public void setDonaEdate(String donaEdate) {
		this.donaEdate = donaEdate;
	}

	public String getDonaPerson() {
		return donaPerson;
	}

	public void setDonaPerson(String donaPerson) {
		this.donaPerson = donaPerson;
	}

	public String getExeNo() {
		return exeNo;
	}

	public void setExeNo(String exeNo) {
		this.exeNo = exeNo;
	}

	public String getExeCtg() {
		return exeCtg;
	}

	public void setExeCtg(String exeCtg) {
		this.exeCtg = exeCtg;
	}

	public String getExeCnt() {
		return exeCnt;
	}

	public void setExeCnt(String exeCnt) {
		this.exeCnt = exeCnt;
	}

	public String getExeMoney() {
		return exeMoney;
	}

	public void setExeMoney(String exeMoney) {
		this.exeMoney = exeMoney;
	}

	@Override
	public String toString() {
		return "StmtVo [memberNo=" + memberNo + ", regNo=" + regNo + ", donaNo=" + donaNo + ", regName=" + regName
				+ ", donaClass=" + donaClass + ", donaGmomey=" + donaGmomey + ", donaPmoney=" + donaPmoney
				+ ", donaSdate=" + donaSdate + ", donaEdate=" + donaEdate + ", donaPerson=" + donaPerson + ", exeNo="
				+ exeNo + ", exeCtg=" + exeCtg + ", exeCnt=" + exeCnt + ", exeMoney=" + exeMoney + "]";
	}
	
}
