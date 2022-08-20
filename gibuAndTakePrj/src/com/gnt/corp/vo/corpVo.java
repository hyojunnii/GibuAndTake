package com.gnt.corp.vo;

public class corpVo {
	
	
	

	public corpVo() {
	}
	
	
	public corpVo(int cno, String cname, String content, String classs) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.content = content;
		this.classs = classs;
	}


	private int cno;
	private String cname;
	private String content;
	private String classs;
	
	public int getCno() {
		return cno;
	}


	public void setCno(int cno) {
		this.cno = cno;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getClasss() {
		return classs;
	}


	public void setClasss(String classs) {
		this.classs = classs;
	}


	@Override
	public String toString() {
		return "corpVo [cno=" + cno + ", cname=" + cname + ", content=" + content + ", classs=" + classs + "]";
	}
	
	
}
