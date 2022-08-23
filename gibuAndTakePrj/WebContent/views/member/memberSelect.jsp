<%@page import="com.gnt.member.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	String alertMsg = (String)session.getAttribute("alertMsg");
	session.removeAttribute("alertMsg");
	
	String contextPath = request.getContextPath();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	#selEvery{
   		width:1200px;
   		margin:0 auto;
   }
   
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
    
     .selected_bg{
        background-color: #EBF5E0;
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
		width:500px;
		
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
	
	.input{
		width: 300px;
		height: 30px;
        border-radius: 20px 20px;
        font-size: small;
        border-width: 2px 2px 2px 2px;
        padding-left:-30px;
        border-style: solid ;
        border-color:#acdac2;
       
	}
	
	
	
	
	#check {
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
		padding-left: 10px;
		color:#2e6c4a;
	}
	
	 
	 #memberDelQuit{
		text-align: center;
    }
   
    .log{
        text-decoration: none;
        color: black;
        font-size: 15pt;
       	font-weight: bold;
    }
	
	 
</style>
</head>
<body>
	
	
	<main>
		  <div id="selEvery">

		  <div id="logo_name">
           	 <a href="<%=request.getContextPath()%>">
                    <img id="logo" src="/gibuAndTakePrj/resources/img/free-icon-giving-5017478.png" alt="홈페이지 로고">
                    <span id="siteName"><span class="greenBold selected_bg">기부 앤 테이크</span><span id="siteName_small" class="greenBold">Gibu n Take</span></span>
                </a>
           </div>
		
		<div id="line"></div>
		<h3 align="center" style="font-size: 25px; ">회원 정보 조회</h3>
		<form action="/gibuAndTakePrj/member/memberInfo" method="post" name="memberUpdate">
		<input type="hidden" value="<%=loginMember.getNo()%>" name="memberNo">
			<table>
				<tr>
					<td class="first" style="font-weight: bold">아이디 *</td>
					<%--input 안에다가 히든밸류 값 넣어주기 getNo... --%>
					<td><input type="text" name="memberId" class="input" id="memberId" value="<%=loginMember.getId() %>"   readonly ></td>
					
				</tr>
				
				<tr>
					<td class="first" style="font-weight: bold">이름 *</td>
					<td><input type="text" name="memberName" id="memberName" class="input"  value="<%=loginMember.getName() %>" readonly></td>
			
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">닉네임 *</td>
					<td><input type="text" class="input" name="memberNick"  id="memberNick"   value="<%=loginMember.getNick() %>"  readonly></td>
					
				</tr>
				<tr>
					<td  class="first" style="font-weight: bold">주민등록번호 *</td>
					<td><input type="text" name="memberRegnum" id="memberRegnum" class="input"    value="<%=loginMember.getRegnum() %>"  readonly></td>
				
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">휴대전화 *</td>
					<td><input type="text" name="memberPhone"  id="memberPhone" class="input" value="<%=loginMember.getPhone() %>"  readonly></td>
					
					
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">이메일 *</td>
					<td><input type="tel" name="memberEmail" id = "memberEmail" class="input" value="<%=loginMember.getEmail() %>" required readonly ></td>
				
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">주소 *</td>
					<td><input type="tel" id="memberAddr"  name="memberAddr" class="input"  value="<%=loginMember.getAddr() %>" required readonly ></td>
				
				</tr>
				
			
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				
			</table>
			
				<div id="memberDelQuit">
					<a onclick="onUpdate()" id="Update" class="log">회원 정보 수정 /</a>
                    <a onclick="location.href='/gibuAndTakePrj/member/quit'" class="log">회원 탈퇴</a>
				
				</div>
				</form>
			</div>

			  <div style="padding-top: 100px">
               <%@ include file="../common/footer.jsp" %>
          		</div>

		
	</main>
			
		<script>
			function onUpdate(){
				var memberUpdateForm = document.memberUpdate;
					memberUpdateForm.submit();
				
			}
			
		</script>	
			
	
</body>
</html>