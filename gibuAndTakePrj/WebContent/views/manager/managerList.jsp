<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
        box-sizing: border-box;
        border: 1px solid black;
    }

    .wrap{
        width: 1000px;
        height: 1200px;
        margin: auto;
    }

    .wrap>div{width: 100%;}
     #header{height: 10%;}
     #navigator{height:15%;}
     #content{height: 60%;}
     #bar{height: 5%;}
     #footer{height: 10%;}
     
     #content>div{height: 100%; float: left;}
     #content_1{width: 20%;}
     #content_2{width: 80%;}
</style>
</head>
<body>	
	
	<h1>관리자</h1>

    <div class="wrap">
        <div id="header">관리자</div>
        <div id="navigator"></div>
        <div id="content">
            <div id="content_1"></div>
            <div id="content_2"></div>
        </div>
        <div id="bar"></div>
        <div id="footer"></div>
    </div>
</body>
</html>