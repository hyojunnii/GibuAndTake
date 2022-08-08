<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	main{
		margin:auto;
		
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
	
	#line {
		border-bottom: 2px solid#E2F5EB;

	}

	#join {
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
</style>
</head>
<body>
	
	
	<main>
		<h1 align="center">기부 앤 테이크 로고</h1>
		
		<div id="line"></div>
		<h3 align="center">일반 회원 가입 페이지</h3>
		<form action="gibuAndTakePrj/member/join" method="post">
			<table>
				<tr>
					<td style="font-weight: bold">아이디 *</td>
					<td><input type="text" name="memberId" id="input" maxlength="10" required placeholder="영문+숫자 4글자 이상" ></td>
					<td><button type="button" id="check" onclick="location.href='/gibuAndTakePrj/member/login'">중복확인</button></td>
				</tr>
				
				<tr>
					<td  style="font-weight: bold">비밀번호 *</td>
					<td><input type="password" name="memberPwd" id="input" maxlength="10" required placeholder="영문+숫자 4글자 이상"></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">비밀번호 확인 *</td>
					<td><input type="password" id="input" name="memberPwd2" required></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">이름 *</td>
					<td><input type="text" name="memberName" id="input" maxlength="3" required></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">닉네임 *</td>
					<td><input type="text" name="memberName" id="input" maxlength="3" required></td>
					<td><button type="button" id="check" onclick="location.href='/gibuAndTakePrj/member/login'">중복확인</button></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">주민등록번호 *</td>
					<td><input type="tel" name="memberPhone" id="input" placeholder="- 없이 입력"></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">휴대전화 *</td>
					<td><input type="tel" name="memberPhone" id="input" placeholder="- 없이 입력"></td>
					<td></td>
				</tr>
				
				<tr>
					<td  style="font-weight: bold">이메일 *</td>
					<td><input type="email" name="memberEmail" id="input"></td>
					<td></td>
				</tr>
				<tr>
					<td  style="font-weight: bold">주소 *</td>
					<td><input type="text" name="memberAddr" id="input"></td>
					<td></td>
				</tr>
				
				<tr>
					<td  style="font-weight: bold"></td>
					<td><td><button type="button" id="join" onclick="location.href='/gibuAndTakePrj/member/login'">가입하기</button></td>
					<td></td>
				</tr>

			</table>

			

		</form>
	</main>

	
</body>
</html>