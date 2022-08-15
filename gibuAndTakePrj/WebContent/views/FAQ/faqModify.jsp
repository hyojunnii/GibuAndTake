<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 수정/삭제</title>
<style>
	#head {
        background-color: #8bdcb1;
        width: 1905px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
       	padding: 30px 0px 30px 100px;
    }

    
    #category{
    		color: #15462b;
            margin: 0px 70px 0px 215px;
            font-weight: bold;         
    }
    
    #title{
    		color: #15462b;
            margin: 0px 70px 0px 230px;
            font-weight: bold;         
    }

    #content{
    		color: #15462b;
            margin: 0px 70px 0px 230px;
            font-weight: bold;
    }

    
    #input1{
			border: 2px solid #acdac2;
			border-radius: 10px;    
            width: 650px;
            height: 40px;
            color: black;
            margin: 5px 0px 0px 15px;
    }

    #input2{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 650px;
            height: 400px;
            color: black;                      
            margin: 5px 0px 0px 15px;
            vertical-align: middle;
    }

    #btn1{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin-top: 20px;
        padding: 10px;
        font-weight: bold;
        border-radius: 15px;
        margin-left: 580px;
    }

    #btn1:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    #btn2{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin-top: 20px;
        padding: 10px;
        font-weight: bold;
        border-radius: 15px;
        margin: 20px 0px 0px 40px;
    }

    #btn2:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    .btn3{
    	float: left;
    }
    
    #a{
    	border: 2px solid #acdac2;
		border-radius: 10px;
    	width: 650px;
    	height: 40px;
    }
    
    .click{
    	background-color: white;
    	color: green;
    	margin-left: 120px;
    	margin-top: 30px;
    	font-weight: bold;
    	border-radius: 15px;
    	border: 0px;
    }
    
    .click:hover{
    	cursor: pointer;
    }
    
    #campaign{
    	margin-left: 115px;
    }
    
    #last {    
        padding: 340px;
    }
    
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="head">FAQ 수정/삭제</div>
	
		<div style="border: 1px solid #72d09e; float: left; width: 20%; height:720px; padding:0px 0px 0px 20px;">
		<form action="" method="get">
			<input class="click" type="submit" value="기부">
		</form>
		
		<form action="" method="get">
			<input class="click" type="submit" value="펀딩">
		</form>
		
		<form action="" method="get">
			<input id="campaign" class="click" type="submit" value="캠페인">
		</form>
		<form action="" method="get">
			<input class="click" type="submit" value="기타">
		</form>
	 </div>
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:720px; padding:50px 0px 0px 0px;">			
    	
    	<form action="/gibuAndTakePrj/faq/list" method="get">
    	
	 	<label id="category">카테고리</label>                   
	    	<td>
                 <select name="category" id="a">
                     <option value="10"></option>
                     <option value="20">기부</option>
                     <option value="30">펀딩</option>
                     <option value="40">캠페인</option>
                     <option value="50">기타</option>
                 </select>
             </td>
	    <br><br>
	    
    	<label id="title">제목</label>
	    <input id="input1" type="text">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea id="input2"></textarea>
            <input id="btn1" class="btn3" type="submit" value="수정하기">
        	<input id="btn2" class="btn3" type="submit" value="삭제하기">
        </form>
    </div>
	<div id="last"></div>
	
	<%@include file="/views/common/footer.jsp" %>
</body>
</html>