package com.gnt.review.vo;

public class ReviewImgVo {
	public ReviewImgVo() {
		
	}
	
	String url;
	String responseCode;
	
	public ReviewImgVo(String url, String responseCode) {
		super();
		this.url = url;
		this.responseCode = responseCode;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}

	@Override
	public String toString() {
		return "ReviewImgVo [url=" + url + ", responseCode=" + responseCode + "]";
	}
	
	
	
}
