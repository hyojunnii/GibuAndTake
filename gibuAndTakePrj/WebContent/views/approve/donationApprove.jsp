<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부승인</title>
<style>

	#title {
        width: 200px;
        margin-left: 500px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
	
    div{
        box-sizing: border-box;
        border: 1px solid white;
    }
    
    /* table {
        width: 820px;
        height: 900px;
        border-top: 1px solid black;
        border-collapse: collapse;
        margin: 6px auto;
    } */
    
    .wrap{
        width: 800px;
        height: 850px;
        margin: auto;
    }

    .wrap>div{width: 100%;}
     #one{height: 7%;}
     #two{ height:7%;}
     #three{height: 5%;}
     #four{height: 7%;}
     #five{height: 7%;}
     
     #two>div{height: 100%; float: left;}
     #two_1{width: 10%;}
     #two_2{width: 40%;}
     #two_3{width: 40%;}
    
     #four>div{height: 100%; float: left;}
     #four_1{width: 20%;}
     #four_2{width: 20%;}
     #four_3{width: 20%;}
     #four_4{width: 20%;}
     #four_5{width: 20%;}
     
    #btn{
        background-color: white;
        width:100px;
        margin: 50px auto;
        display:block;
        border-radius: 50px;
        font-size: 20px;
        font-weight: 700;
    }
    
    #one{
    	border: 1px solid black;
    	width: 820px;
    	height: 150px;
        margin: auto;
    }
    
    #a {
        width: 820px;
        margin: auto;
        padding: 5px 0px;
        text-indent: 1em;
    }

    #b{
        text-align: center;
        font-size: 20px;
        font-weight: 700;
    }
    
    #two{
    	border: 1px solid black;
    	width: 820px;
    	height: 150px;
        margin: auto;
    }
    
    #two_1{
    	border: 1px solid black;
    	width: 200px;
    	height: 150px;
        margin: auto;
    }
    
    #two_2{
    	border: 1px solid black;
    	width: 290px;
    	height: 150px;
        margin: auto;
    }
    
   
    
    #three{
    	border: 1px solid black;
    	width: 820px;
    	height: 50px;
        margin: auto;
    }
    
    #four{
    	border: 1px solid black;
    	width: 820px;
    	height: 150px;
        margin: auto;
    }
    
    #four_1{
    	border: 1px solid black;
    	width: 200px;
    	height: 150px;
        margin: auto;
    }
    
    #four_2{
    	border: 1px solid black;
    	width: 200px;
    	height: 150px;
        margin: auto;
    }
    
    #four_3{
    	border: 1px solid black;
    	width: 200px;
    	height: 150px;
        margin: auto;
    }
    
    #five_1{
    	border: 1px solid black;
    	width: 100px;
    	height: 150px;
        margin: auto;
    }
    
    #five_2{
    	border: 1px solid black;
    	width: 80px;
    	height: 150px;
        margin: auto;
    }
    
    #six{
    	border: 1px solid black;
    	width: 820px;
    	height: 350px;
        margin: auto;
    }
    
    #seven {
        width: 820px;
        margin: auto;
        padding: 5px 0px;
        text-indent: 1em;
    }
    
    #eight{
    	width: 800px;
    	padding: 50px 15px;
        margin: auto;
        text-align: right;
    }

	#nine{
		width: 800px;
		padding: 20px;
		text-align: center;
	}
	
	#ten{
		border: 1px solid red;
		color: red;
		width: 500px;
		padding: 10px;
		text-align: center;
	}
</style>
</head>
<body>
 	<%@include file="/views/common/header.jsp" %>
    
	<div id="title">기부 승인</div>
	
     <div class="wrap">
	<div id="one">
		<div id="a">승인번호 제&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp호</div>
		<div id="b">기부 사업 승인증</div>
	</div>
    
        <div id="two">
            <div id="two_1">승인대상자</div>
            <div id="two_2">단체명</div>
            <div id="two_3">사업 대상</div>
        </div>
        <div id="three"></div>
        <div id="four">
            <div id="four_1">실시계획&nbsp&nbsp승인(신고수리)</div>
            <div id="four_2">제목</div>
            <div id="four_3">목표금액</div>
            <div id="five_1">기간</div>
            <div id="five_2">사업 기간</div>
        </div>
        <div id="six">
		<div id="seven">제 00조 00항에 의하여 실시 사업 계획을 승인(신고 수리) 합니다. </div>
		<div id="eight">년 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp월&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  일</div>
		<div id="nine">추천관리청의 장&nbsp&nbsp&nbsp<span id="ten">직인</span></div>
	</div>
    </div>
    <!-- <table border="1">
        <tr id="one">
            <td id="one1" colspan="3">기부 사업 승인증</td>

        </tr>
        <tr id="two">
            <td>승인대상자</td>
            <td>단체명</td>
            
            <td>사업대상</td>
           
        </tr>
        <tr id="three">
            <td colspan="3"></td>
        </tr>
        <tr id="four">
            <td rowspan="2">실시계획승인(신고수리)</td>
            <td>제목</td>
            <td>목표금액</td>          
        </tr>
        <tr id="five">
            <td>기간</td>
            <td>사업기간</td>
        </tr>
    </table> -->
   
    
	
    
	
    <button id="btn">승인</button>
    
    <%@include file="/views/common/footer.jsp" %>
</body>
</html>

