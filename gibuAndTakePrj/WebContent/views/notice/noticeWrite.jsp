<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #header {
        width: 280px;
        margin-left: 320px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
    

    
    #title{
            margin: 0px 70px 0px 430px;
            font-weight: bold;
            text-align: center;
    }

    #content{
            margin: 0px 70px 0px 430px;
            font-weight: bold;
    }
    
    #input1{
            width: 760px;
            height: 40px;
            color: black;
            margin: 2px;
    }

    #input2{
            width: 760px;
            height: 500px;
            color: black;                      
            margin: 2px;
            vertical-align: middle;
    }

    #btn{
        background-color: white;
        margin: 0px 850px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 50px;
    }

    #btn:hover{
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
    
    <form action="">
    	<label id="title">제목</label>
	    <input id="input1" type="text" name="id">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea name="content" id="input2"></textarea>
	    <div >
            <input id="btn" type="submit" value="공지사항 등록">
        </div>
	    
    </form>
    	
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>