package com.gnt.review.vo;

public class ReviewVo {
	public ReviewVo() {
		
	}
	
	private String revNo;
	private String mNo;
	private String revName;
	private String revContent;
	private String revDate;
	private String revClass;
	private String revMod;
	private String revCnt;
	
	public ReviewVo(String revNo, String mNo, String revName, String revContent, String revDate, String revClass,
			String revMod, String revCnt) {
		super();
		this.revNo = revNo;
		this.mNo = mNo;
		this.revName = revName;
		this.revContent = revContent;
		this.revDate = revDate;
		this.revClass = revClass;
		this.revMod = revMod;
		this.revCnt = revCnt;
	}

	public String getRevNo() {
		return revNo;
	}

	public void setRevNo(String revNo) {
		this.revNo = revNo;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	public String getRevName() {
		return revName;
	}

	public void setRevName(String revName) {
		this.revName = revName;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevDate() {
		return revDate;
	}

	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}

	public String getRevClass() {
		return revClass;
	}

	public void setRevClass(String revClass) {
		this.revClass = revClass;
	}

	public String getRevMod() {
		return revMod;
	}

	public void setRevMod(String revMod) {
		this.revMod = revMod;
	}

	public String getRevCnt() {
		return revCnt;
	}

	public void setRevCnt(String revCnt) {
		this.revCnt = revCnt;
	}

	@Override
	public String toString() {
		return "ReviewVo [revNo=" + revNo + ", mNo=" + mNo + ", revName=" + revName + ", revContent=" + revContent
				+ ", revDate=" + revDate + ", revClass=" + revClass + ", revMod=" + revMod + ", revCnt=" + revCnt + "]";
	}
	
	
	
}
