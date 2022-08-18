package com.gnt.project.vo;

public class RegistVo {
	public RegistVo() {
	}
	
	public RegistVo(int regNo, String uNo, String category, String title, String content, String sDate, String fDate,
			String pass, String fin, String del, String mod, String cnt) {
		this.regNo = regNo;
		this.uNo = uNo;
		this.category = category;
		this.title = title;
		this.content = content;
		this.sDate = sDate;
		this.fDate = fDate;
		this.pass = pass;
		this.fin = fin;
		this.del = del;
		this.mod = mod;
		this.cnt = cnt;
	}

	private int regNo;
	private String uNo;
	private String category;
	private String title;
	private String content;
	private String sDate;
	private String fDate;
	private String pass;
	private String fin;
	private String del;
	private String mod;
	private String cnt;
	
	public int getRegNo() {
		return regNo;
	}

	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}

	public String getuNo() {
		return uNo;
	}

	public void setuNo(String uNo) {
		this.uNo = uNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}

	public String getfDate() {
		return fDate;
	}

	public void setfDate(String fDate) {
		this.fDate = fDate;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFin() {
		return fin;
	}

	public void setFin(String fin) {
		this.fin = fin;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getMod() {
		return mod;
	}

	public void setMod(String mod) {
		this.mod = mod;
	}

	public String getCnt() {
		return cnt;
	}

	public void setCnt(String cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "RegistVo [regNo=" + regNo + ", uNo=" + uNo + ", category=" + category + ", title=" + title
				+ ", content=" + content + ", sDate=" + sDate + ", fDate=" + fDate + ", pass=" + pass + ", fin=" + fin
				+ ", del=" + del + ", mod=" + mod + ", cnt=" + cnt + "]";
	}
	
	
}
