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
        padding: 30px 0px 30px 430px;
    }
    
	#gap{
    	padding-bottom: 50px;
    }
    
    #title{
    		color: #15462b;
            margin: 0px 70px 0px 430px;
            font-weight: bold;
            text-align: center;
    }

    #content{
    		color: #15462b;
            margin: 0px 70px 0px 430px;
            font-weight: bold;
    }
    
    #input1{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 760px;
            height: 40px;
            color: black;
            margin: 2px;
            margin-top: 50px;
    }

    #input2{
    		border: 2px solid #acdac2;
			border-radius: 10px;
            width: 760px;
            height: 500px;
            color: black;                      
            margin: 2px;
            vertical-align: middle;
    }

    #btn1{
    	background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin: 0px 50px 0px 790px;
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
    
    #last {    
        padding: 80px;
    }
    
    #a{
        border: 1px solid #2e6c4a;
        width: 46%;
        height: 60px;
        margin: 0px 0px 0px 430px;
		text-indent: 20px;
    }

    .date{
    	text-align: right;
    	padding: 0px 70px 0px 0px;
    }
    
    .float{
    	float: left;
    }
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
    <div id="header">공지사항 수정/삭제</div>
    <div id="gap"></div>
    <table id="a">
    	<tr>
    		<td>번호</td>
    		<td class="date">등록일 2022-02-02</td>
    	</tr>
    </table>
    
    <form action="/gibuAndTakePrj/notice/detail" method="get">
    	<label id="title">제목</label>
	    <input id="input1" type="text" name="id">
	    <br><br>
	    <label id="content">내용</label> 
	    <textarea name="content" id="input2"></textarea>
	    <div id="btn">
            <input id="btn1" class="float" type="submit" value="수정하기">
        </div>
    </form>
    
    <form action="/gibuAndTakePrj/notice/list" method="get">
    	<input id="btn2" class="float" type="submit" value="삭제하기">
    </form>
    
    <div id="last"></div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>