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
        border: 1px solid black;
        color: black;
        width: 60%;
        margin: 0 auto;
        padding-bottom: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        text-align: center;
        flex-direction: column;
    }

    #write{
    	margin: 20px;
        border-radius: 50px;
        align-self: center;
    }

    #table-main{
        border: 1px solid white;
        width: 95%;
        margin-top: 10px;
    }

    #table-main>tbody tr:hover{
        background-color: lightgrey;
        cursor: pointer;
    }
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div id="title">공지사항</div>
	
    <div id="outer">
		
        <table id="table-main">
            <thead>
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
                        <td>10</td>
                        <td>안내드립니다</td>
                        <td>관리자</td>
                        <td>5</td>
                        <td>22/08/02</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>안내드립니다</td>
                        <td>관리자</td>
                        <td>10</td>
                        <td>22/08/01</td>
                    </tr>
            </tbody>            
        </table>
        
        <button id="write" onclick="location.href='/gibuAndTakePrj/notice/write'">공지사항 작성</button>
    </div>
    
        
</body>
</html>