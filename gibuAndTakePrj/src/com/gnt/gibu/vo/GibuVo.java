package com.gnt.gibu.vo;

public class GibuVo {
	public GibuVo() {
		
	}

	





	public GibuVo(String dno, String regno, String dclass, int dgmoney, int dpmoney, String dsdate, String dedate,
			String dperson, String mno, String regclass, String regname, String regcontent, String regsdate,
			String regfdate, String regpass, String regfin, String regdel, String regmod, int regcnt, String imgsrc,
			double moneypercent) {
		super();
		this.dno = dno;
		this.regno = regno;
		this.dclass = dclass;
		this.dgmoney = dgmoney;
		this.dpmoney = dpmoney;
		this.dsdate = dsdate;
		this.dedate = dedate;
		this.dperson = dperson;
		this.mno = mno;
		this.regclass = regclass;
		this.regname = regname;
		this.regcontent = regcontent;
		this.regsdate = regsdate;
		this.regfdate = regfdate;
		this.regpass = regpass;
		this.regfin = regfin;
		this.regdel = regdel;
		this.regmod = regmod;
		this.regcnt = regcnt;
		this.imgsrc = imgsrc;
		this.moneypercent = moneypercent;
	}







	private String dno;
	private String regno;
	private String dclass;
	private int dgmoney;
	private int dpmoney;
	private String dsdate;
	private String dedate;
	private String dperson;
	private String mno;
	private String regclass;
	private String regname;
	private String regcontent;
	private String regsdate;
	private String regfdate;
	private String regpass;
	private String regfin;
	private String regdel;
	private String regmod;
	private int regcnt;
	
	private String imgsrc;	//이미지경로
	private double moneypercent;
	public String getDno() {
		return dno;
	}
	public void setDno(String dno) {
		this.dno = dno;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getDclass() {
		return dclass;
	}
	public void setDclass(String dclass) {
		this.dclass = dclass;
	}
	public int getDgmoney() {
		return dgmoney;
	}
	public void setDgmoney(int dgmoney) {
		this.dgmoney = dgmoney;
	}
	public int getDpmoney() {
		return dpmoney;
	}
	public void setDpmoney(int dpmoney) {
		this.dpmoney = dpmoney;
	}
	public String getDsdate() {
		return dsdate;
	}
	public void setDsdate(String dsdate) {
		this.dsdate = dsdate;
	}
	public String getDedate() {
		return dedate;
	}
	public void setDedate(String dedate) {
		this.dedate = dedate;
	}
	public String getDperson() {
		return dperson;
	}
	public void setDperson(String dperson) {
		this.dperson = dperson;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getRegclass() {
		return regclass;
	}
	public void setRegclass(String regclass) {
		this.regclass = regclass;
	}
	public String getRegname() {
		return regname;
	}
	public void setRegname(String regname) {
		this.regname = regname;
	}
	public String getRegcontent() {
		return regcontent;
	}
	public void setRegcontent(String regcontent) {
		this.regcontent = regcontent;
	}
	public String getRegsdate() {
		return regsdate;
	}
	public void setRegsdate(String regsdate) {
		this.regsdate = regsdate;
	}
	public String getRegfdate() {
		return regfdate;
	}
	public void setRegfdate(String regfdate) {
		this.regfdate = regfdate;
	}
	public String getRegpass() {
		return regpass;
	}
	public void setRegpass(String regpass) {
		this.regpass = regpass;
	}
	public String getRegfin() {
		return regfin;
	}
	public void setRegfin(String regfin) {
		this.regfin = regfin;
	}
	public String getRegdel() {
		return regdel;
	}
	public void setRegdel(String regdel) {
		this.regdel = regdel;
	}
	public String getRegmod() {
		return regmod;
	}
	public void setRegmod(String regmod) {
		this.regmod = regmod;
	}
	public int getRegcnt() {
		return regcnt;
	}
	public void setRegcnt(int regcnt) {
		this.regcnt = regcnt;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public double getMoneypercent() {
		return moneypercent;
	}
	public void setMoneypercent(double moneypercent) {
		this.moneypercent = moneypercent;
	}
	@Override
	public String toString() {
		return "GibuVo [dno=" + dno + ", regno=" + regno + ", dclass=" + dclass + ", dgmoney=" + dgmoney + ", dpmoney="
				+ dpmoney + ", dsdate=" + dsdate + ", dedate=" + dedate + ", dperson=" + dperson + ", mno=" + mno
				+ ", regclass=" + regclass + ", regname=" + regname + ", regcontent=" + regcontent + ", regsdate="
				+ regsdate + ", regfdate=" + regfdate + ", regpass=" + regpass + ", regfin=" + regfin + ", regdel="
				+ regdel + ", regmod=" + regmod + ", regcnt=" + regcnt + ", imgsrc=" + imgsrc + ", moneypercent="
				+ moneypercent + "]";
	}

	
	
	
	
	
		
		
}
