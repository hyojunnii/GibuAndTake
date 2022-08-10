<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
<title>Insert title here</title>
  	
  	
  	<!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  
<style>

	body{
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
	
	#memberUp{
		text-align:center;
		font-size: 25px;
		margin-top:10px;
		font-weight:bold;
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
	
	#check:hover{
		text-align: center;
        width: 100px;
        margin-top: 0 auto;
        height: 30px;
        border-radius: 20px 20px;
        font-size: small;
        border: solid:black;
        border-width: 1px 1px 1px 1px;
        margin-right: 140px;
       	font-weight: bold;
		background-color: #5CD394;
       	transition:background 0.7s ease-in-out;
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
    
    .btn-btn-warning{
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
		<h3 id= "memberUp">회원 정보 수정</h3>
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
                  <a><input type="button" id="" value="비밀번호변경" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#pwdChange">
				</a> 
				</div>

			  <div style="padding-top: 100px">
               <%@ include file="../common/footer.jsp" %>
          		</div>

		</form>
	</main>
	<!-- The Modal -->
	<div class="modal" id="pwdChange">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">Modal Heading</h4>
	        <button type="button" class="btn-close" data-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	        <div id="pwdFormOuter">
	        	<form action="" method="post"> 
	        		<input type="hidden" name="memberId" <%--value="<%=loginMember.getId()--%>>
		        	<table>
		        		<tr>
		        			<td>기존 비밀번호</td>
		        			<td><input type="password" name="memberPwd"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호</td>
		        			<td><input type="password" name="memberPwdNew"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호 확인</td>
		        			<td><input type="password" name="memberPwdNew2"></td>
		        		</tr>
		        		<tr>
		        			<td colspan="2">
		        				<input type="submit" value="변경하기" onclick="return checkPwd();">
		        			</td>
		        		</tr>
		        	</table>
		       	</form>
	        </div>
	      </div>
	
	    </div>
	  </div>
	</div>
</body>

	
	
	<script>
		$('#pwdChange').click(function(e){
			e.preventDefault();
			$('#pwdChange').modal("show");
		});
	</script>
	<script>
		function checkPwd(){
			isSame = $('input[name=memberPwdNew]').val() == $('input[name=memberPwdNew2]').val();
			if(isSame){
				return true;
			}else{
				alert("신규 비밀번호가 일치하지 않습니다.");
				return false;
			}
			
		}
	</script>
	
</html>