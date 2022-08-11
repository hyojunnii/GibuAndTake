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
	
	#corpPage{
		margin-top:35px;
		font-size: 25px;
		font-weight: bold;
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
	
	#join:hover{
        text-align: center;
        width: 260px;
        margin: auto;
        height: 60px;
        border-radius: 20px 20px;
        font-size: large;
        color:white;
        border-style: calc() ;
        align:center;
        background-color: #5CD394;
        transition:background 0.7s ease-in-out;
    }
	
	#input {
		width: 300px;
		height: 30px;
        border-radius: 20px 20px;
        font-size: small;
        border-width: 1px 1px 1px 1px;
        padding-left:20px;
       
        
       
	}
	
	#inputc {
		width: 300px;
		height: 150px;
        border-radius: 20px 20px;
        font-size: small;
        border-width: 1px 1px 1px 1px;
        padding-left:20px;
       
        
       
	}
	
	 textarea{
     	width: 300px;
		height: 150px;
        border-radius: 20px 20px;
        font-size: small;
        border-width: 1px 1px 1px 1px;
        padding-left:20px;
        padding: 10px 10px;
        font-size: 15px;
      }
      
	#check {
		text-align: center;
        width: 120px;
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
	
	 #corpDelQuit{
		text-align: center;
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
	
	.first {
		padding-left: 100px;
	}
	
	.corpText{
		padding-left:100px;	
		padding-bottom: 150px;
	}
	 .delQu{
        text-decoration: none;
        color: black;
        font-size: 15pt;
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
		<h3 align="center" id="corpPage" >기업 정보 페이지</h3>
		<form action="gibuAndTakePrj/member/join" method="post">
			<table>
				<tr>
					<td class="first" style="font-weight: bold">아이디 *</span></td>
						<%--input 안에다가 히든밸류 값 넣어주기 getNo... --%>
					<td><input type="text" name="corpId" id="input"required readonly></td>
					
				</tr>
				
				<tr>
					<td class="first" style="font-weight: bold">비밀번호 확인*</td>
					<td><input type="password" name="corpPwd" id="input"  required readonly></td>
					<td><input type="button" id="" value="비밀번호변경" class="btn" data-bs-toggle="modal" data-bs-target="#pwdChange" style="font-weight: bold">
					</td>
				</tr>
				<tr>
					<td  class="first" style="font-weight: bold">대표자명 *</td>
					<td><input type="text" name="rprName" id="input"required readonly></td>
					<td></td>
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">기업명 *</td>
					<td><input type="text" name="corpName" id="input" required readonly></td>
					<td></td>
					
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">사업자등록번호 *</td>
					<td><input type="tel" name="compNum" id="input" required readonly></td>
					<td></td>
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">휴대전화 *</td>
					<td><input type="tel" name="corpPhone" id="input" required readonly></td>
					<td></td>
				</tr>
				
				<tr>
					<td class="first" style="font-weight: bold">이메일 *</td>
					<td><input type="email" name="corpEmail" id="input" required readonly></td>
					<td></td>
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">주소 *</td>
					<td><input type="text" name="corpAddr" id="input" required readonly></td>
					<td></td>
				</tr>
				<tr>
					<td class="first" style="font-weight: bold">사업 유형 *</td>
					<td><input type="text" name="corpType" id="input" required readonly></td>
					<td></td>
				</tr>
				<tr>
					<td class="corpText" style="font-weight: bold">기업 설명 *</td>
					<td>
						 <textarea required readonly></textarea></td>
					</td>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr>
				

			</table>
			
				<div id="corpDelQuit">
					<a href="" class="delQu">기업 정보 수정 /</a>
                    <a href="" class="delQu">회원 탈퇴</a>
				
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
	        		<input type="hidden" name="corpId" <%--value="<%=loginMember.getId()--%>>
		        	<table>
		        		<tr>
		        			<td>기존 비밀번호</td>
		        			<td><input type="password" name="corpPwd"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호</td>
		        			<td><input type="password" name="corpPwdNew"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호 확인</td>
		        			<td><input type="password" name="corpPwdNew2"></td>
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