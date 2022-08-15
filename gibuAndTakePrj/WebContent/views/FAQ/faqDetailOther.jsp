<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>FAQ</title>
<style>

	#to{
            width: 100px;
            height: 100px;
            border: 1px solid black;
            background-color: skyblue;
        }
	
    #title {
        background-color: #8bdcb1;
       	width: 1905px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
        padding: 30px 0px 30px 150px;
    }
    
    .search {
	  position: relative;
	  width: 250px;
      border-radius: 10px;
	  float: right;
	  margin-right: 300px;
	}
	
	#search {
	  width: 100%;
	  border: 1px solid #2e6c4a;
	  border-radius: 10px;
	  padding: 10px 12px;
	  font-size: 14px;
	}
	
	#icon {
	  position : absolute;
	  width: 17px;
	  top: 25px;
	  right: 12px;
	  margin: 0;
	}
	
	.toggle{
    	border: 2px solid #acdac2;
    	background-color: white;
    	border-radius: 10px;
    	width: 650px;
    	height: 40px;
    	margin: 0px 70px 0px 350px;
    	text-align: left;
	}
	
	.toggle:hover{
        cursor: pointer;
	}
	
	.toggle2{
		border: 2px solid #acdac2;
    	background-color: white;
    	border-radius: 10px;
    	width: 650px;
    	height: 80px;
    	margin: 0px 70px 0px 350px;
    	text-align: left;
	}
	
	#toggle{
		margin-top: 30px;
	}
	
	#img{
		background-color: white;
		border: 0;
    	border-radius: 10px;
    	margin: 0px 70px 0px -110px;
    	font-size: 17px;
		text-align: right;
	}
    
    .input{
    	background-color: white;
    	color: green;
    	margin-left: 140px;
    	margin-top: 30px;
    	font-weight: bold;
    	border-radius: 15px;
    	border: 0px;
    }
    
    .input:hover{
    	cursor: pointer;
    }
    
    #campaign{
    	margin-left: 135px;
    }
    
    #category{
    	border: 2px solid #acdac2;
		border-radius: 10px;
    	width: 650px;
    	height: 40px;
    	margin: 0px 70px 0px 350px;
    }
    
    #btn1{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        margin-top: 5px;
        padding: 3px 10px 3px 10px;
        font-weight: bold;
        border-radius: 15px;
        margin-left: 820px;
    }

    #btn1:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    #btn2{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        padding: 3px 10px 3px 10px;
        font-weight: bold;
        border-radius: 15px;
        margin: 5px 0px 0px 10px;
    }

    #btn2:hover{
    	background-color: #93e1b7;
        cursor: pointer;
    }
    
    .btn3{
    	float: left;
    }
    
    #btn{
    	margin-top: 100px;
    	margin-left: 570px;
    }
    
    #a:hover{
    	cursor: pointer;
    }
    
    #b:hover{
    	cursor: pointer;
    }
    
    #c:hover{
    	cursor: pointer;
    }
    
    #a{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }
    
    #b{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }
    
    #c{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }
    
    #last{
    	padding: 320px;
    }

</style>
</head>
<body>
	<%@include file="/views/common/header.jsp" %>
	<div id="title">FAQ
		<div class="search">
				   <input id="search" type="text" placeholder="검색어 입력">
				   <img id="icon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
				</div>
	</div>
    
	 <div style="border: 1px solid #72d09e; float: left; width: 20%; height:640px; padding:0px 0px 0px 20px;">
		<form action="/gibuAndTakePrj/faq/list" method="get">
			<input class="input" type="submit" value="기부">
		</form>
		
		<form action="/gibuAndTakePrj/faq/fundinglist" method="get">
			<input class="input" type="submit" value="펀딩">
		</form>
		
		<form action="/gibuAndTakePrj/faq/campaignlist" method="get">
			<input id="campaign" class="input" type="submit" value="캠페인">
		</form>
		
		<form action="/gibuAndTakePrj/faq/otherlist" method="get">
			<input class="input" type="submit" value="기타">
		</form>		
	 </div>
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:640px; padding:50px 0px 0px 0px;">                  
	    	
	    	
            
            <form action="/gibuAndTakePrj/faq/otherlist" method="get">
	    	<button class="toggle">기타질문<button id="img">▲</button></button>
	    	<div class="toggle2">기타답변</div>
	    	<button class="toggle" id="toggle">기타질문<button id="img">▽</button></button>
	    	<button class="toggle" id="toggle">기타질문<button id="img">▽</button></button>
	    	<button class="toggle" id="toggle">기타질문<button id="img">▽</button></button>
	    	<button class="toggle" id="toggle">기타질문<button id="img">▽</button></button>
            </form>
	    	
	    	<form action="/gibuAndTakePrj/faq/write" method="get">
		    	<input id="btn1" class="btn3" type="submit" value="FAQ작성">
	    	</form>
	    	
	    	<form action="/gibuAndTakePrj/faq/modify" method="get">
	        	<input id="btn2" class="btn3" type="submit" value="FAQ수정/삭제">
	    	</form>
	    	
	    
	    <div id="btn">
	    	<a id="a">&nbsp&nbsp<&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp1&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp2&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp3&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp4&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp5&nbsp&nbsp</a>
	        <a id="c">&nbsp&nbsp>&nbsp&nbsp</a>
	    </div>
	    
	  </div>
	<div id="last"></div>
	<%@include file="/views/common/footer.jsp" %>
	
	<!-- <button id="t">toggle</button>
	    	<div id="to">
	    	</div> -->
	
	<!-- <script>
        $(function(){

            const t = $('#to');

            $('#t').click(function(){
                t.toggle(1000);
            });
        })
     </script> -->
</body>
</html>