<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style>
	main{
		margin:auto;
		
	}
	#logo_name{
    text-align:center;
    margin-top:10px;
    margin-bottom:0px;

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

    
    
    a {
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
	
	
	
	main table{
		margin-top: 100px;
		text-align: center;
		margin-left: auto;
		margin-right: auto;
		algin: center;
		border-collapse: separate;
		border-spacing : 0 20px;
		
		
	}
	
	table tr{
		<%--border-style:solid;--%> 
	}
	table tr >td{
		<%--border-style:solid;--%> 
		width:33%; 
		
	}
	
	#line{
		border-bottom: 5px solid #E2F5EB;

	}

	#join{
        text-align: center;
        width: 260px;
        margin: auto;
        height: 60px;
        border-radius: 20px 20px;
        font-size: large;
        background-color: white;
        border-style: calc() ;
        align:center;
    }

	#input{
		width: 300px;
		height: 30px;
        border-radius: 20px 20px;
        font-size: small;
        border-width: 1px 1px 1px 1px;
        padding-left:20px;
        
       
	}
	
	#check{
		text-align: center;
        width: 100px;
        margin-top: 0 auto;
        height: 30px;
        border-radius: 20px 20px;
        font-size: small;
        background-color: white;
        border: solid:black;
        border-width: 1px 1px 1px 1px;
        margin-right: 140px;
       	font-weight: bold;
	}
	
	.first{
		padding-left: 100px;
	}
	
	 #memberUdq {
		text-align: center;
		font-size:15pt;
		
    .log2 {
    	text-decoration: none;
        color: black;
       	font-weight: bold;
    	
    }
    
</style>
</head>
<body>
	
	
	<main>
		  <div id="logo_name">
           	<a href="<%=request.getContextPath()%>">
            <img id="logo" src="../../resources/img/free-icon-giving-5017478.png" alt="홈페이지 로고">
            <span id="siteName"><span class="greenBold selected_bg" style=" background-color: #EBF5E0;">기부 앤 테이크</span><span id="siteName_small" class="greenBold">Gibu n Take</span></span>
            </a>
           </div>
		
		<div id="line"></div>
		<h3 align="center" style="font-size: 25px">회원 정보 수정</h3>
		<form action="gibuAndTakePrj/member/memberUpdate" method="post">
			<table>
			
				<tr>
					<td class="first" style="font-weight: bold">닉네임 *</td>
					<td><input type="text" name="memberName" id="input" maxlength="3" required></td>
					<td><button type="button" id="check" onclick="location.href='/gibuAndTakePrj/member/login'">중복확인</button></td>
					
				</tr>
			
				<tr>
					<td class="first" style="font-weight: bold">휴대전화 *</td>
					<td><input type="tel" name="memberPhone" id="input" placeholder="- 없이 입력"></td>
					<td></td>
				</tr>
				
				<tr>
					<td class="first" style="font-weight: bold">이메일 *</td>
					<td><input type="email" name="memberEmail" id="input"></td>
					<td></td>
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">주소 *</td>
					<td><input type="text" name="memberAddr" id="input"></td>
					<td></td>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr>
			

			</table>
			
				<div id="memberUdq">
					<a href="" class="log2" style="font-weight:bold">수정하기 /</a>
					<a href="" class="log2" style="font-weight:bold">회원 탈퇴 /</a>
                    <a  data-toggle="modal" href="pwdChange" class="log2" style="font-weight:bold">비밀 번호 변경</a>
				
				</div>

			  <div style="padding-top: 100px">
               <%@ include file="../common/footer.jsp" %>
          		</div>

		</form>
	</main>

	
</body>
</html>