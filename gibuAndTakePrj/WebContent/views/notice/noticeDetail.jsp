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
        background-color: #8bdcb1;
        width: 1905px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
        padding: 30px 0px 30px 430px;
    }
    
    #gap{
    	padding-bottom: 50px;
    }

    #outer{
        border: 1px solid #2e6c4a;
        width: 1050px;
        height: 600px;
        margin: 0px 430px;
        border-radius: 10px;
        border-collapse: collapse;
    }
    
    #a{
        border: 1px solid #2e6c4a;
        color: #2e6c4a;
        width: 100%;
        height: 60px;
		font-weight: bold;
		text-indent: 15px;
		
    }

    #b{
        border: 1px solid #2e6c4a;
        color: #2e6c4a;
        width: 100%;
        height: 600px;
    }

    #c{
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        width: 100%;
        height: 60px;
        text-indent: 40px;
    }


    #d{
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        width: 100%;
        height: 60px;
        text-indent: 40px;
    }
    
    .date{
        text-align: right;
        font-weight: 100;
        padding: 0px 70px 0px 0px;
    }


    #tag{
        padding: 50px;
        margin-bottom: 30px;
        margin-left: 750px;
    }
    
    #list{
       	background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        font-weight: bold;
        padding: 10px;
        margin: 0px 60px 0px 0px;
        border-radius: 15px;
    }

    #modify{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-radius: 15px;
    }

    #list:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }  
    
    #modify:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    } 
  

</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="title">공지사항</div>
    <div id="gap"></div>
    <table id="outer">
    	<tr id="a" class="border">
			<td>제목</td>
			<td class="date">등록일 2022-02-02</td>
    	</tr>
    	<tr id="b" class="border">
			<td>작성할내용</td>
			<td></td>
    	</tr>
    	<tr id="c" class="border">
			<td>이전내용</td>
			<td class="date">등록일 2022-02-03</td>
    	</tr>
    	<tr id="d" class="border">
			<td>다음내용</td>
			<td class="date">등록일 2022-02-01</td>
    	</tr>
    </table>
    
    
    <div id="tag">
        <a id="list" onclick="location.href='/gibuAndTakePrj/notice/list'">공지사항 목록</a>
        <%-- <% if(loginMember != null && "admin".equals(loginMember.getId())) {%> --%>
        <a id="modify" onclick="location.href='/gibuAndTakePrj/notice/modify'">수정/삭제</a>
    	<%-- <%} %> --%>
    </div>
        
    
    <%@include file="/views/common/footer.jsp" %>
        
</body>
</html>