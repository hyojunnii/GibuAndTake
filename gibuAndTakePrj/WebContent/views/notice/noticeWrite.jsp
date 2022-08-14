<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #header {
        background-color: #8bdcb1;
        width: 1905px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
        padding: 30px 0px 30px 380px;
    }
    
    #gap{
    	padding-bottom: 50px;
    }
    
    
    #title{
    		color: #15462b;
            margin: 0px 70px 0px 430px;
            font-weight: bold;
            text-align: center;
    }

    #content{
    		color: #15462b;
            margin: 0px 70px 0px 430px;
            font-weight: bold;
    }
    
    #input1{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 760px;
            height: 40px;
            color: black;
            margin: 2px;
    }

    #input2{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 760px;
            height: 500px;
            color: black;                      
            margin: 2px;
            vertical-align: middle;
    }

    #btn{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin: 0px 850px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 15px;
        padding: 5px 20px 5px 20px;
    }

    #btn:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    #last {    
        padding: 40px;
    }
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
    <div id="header">공지사항 작성</div>
    <div id="gap"></div>
    
    <form action="/gibuAndTakePrj/notice/list" method="get">
    	<label id="title">제목</label>
	    <input id="input1" type="text">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea id="input2"></textarea>
	    <div >
            <input id="btn" type="submit" value="공지사항 등록">
        </div>
	    
    </form>
    	
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>