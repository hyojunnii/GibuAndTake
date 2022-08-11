<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #header {
        width: 370px;
        margin-left: 320px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
    
    
    #input1{
            width: 800px;
            height: 500px;
            color: black;
            margin: 0px 70px 0px 470px;
            margin-top: 30px;
    }

    #input2{
            width: 800px;
            height: 500px;
            color: black;                      
            margin: 0px 70px 0px 470px;
            vertical-align: middle;
    }
    
    #list{
    	margin-left: 470px;
    }

    #btn1{
        background-color: white;
        margin: 0px 50px 0px 750px;
        margin-top: 30px;
        padding: 20px;
        font-weight: bold;
        border-radius: 50px;
    }
    
 	#btn2{
        background-color: white;
        margin: 0px 50px 0px 0px;
        margin-top: 30px;
        padding: 20px;
        font-weight: bold;
        border-radius: 50px;
    }

    #btn1:hover{
        cursor: pointer;
    }
    
    #btn2:hover{
        cursor: pointer;
    }
    
    #last {    
        padding: 40px;
    }

</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
    <div id="header">[공지] 사용자 제제 안내</div>

    <form action="">
	    <textarea name="content" id="input1">안내내용</textarea>
	    <br><br>
	    <div id="list">[제재된 사용자 목록]</div>
	    <textarea name="content" id="input2"></textarea>
	    <div id="btn">
            <input id="btn1" type="submit" value="작성이동">
            <input id="btn2" type="submit" value="목록이동">
        </div>
	    
    </form>
    	
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>