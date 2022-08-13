<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<style>
    #title {
        width: 200px;
        margin-left: 120px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
    
    .input{
    	background-color: white;
    	color: green;
    	margin-left: 140px;
    	margin-top: 30px;
    	font-weight: bold;
    	border-radius: 15px;
    	border: 0px;
    }
    
    .input:hover{
    	cursor: pointer;
    }
    
    #campaign{
    	margin-left: 135px;
    }
    
    #last{
    	padding: 300px;
    }

</style>
</head>
<body>
	<%@include file="/views/common/header.jsp" %>
	<div id="title">문의하기</div>
    
	 <div style="border: 1px solid #72d09e; float: left; width: 20%; height:600px; padding:10px;">
		<form action="" method="get">
			<input class="input" type="submit" value="기부">
		</form>
		
		<form action="" method="get">
			<input class="input" type="submit" value="펀딩">
		</form>
		
		<form action="" method="get">
			<input id="campaign" class="input" type="submit" value="캠페인">
		</form>
	 </div>
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:600px; padding:50px 0px 0px 0px;"></div>
	 
	 <div id="last"></div>
	 <%@include file="/views/common/footer.jsp" %>
</body>
</html>