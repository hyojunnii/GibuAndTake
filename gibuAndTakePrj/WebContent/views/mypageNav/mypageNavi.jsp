<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	  @import url("https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=IBM+Plex+Sans+KR&display=swap");

	body{
   		width:1200px;
   		margin:0 auto;
   }
   	
   	html {
  	 font-family: "IBM Plex Sans KR", "IBM Plex Sans", sans-serif;
  	font-size: 15px;
  	
	}
   	
   	.sidebar {
 	 position: fixed;
 	 width: 15%;
 	 height: 100vh;
  	 background: white;
  	 font-size: 0.65em;
}
   
   
    #heightLine {
   		width:2px;
   		height:1000px;
   		background:black;
   		margin-top: 100px;
   		margin-left: 400px;
   }
   
   
  
</style>
 
</head>
<body>
		<%@include file="/views/common/header.jsp" %>
		
		
		
		<div id="heightLine"></div>
		<main class="main">
  		<aside class="sidebar">
    	<nav class="nav">
      	<ul>
       		<li class="active"><a href="#">MY 홈</a></li>
        	<li><a href="#">회원정보</a></li>
       	 	<li><a href="#">활동내역</a></li>
        	<li><a href="#">기부</a></li>
        	<li><a href="#">펀딩</a></li>
        	<li><a href="#">캠페인</a></li>
      </ul>
    </nav>
  </aside>
		
		
		    <div style="padding-top: 500px" style = "margin:0 auto">
               <%@ include file="/views/common/footer.jsp" %>
          		</div>
</body>
</html>