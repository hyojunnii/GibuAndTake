package com.gnt.gibu.vo;

public class GibuVo {
	public GibuVo() {
		
	}
	
	private String no;			//기업번호(사용자번호)
	private String nick; 		//기업명(사용자이름)
	private String category;	//카테고리(10
	private String gibuCategory;//상세카테고리
	private String title;		//제목
	private String content; 	//내용
	private String enrollSDate;	//시작날짜
	private String enrollFDate;	//종료날짜
	private String modDate;		//마지막수정일자
	private int cnt;			//조회수
	private int gMoney;			//목표금액
	private int pMoney;			//참여금액
	private String sDate;		//사업기간 시작
	private String eDate;		//사업기간 종료
	private String person;		//사업대상
	
	
	
	
	public GibuVo(String no, String nick, String category, String gibuCategory, String title, String content,
			String enrollSDate, String enrollFDate, String modDate, int cnt, int gMoney, int pMoney, String sDate,
			String eDate, String person) {
		this.no = no;
		this.nick = nick;
		this.category = category;
		this.gibuCategory = gibuCategory;
		this.title = title;
		this.content = content;
		this.enrollSDate = enrollSDate;
		this.enrollFDate = enrollFDate;
		this.modDate = modDate;
		this.cnt = cnt;
		this.gMoney = gMoney;
		this.pMoney = pMoney;
		this.sDate = sDate;
		this.eDate = eDate;
		this.person = person;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getGibuCategory() {
		return gibuCategory;
	}
	public void setGibuCategory(String gibuCategory) {
		this.gibuCategory = gibuCategory;
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
	public String getEnrollSDate() {
		return enrollSDate;
	}
	public void setEnrollSDate(String enrollSDate) {
		this.enrollSDate = enrollSDate;
	}
	public String getEnrollFDate() {
		return enrollFDate;
	}
	public void setEnrollFDate(String enrollFDate) {
		this.enrollFDate = enrollFDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getgMoney() {
		return gMoney;
	}
	public void setgMoney(int gMoney) {
		this.gMoney = gMoney;
	}
	public int getpMoney() {
		return pMoney;
	}
	public void setpMoney(int pMoney) {
		this.pMoney = pMoney;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	@Override
	public String toString() {
		return "GibuVo [no=" + no + ", nick=" + nick + ", category=" + category + ", gibuCategory=" + gibuCategory
				+ ", title=" + title + ", content=" + content + ", enrollSDate=" + enrollSDate + ", enrollFDate="
				+ enrollFDate + ", modDate=" + modDate + ", cnt=" + cnt + ", gMoney=" + gMoney + ", pMoney=" + pMoney
				+ ", sDate=" + sDate + ", eDate=" + eDate + ", person=" + person + "]";
	}
	
	
	
		
		
}
