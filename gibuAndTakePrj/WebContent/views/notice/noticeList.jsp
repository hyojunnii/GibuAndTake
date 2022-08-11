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
    
    #last {    
        padding: 150px;
    }

    #outer{
        border: 1px solid black;
        color: black;
        width: 60%;
        margin: 0 auto;
        padding-bottom: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        text-align: center;
        flex-direction: column;
    }

    #table-main{
        border: 1px solid white;
        width: 95%;
        margin-top: 10px;
        line-height: 2.5em;
    }

    #table-main>tbody tr:hover{
        cursor: pointer;
    }
    
    #head{
    	font-weight: bold;
    }
    
     #write{
    	border: 1px solid black;
    	margin: 0px 380px;
    	margin-top: 10px;
    	background-color: white;
        font-weight: bold;
    }
    
    #write:hover{
        cursor: pointer;
    }
    
    #btn{
    	margin-top: 100px;
    	text-align: center;
    }
    
    #a:hover{
    	cursor: pointer;
    }
    
    #b:hover{
    	cursor: pointer;
    }
    
    #c:hover{
    	cursor: pointer;
    }
    
    #a{
    	width: 40px;
    	height: 40px;
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }
    
    #b{
    	width: 40px;
    	height: 40px;
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }
    
    #c{
    	width: 40px;
    	height: 40px;
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }
    
    #last {    
        padding: 60px;
    }
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="title">공지사항</div>
	
    <div id="outer">
		
        <table id="table-main">
            <thead id="head">
                <tr>
                    <td>NO</td>
                    <td>제목</td>
                    <td>작성자</td>
                    <td>조회수</td>
                    <td>작성일</td>
                </tr>
            </thead>
            
            <tbody>        
                    <tr>
                        <td>3</td>
                        <td>안내드립니다</td>
                        <td>관리자</td>
                        <td>5</td>
                        <td>22/08/02</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>안내드립니다</td>
                        <td>관리자</td>
                        <td>10</td>
                        <td>22/08/01</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>안내드립니다</td>
                        <td>관리자</td>
                        <td>30</td>
                        <td>22/08/01</td>
                    </tr>
            </tbody>            
        </table>
    </div>
    
    <button id="write" style="float: right" onclick="location.href='/gibuAndTakePrj/notice/write'">공지사항 작성</button>
    
    <div id="btn">
    	<a id="a">&nbsp&nbsp<&nbsp&nbsp</a>
        <a id="b">&nbsp&nbsp1&nbsp&nbsp</a>
        <a id="b">&nbsp&nbsp2&nbsp&nbsp</a>
        <a id="b">&nbsp&nbsp3&nbsp&nbsp</a>
        <a id="b">&nbsp&nbsp4&nbsp&nbsp</a>
        <a id="b">&nbsp&nbsp5&nbsp&nbsp</a>
        <a id="c">&nbsp&nbsp>&nbsp&nbsp</a>
    </div>
    
    <div id="last"></div>
    
    <%@include file="/views/common/footer.jsp" %>
        
    <script>
    	$(function(){
    		$('#table-main>tbody>tr').click(function(){
    			const num = $(this).children().eq(0).text();
    			location.href='/gibuAndTakePrj/notice/detail?num=' + num;
    		});
    	})
    </script>
</body>
</html>