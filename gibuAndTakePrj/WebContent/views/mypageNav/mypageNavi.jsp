<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

   		nav{
   			width:300px;
   			background-color: white;
   			border-right:2px solid #acdac2;
   			height:550px;
   			margin-top: 20px;
   			margin-left:-85px;
   		}
   		
   		
   		
   		.menu li a {
   			height:10px !important;
   			line-height:30px !important;
   			display:block !important;
   			padding:0 20px !important;
   			font-size:15px !important;
   			color:#555 !important;
   			text-decoration: none !important;
   			margin-top: 30px !important;
   			margin-left:30px !important;
   			text-align: center !important;
   		}
   		
   		.menu li a:hover {
   			color: #acdac2;
   		}
   		
   		#middleLine  {
   			margin-top: 50px;
   			margin-left:50px;
   			margin-right:30px;
   			border-style:solid;
   			border-color:#acdac2;
   			border-width: 1px;
   			width:190px;
   			
   		}
   		
   		
   		.menu{
   			 list-style:none;
   		}

   		
   
  	
</style>
 
</head>
<body>
	
	
	
	<nav>
		<ul class="menu">
			<li><a href="#" id="home" style="font-weight:bold">MY 홈</a></li>
			<div id="middleLine"></div>
			<li><a href="#" id="memberInfor"  style="font-weight:bold">회원정보</a></li>
			<div id="middleLine"></div>
			<li><a href="#" id="Active"  style="font-weight:bold">활동내역</a></li>
			<li><a href="#" id="dona" style="font-size: 12px">기부</a></li>
			<li><a href="#" id="funding-menu" style="font-size: 12px">펀딩</a></li>
			<li><a href="#" id="camp" style="font-size: 12px" >캠페인</a></li>
			<div id="middleLine"></div>
			<li><a href="#" id="payment"  style="font-weight:bold">결제 내역</a></li>
			<li><a href="#" id="donament" style="font-weight:bold">기부 내역</a></li>
		</ul>
		
	</nav>	
		
		
  		
  		
		
		
</body>
</html>