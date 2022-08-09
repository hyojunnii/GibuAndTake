<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
   
    #square{
     width: 500px;   
     height: 500px;
     border: solid black;
     margin: 0 auto;
     margin-top: 200px;
     border-radius: 8%;  
     border-width: 1px 1px 1px 1px;
    }

    #loginInfo {
        text-align: center;
        margin: 0 auto;
        margin-top: 150px;
        border-collapse: separate;
        border-spacing: 0 5px;
    }
    
     #logo_name{
    	text-align:center;
    	margin-top:50px;
    	margin-bottom:-120px;

    }
    
    #logo{
        width: 65px;
        height: 65px;
    }

    #siteName{
        font-size: 40px;
        vertical-align: middle;
    }
    
   
    
    #logo_name>*{
        text-decoration: none;
    }

    
    
    a{
    	text-decoration: none;
    	color: black;
    }

    #logo_name>a>*{
        vertical-align: middle;
        height: 75px;
    }

    #siteName_small{
        font-size: 20px;
        
        
    }
    
     
    
     .greenBold{
        color: #086C37;
        font-weight: bold;
    }

    #ID {
        text-align: left;
        width: 350px;
        height: 60px;
        border-radius: 20px 20px;
        font-size: large;
        border-width: 1px 1px 1px 1px;
    }

    #PWD {
        text-align: left;
        width: 350px;
        height: 60px;
        border-radius: 20px 20px;
        font-size: large;
        border-width: 1px 1px 1px 1px;
    }

    #login {
        text-align: center;
        width: 260px;
        margin-top: 40px;
        height: 60px;
        border-radius: 20px 20px;
        font-size: large;
        background-color: #5CD394;
        border: none;
    }

    

    #alink {
        margin-top: 30px;
        display: flex;
        justify-content: space-evenly;
        
    }
   
    .log{
        text-decoration: none;
        color: black;
        font-size: 11pt;
    }

</style>
<body>
		<form action="gibuAndTakePrj/member/login">
            <div id ="square">
                <table id= "loginInfo">
                    <div id="logo_name">
           			<a href="<%=request.getContextPath()%>">
                	<img id="logo" src="../../resources/img/free-icon-giving-5017478.png" alt="홈페이지 로고">
                	<span id="siteName"><span class="greenBold selected_bg" style=" background-color: #EBF5E0;">기부 앤 테이크</span><span id="siteName_small" class="greenBold">Gibu n Take</span></span>
            		</a>
            		</div>
	                <tr>
	                    <td colspan="4"><input type="text" name="memberId" id="ID" placeholder="아이디"></td>
	                </tr>
	                <tr>
	                   <td colspan="4"><input type="password" name="memberPwd" id="PWD" placeholder="비밀번호"></td>
	                </tr>
	                <tr>
	                    <td><button type="button" id="login" onclick="location.href='/gibuAndTakePrj/member/login'">로그인</button></td>
	                </tr>
                   <tr id="alink">
                    <td><a href="" class="log">일반 회원가입 |</a></td>
                    <td><a href="" class="log"> &nbsp;기업 회원가입</a></td>
                    <td></td><td></td><td></td><td></td><td></td> <td></td><td></td><td></td><td></td><td></td> <td></td><td></td><td></td><td></td><td></td> <td></td><td></td><td></td><td></td><td></td> <td></td><td></td><td></td><td></td><td></td> 
                    <td><a href="" class="log">아이디 찾기 |</a></td>
                    <td><a href="" class="log"> &nbsp;비밀번호 찾기</a></td>
                    </tr>
                </table>
                </div>
                
                <div style="padding-top: 100px">
               <%@ include file="../common/footer.jsp" %>
          		</div>
        </form>

       
</body>
</html>