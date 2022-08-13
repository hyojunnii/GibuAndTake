<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		
		
		#memberMgEvery{
			width:1200px;
   			margin:0 auto;
		}
		#headIn{
			border-style:solid;
			border-color:black;
			
   			width:100%;
   			height:200px;
		}
		
		#myPageTxt {
			color:#2e6c4a;
			margin-top:60px;
			margin-left:30px;
		}
		
		
		.headLine{
			border:solid 1px #acdac2;
			width:1200px;
			margin:0 auto;
			margin-top:10px;
			
		}
		
		#shortTitle{
			margin-left:650px;
			margin-top:100px;
		}
	
		#naviIn{
			margin-top:-585px;
			width:200px;
   			height:550px;
   			margin-right:200px;
		}
		
		
		
		
   .card{
        width: 267px;
        height: 363px;
        border: 1px solid #83DDAD;
        margin-left:270px;
        border-radius: 10px;
        background-color: #DAFFEB;
        margin-top:70px;
        
    }
    
     .card2{
        width: 267px;
        height: 363px;
        border: 1px solid #83DDAD;
        margin-left:300px;
        border-radius: 10px;
        background-color: #DAFFEB;
        margin-top:-365px;
        
    }
    #img{
        height: 50%;
    } 
    
    #img2{
        height: 50%;
    }
    .card div p{
        margin-top: 10px;
        font-size: 20px;
        font-weight: 700;
    }
    .card div pre{
        margin-top: 5px;
        font-size: 15px;
        font-weight: 700;
        text-align: center;
    }
		
	
    .campaignPercent{
        color: #64D498;
        margin-left: 20px;
        font-weight: 500;
        font-size: 25px;
        margin-top: 60px;
       
        
    }
    .capaignPeople{
        margin-left:30px;
        margin-top: 15px;
        font-size: 20px;
        font-weight: 600;
    }
		
		#gogibu{
			font-size:20px;
			padding-left:50px;
			color:white;
		}
		#middleLin{
			border:solid 1px #acdac2;
			width:800px;
			margin-top:150px;
		
		}
		
		#log{
			font-weight: bold;
			margin-left: 270px;
		}
		
		#footIn{
			margin-top:1200px;
			
   			width:100%;
   			height:200px;
		}
</style>
</head>
<body>	
		
		<div id="headIn"><!-- include header --></div>
		<div id="memberMgEvery">
		<h1 id="myPageTxt">기업 마이페이지</h1>
		<div class="headLine">
			
		</div>
		
		<div id = "memShortOuter">
		<h1 id="shortTitle" style="">캠페인 완료 목록</h1>
	
            <div class="card">
        <a href="" class="cardLink">
             <div id="img">
                   <img src="../../resources/img/gibuman.png" width = 100% height =100% alt="">
             </div>
             <div>
                 <p align="center" style="margin-top:20px">캠페인명</p>
                 <pre>기업이름</pre>
               
                 <span class="campaignPercent" style="font-size:50px">100%</span>
                 <span class="capaignPeople">500명</span>
             </div>
         	</a>  
         	
             <div class="card2">
        	<a href="" class="cardLink2">
             <div id="img2">
                   <img src="../../resources/img/gibuman.png" width = 100% height =100% alt="">
             </div>
             <div>
                 <p align="center" style="margin-top:20px">캠페인명</p>
                 <pre>기업이름</pre>
                
                 <span class="campaignPercent" style="font-size:50px" >100%</span>
                 <span class="capaignPeople">500명</span>
             </div>
         </a>
				<br>
				</div>
		</div>
			
			
			
			</div>	
			
		<div id="naviIn"><%@ include file="/views/mypageNav/mypageNavi.jsp" %></div>
		</div>
	
		<div id="footIn"><%@ include file="/views/common/footer.jsp" %></div>
		
		
</body>
</html>