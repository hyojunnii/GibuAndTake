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
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  
<style>
	 @import url("https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=IBM+Plex+Sans+KR&display=swap");
	 
	.wrap{
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
	
	  #modal-outer {
        width: 400px;
      }

      #modal-form {
        height: 400px;
        border: 3px solid #72d09e;
        border-radius: 15px;
      }

      #modal-header {
        justify-content: center;
        border-bottom: 3px solid #8bd0ab;
        background-color: #d8eee2;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
      }
      
       #modal-header h4 {
        font-weight: 600;
        color: #2e6c4a;
        margin-left:120px;
      }
	  #memberP {
	  	 height:30px;
         width: 180px;
         border-radius: 15px;
         margin: 5% auto;
         margin-left: -80px;
         border: 1px solid #acdac2;
	  }
	  
	   #memberPnew {
	  	 height: 30px;
         width: 180px;
         border-radius: 15px;
          margin: 5% auto;
           margin-left: -80px;
         border: 1px solid #acdac2;
	  }
	  
	  #memberPnew2 {
	  	 height: 30px;
        width: 180px;
         border-radius: 15px;
         margin: 5% auto;
          margin-left: -80px;
         border: 1px solid #acdac2;
	  }
	  
	   .modal-form-button {
        width: 300%;
        border-radius: 15px;
        border: none;
        height: 55px;
        margin-left:100px;
        font-size: 18px;
        background-color: #e0e0e0;
      }

      .modal-form-button:hover {
        font-weight: 600;
        box-shadow: 0.5px 0.5px 3px 0px #dadada;
      }

      #modal-form-buttons input[type="submit"] {
        background-color: #b3e0c9;
      }

      #modal-form-buttons {
        margin: 0 auto;
        color: #2e6c4a;
        font-size: 20px;
        font-weight: 900;
        margin-top: 40px;
        display: flex;
        justify-content:center;
      }
      
       .modal-form-button2 {
        width: 500%;
        border-radius: 15px;
        border: none;
        height: 55px;
        margin-left:20px;
        font-size: 18px;
        background-color: #e0e0e0;
      }

      .modal-form-button2:hover {
        font-weight: 600;
        box-shadow: 0.5px 0.5px 3px 0px #dadada;
      }
      
      
      
	table tr {
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
        border-width: 2px 2px 2px 2px;
        padding-left:20px;
        border-style: solid;
        border-color: #acdac2;
        
       
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
       	border-style: solid ;
        border-color:#acdac2;
        color:#2e6c4a;
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
		color:#2e6c4a;
	}
	
	 #memberUdq{
		text-align: center;
		font-size:15pt;
		
    .log2{
    	text-decoration: none;
        color: black;
       	font-weight: bold;
    	
    }
    
    
   
    	
    	
</style>
</head>
<body>
	
	
	<main>
		  <div id="memberUpEvery">
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
                 	<a href="" onclick="pwdCh"  data-bs-toggle="modal" data-bs-target="#pwdChange"style="font-weight:bold"> 비밀번호 변경</a>
				</div>
			</form>
			</div>
			  <div style="padding-top: 100px">
               <%@ include file="../common/footer.jsp" %>
          		</div>
				</div>
		</form>
		
	</main>
	<!-- The Modal -->
	<div class="modal" id="pwdChange">
	  <div class="modal-dialog" id="modal-outer">
	    <div class="modal-content" id="modal-form">
	
	      <!-- Modal Header -->
	      <div class="modal-header" id="modal-header">
	        <h4 class="modal-title">비밀번호 변경</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body" id="modal-body">
	        <div id="pwdFormOuter">
	        	<form action="" method="post">
	        		<input type="hidden" name="memberId"> 
		        	<table>
		        		<tr>
		        			<td>기존 비밀번호</td>
		        			<td><input type="password" id="memberP" name="memberPwd"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호</td>
		        			<td><input type="password" id="memberPnew"name="memberPwdNew"></td>
		        		</tr>
		        		<tr>
		        			<td>신규 비밀번호 확인</td>
		        			<td><input type="password" id="memberPnew2" name="memberPwdNew2"></td>
		        		</tr>
		        		<tr >
		        			<td  id="modal-form-buttons">
		        				<input type="submit" class="modal-form-button" value="변경하기" onclick="return checkPwd();">
		        				<input type="button" class="modal-form-button2"  data-bs-dismiss="modal" value="취소">
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
		function pwdCh() {
			var pwdCh = document.querySelector(".modal");
			 pwdCh.classList.add("pwdCh");
		}
	
	</script>
	
	
	
</html>