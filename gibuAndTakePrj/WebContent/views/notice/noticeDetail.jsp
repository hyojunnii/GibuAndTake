<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	#title {
        width: 200px;
        margin-left: 320px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }

    #outer{
        border: 1px solid lightgray;
        height: 500px;
        margin: 0px 380px;
    }
    
    #a{
        border: 1px solid lightgray;
        width: 100%;
        height: 60px;
		font-weight: bold;
		text-indent: 40px;
    }
    
    #a1{
    	margin: 15px;
    	text-indent: 40px;
    }

    #date1{
    	text-indent: 40px;
        float: right;
    }

    #b{
        border: 1px solid lightgray;
        width: 100%;
        height: 312px;
        text-indent: 40px;
    }

    #b1{
    	margin: 15px;
    	text-indent: 40px;
    }

    #c{
        border: 1px solid lightgray;
        width: 100%;
        height: 60px;
        text-indent: 40px;
    }

    #c1{
    	margin: 15px;
    	text-indent: 40px;
    }


    #d{
        border: 1px solid lightgray;
        width: 100%;
        height: 60px;
        text-indent: 40px;
    }

    #d1{
    	margin: 15px;
    	text-indent: 40px;
    }


    #tag{
        text-align: center;
        padding: 50px;
        margin-bottom: 30px;
    }

    #date{
        width: 200px;
        text-align: right;
        font-weight: 100;
    }
    
    #list{
        border: 1px solid black;
        font-weight: bold;
        padding: 10px;
        margin: 0px 50px 0px 0px;
        border-radius: 50px;
    }

    #modify{
        border: 1px solid black;
        font-weight: bold;
        padding: 10px;
        border-radius: 50px;
    }

    #list:hover{
        cursor: pointer;
    }  
    
    #modify:hover{
        cursor: pointer;
    } 
  

</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="title">공지사항</div>
    
    <div id="outer">
    	<div id="a">
            <div id="a1">제목 <div id="date1">등록일 2022-02-02</div></div>
        </div>
        <div id="b">
            <div id="b1">작성할내용</div>
        </div>      
        <div id="c">
            <div id="c1">이전내용 <div id="date1">등록일 2022-02-03</div></div>
        </div>
        <div id="d">
            <div id="d1">다음내용 <div id="date1">등록일 2022-02-01</div></div>
        </div>
        
    </div>
    
    
    <div id="tag">
        <a id="list" onclick="location.href='/gibuAndTakePrj/notice/list'">&nbsp공지사항 목록&nbsp</a>
        <a id="modify" onclick="location.href='/gibuAndTakePrj/notice/modify'">&nbsp수정/삭제&nbsp</a>
    </div>
        
    
    <%@include file="/views/common/footer.jsp" %>
        
</body>
</html>