<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩 승인</title>
<style>

	#title {
        background-color: #8bdcb1;
        width: 1905px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
        padding: 30px 0px 30px 550px;
    }
	
    div{
        box-sizing: border-box;
    }
    
    table {
        width: 820px;
        height: 700px;
        border-top: 1px solid black;
        border-collapse: collapse;
    } 
    
    .wrap{
        width: 800px;
        height: 850px;
        margin: auto;
        padding: 30px 0px 0px 0px;
    }

    .wrap>div{width: 100%;}
     #one{height: 7%;}
     #two{ height: 7%;}
     #three{height: 5%;}
     #four{height: 7%;}
     #five{height: 7%;}
     #eleven{height: 7%;}
     
     #two_1{width: 10%;}
     #two_2{width: 40%;}
     #two_3{width: 40%;}
    
     #four_1{width: 40%;}
     #four_2{width: 40%;}
     
    #one{
    	border: 1px solid #2e6c4a;
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
    	padding: 20px 0px 0px 0px;
        text-align: center;
        font-size: 20px;
        font-weight: 700;
    }
    
    #two{
    	border: 1px solid #2e6c4a;
    	width: 820px;
    	height: 70px;	
        margin: auto;
    }
    
    #two_1{
    	border: 1px solid #2e6c4a;
    	width: 309px;
    	vertical-align : top;
        margin: auto;
    }
    
    #two_2{
    	border: 1px solid #2e6c4a;
    	width: 200px;
        margin: auto;
        vertical-align : top;
    }
    
    #three{
    	border: 1px solid #2e6c4a;
    	width: 820px;
    	height: 30px;
        margin: auto;
    }
    
    #four{
    	border: 1px solid #2e6c4a;
    	width: 820px;
    	height: 70px;
        margin: auto;
    }
    
    #four_1{
    	border: 1px solid #2e6c4a;
      	vertical-align : top;
    }
    
    #four_2{
    	border: 1px solid #2e6c4a;
      	vertical-align : top;
    }
    
    #five_1{
    	border: 1px solid #2e6c4a;
     	vertical-align : top;
    }
    
    #five_2{
    	border: 1px solid #2e6c4a;
      	vertical-align : top;
    }
    
    #eleven_1{
    	border: 1px solid #2e6c4a;
     	vertical-align : top;
    }
    
    #eleven_2{
    	border: 1px solid #2e6c4a;
      	vertical-align : top;
    }
    
    #six{
    	border: 1px solid #2e6c4a;
    	width: 820px;
    	height: 350px;
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
	
	.line1{
		width: 320px;
		height: 70px;
	}
	
	.line2{
		width: 320px;
		height: 70px;
	}
	
	#btn{
        background-color: #b3e0c9;
    	border: 2px solid #acdac2;
        width:100px;
        margin: 50px auto;
        display:block;
        border-radius: 15px;
        font-size: 20px;
        font-weight: 700;
    }
    
    #btn:hover{
    	background-color: #93e1b7;
    	cursor: pointer;
    }
	
	#last {    
        padding: 260px;
    }

</style>
</head>
<body>
 	<%@include file="/views/common/header.jsp" %>
    
	<div id="title">펀딩 승인</div>
	
	<form action="/gibuAndTakePrj/manager/fundinglist" method="get">
     <div class="wrap">
	<div id="one">
		<div id="a">승인번호 제&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp호</div>
		<div id="b">펀딩 사업 승인증</div>
	</div>

    <table border="1">
        <tr id="two">
            <td style="text-align: center;">승인대상자</td>
            <td colspan="2" class="line" id="two_1">기업명
            	<input type="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td>
           
        </tr>
        <tr id="three">
            <td colspan="3"></td>
        </tr>
        <tr id="four">
            <td rowspan="3" style="text-align: center;">실시계획<br>승인<br>(신고수리)</td>
            <td class="line" id="four_1">제목
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td>
            <td class="line" id="four_2">제품명
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td>
                    
        </tr>
        <tr id="five">
            <td class="line2" id="five_1">기간
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td> 
            <td class="line2" id="five_2">수량
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td>
        </tr>
        <tr id="eleven">
            <td class="line2" id="eleven_1">금액
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td> 
            <td class="line2" id="eleven_2">목표 금액
            	<input type="text" name="text" size="20" style="width:100%; height:60%; border: 0; outline:none; text-align: center;">
            </td>
        </tr>
        </table>
   
   
    <div id="six">
		<div id="seven">제 00조 00항에 의하여 실시 사업 계획을 승인(신고 수리) 합니다. </div>
		<div id="eight"><input type="text" name="text" size="20" style="width:100%; height:10%; border: 0; outline:none; text-align: right;"></div>
		<div id="nine">추천관리청의 장&nbsp&nbsp&nbsp<span id="ten">직인</span></div>
	</div>
	
	<div>
		<input id="btn"  type="submit" value="승인">
	</div>
	
   </div>
  </form>
    
    <div id="last"></div> 
    
       <%@include file="/views/common/footer.jsp" %>
</body>
</html>
