package com.gnt.member.vo;

import java.security.Timestamp;

public class MemberVo {
	
	
	
	  public MemberVo() {
		  
	  }
	 
	  
	  public MemberVo(int no, String mclass, String num, String name, String id, String pwd, String pwd2, String nick,
			String email, String addr, String phone, Timestamp enrolDate, String delete, String ban,
			Timestamp modifyDate, String content, String cat) {
		this.no = no;
		this.mclass = mclass;
		this.num = num;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.pwd2 = pwd2;
		this.nick = nick;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.enrolDate = enrolDate;
		this.delete = delete;
		this.ban = ban;
		this.modifyDate = modifyDate;
		this.content = content;
		this.cat = cat;
	}
	  
	  private int no;
	  private String mclass;
	  private String num;            
	  private String name;        
	  private String id;
	  private String pwd; 
	  private String pwd2; 
	  private String nick;          
	  private String email;        
	  private String addr;         
	  private String phone; 
	  private Timestamp enrolDate;    
	  private String delete;
	  private String ban;
	  private Timestamp modifyDate;    
	  private String content;
	  private String cat;
	  
	  
	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getMclass() {
		return mclass;
	}


	public void setMclass(String mclass) {
		this.mclass = mclass;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getPwd2() {
		return pwd2;
	}


	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}


	public String getNick() {
		return nick;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Timestamp getEnrolDate() {
		return enrolDate;
	}


	public void setEnrolDate(Timestamp enrolDate) {
		this.enrolDate = enrolDate;
	}


	public String getDelete() {
		return delete;
	}


	public void setDelete(String delete) {
		this.delete = delete;
	}


	public String getBan() {
		return ban;
	}


	public void setBan(String ban) {
		this.ban = ban;
	}


	public Timestamp getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Timestamp modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getCat() {
		return cat;
	}


	public void setCat(String cat) {
		this.cat = cat;
	}


	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", mclass=" + mclass + ", num=" + num + ", name=" + name + ", id=" + id + ", pwd="
				+ pwd + ", pwd2=" + pwd2 + ", nick=" + nick + ", email=" + email + ", addr=" + addr + ", phone=" + phone
				+ ", enrolDate=" + enrolDate + ", delete=" + delete + ", ban=" + ban + ", modifyDate=" + modifyDate
				+ ", content=" + content + ", cat=" + cat + "]";
	}
	
	
}


