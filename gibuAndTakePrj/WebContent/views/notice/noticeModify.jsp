<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #header {
        width: 300px;
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
            margin-top: 50px;
    }

    #input2{
            width: 760px;
            height: 500px;
            color: black;                      
            margin: 2px;
            vertical-align: middle;
    }

    #btn1{
        background-color: white;
        margin: 0px 50px 0px 790px;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold;
        border-radius: 50px;
    }
    
 	#btn2{
        background-color: white;
        margin: 0px 50px 0px 0px;
        margin-top: 30px;
        padding: 10px;
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
    
    #a{
        border: 1px solid black;
        width: 46%;
        height: 60px;
        margin: 0px 0px 0px 430px;
		text-indent: 20px;
    }
    
    #a1{
    	margin: 15px;
    	text-indent: 10px;
    }

    #date1{
    	text-indent: 40px;
        float: right;
    }
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
    <div id="header">공지사항 수정/삭제</div>
    
    <div id="a">
         <div id="a1">번호 <div id="date1">등록일 2022-02-02</div></div>
    </div>
    
    <form action="">
    	<label id="title">제목</label>
	    <input id="input1" type="text" name="id">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea name="content" id="input2"></textarea>
	    <div id="btn">
            <input id="btn1" type="submit" value="수정하기">
            <input id="btn2" type="submit" value="삭제하기">
        </div>
	    
    </form>
    	
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>