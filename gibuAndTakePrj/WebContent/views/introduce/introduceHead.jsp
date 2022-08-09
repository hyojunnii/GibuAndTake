<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부앤테이크 소개</title>
<style>

    #int-nav{
        display: flex;
        justify-content : space-evenly;
        height: 50px;
        width: 800px;
        margin: 0 auto;
        text-align: center;
        font-size: 20px;
        margin-top: 20px;
    }

    #int-nav a{
        text-decoration: none;
        text-align: center;
        line-height: 40px;
        padding: 5px;
    }

    #int-nav a:hover{
        background-color: #EBF5E0;
        color: #2e6c4a;
		border-radius: 15px;
        font-style: italic;
    }

    #category{
		width: 100%;
		height: 100px;
		background-color: #8bdcb1;
		text-align: left;
		font-size: 25px;
		font-weight: 700;
		line-height: 100px;
		margin: 0 0 0 0;
        margin-top: 20px;
	}
	#category a {
		margin: 0 0 0 20px;
	}

</style>
</head>
<body>

    <%@include file="/views/common/header.jsp" %>
    <nav id="int-nav">
        <a href="" id="what">기부앤테이크?</a>
        <a href="" id="benefit">기부 후원자 혜택</a>
        <a href="" id="way">후원 결제 방법</a>
    </nav>

</body>
</html>