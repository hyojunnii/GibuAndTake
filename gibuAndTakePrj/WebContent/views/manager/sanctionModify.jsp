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
        padding: 30px 0px 30px 480px;
    }
    
    
    #input1{
			border: 2px solid #acdac2;
			border-radius: 10px;    		
            width: 800px;
            height: 500px;
            color: black;
            margin: 0px 70px 0px 570px;
            margin-top: 30px;
    }

    #input2{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 800px;
            height: 500px;
            color: black;                      
            margin: 0px 70px 0px 570px;
            vertical-align: middle;
    }
    
    #list{
    	font-weight: bold;
    	margin-left: 570px;
    }

   #btn1{
    	background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin: 0px 50px 0px 860px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 15px;
        padding: 5px 20px 5px 20px;
    }
    
 	#btn2{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin: 0px 50px 0px 0px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 15px;
		padding: 5px 20px 5px 20px;
    }

    #btn1:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    #btn2:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    .float{
    	float: left;
    }
    
    #last {    
        padding: 80px;
    }

</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
    <div id="header">[공지] 사용자 제제 안내</div>

    <form action="/gibuAndTakePrj/manager/detail" method="get">
	    <textarea id="input1">안내내용</textarea>
	    <br><br>
	    <div id="list">[제재된 사용자 목록]</div>
	    <textarea id="input2"></textarea>
	    <div>
            <input id="btn1" class="float" type="submit" value="수정">
        </div>
    </form>
    
    <form action="/gibuAndTakePrj/manager/sanction" method="get">
            <input id="btn2" class="float" type="submit" value="삭제">
    </form>
    	
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>