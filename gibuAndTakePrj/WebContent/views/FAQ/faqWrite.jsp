<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#head {
        width: 820px;
        margin-left: 320px;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
    
    #nav{
    	border:1px solid lightgray;
        width: 1920px;
        margin-left: -10px;
		margin-top: 10px;
    }
    
    #category{
            margin: 0px 70px 0px 415px;
            font-weight: bold;         
    }
    
    #title{
            margin: 0px 70px 0px 430px;
            font-weight: bold;         
    }

    #content{
            margin: 0px 70px 0px 430px;
            font-weight: bold;
    }
    
    #input1{
            width: 760px;
            height: 40px;
            color: black;
            margin: 30px 0px 0px 0px;
    }
    
    #input2{
            width: 760px;
            height: 40px;
            color: black;
            margin: 5px 0px 0px 15px;
    }

    #input3{
            width: 760px;
            height: 500px;
            color: black;                      
            margin: 5px 0px 0px 15px;
            vertical-align: middle;
    }

    #btn{
        background-color: white;
        margin: 0px 870px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 50px;
    }

    #btn:hover{
        cursor: pointer;
    }
    
    #a{
    	width:490px;
    	height:600px;
    	border-right:1px solid black;
    	padding-right: 50px;
    	text-align:center;
    }
    
    #last {    
        padding: 40px;
    }
    
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="head">FAQ 작성</div>
	<div id="nav"></div>			
    	
	 <form action="">
	 	<label id="category">카테고리</label>
	    <input id="input1" type="text" name="id">
	    <br><br>
    	<label id="title">제목</label>
	    <input id="input2" type="text" name="id">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea id="input3" name="content"></textarea>
	    <div >
            <input id="btn" type="submit" value="작성하기">
        </div>
	    
    </form>
	<div id="last"></div>
	
	<%@include file="/views/common/footer.jsp" %>
</body>
</html>