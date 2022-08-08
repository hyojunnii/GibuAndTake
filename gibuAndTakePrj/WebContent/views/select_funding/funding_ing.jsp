<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
        box-sizing: border-box;
    }
    #group_catelist ul{
        margin: 0 10%;
        margin-top: 20px;
        height: 80px;
        background-color: #8bdcb1;
    }
    
    #group_catelist ul li{
        list-style: none;
        float: left;
        width: 12.5%;
        height:100%;
        text-align: center;
    }
    
    #group_catelist ul li a span{
        font-size: 20px;
        line-height: 50px;
    }
    /* #group_catelist ul li a img{
        margin-top: 5%;
        width: 50px;
        height: 50px;
        object-fit: cover;
    } */
    
    
    .container{
        margin: 0 10%;
        margin-top: 30px;
        border: 1px solid black;
        height: 1340px;
    }
    .container>p {
        font-weight: 800;
        font-size: 30px;
    }
    
    .card:hover{
        text-decoration: none;
    }
    
    .card{
        float: left;
        width: 267px;
        height: 363px;
        border: 1px solid black;
        margin: 30px 0 30px 30px;
    }
    
    .card div{
        height: 50%;
        border: 1px solid black;
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
    
    progress{
        width: 90%;
        margin-left: 5%;
        margin-right: 5%;
        height: 10px;
        -webkit-appearance: none;
    }
    progress::-webkit-progress-bar{
        background-color: #8bdcb1;
        border: 1px solid black;
    }
    progress::-webkit-progress-value{
        background-color: red;
    }
    .i_date{
        color: red;
        margin-right: 10%;
        font-weight: 500;
        display: block;
        text-align: right;
        margin-top: 5%;
    }
    .i_prog_percent{
        color: red;
        margin-left: 5%;
        font-weight: 500;
        font-size: 30px;
        margin-top: 5px;
    }
    .i_total_money{
        margin-right: 5%;
        float: right;
        margin-top: 5%;
        font-size: 20px;
        font-weight: 600;
    }
    .card img{
        width: 100%;
        height: 100%;
    }
</style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
    <%@ include file="funding_header.jsp" %>

    <div id="group_catelist">
        <ul>
            <li>

                <a href="/gibuAndTakePrj/view/funding">
                    <br>
                    <span>전체보기</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>일자리 창출</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>공정 무역</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>친환경</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>기부</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>작은가게</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>미디어</span>
                </a>
            </li>

            <li>
                <a href="">
                    <br>
                    <span>창작자</span>
                </a>
            </li>

        </ul>
    </div>


    <div class="container">
      
        <p>진행중인 펀딩 ??건</p>
         
        
         <a href="/gibuAndTakePrj/view/funding_detail" class="card">
             <div>
                 <img src="../resources/img/sample.png" alt="">
             </div>
             <div>
                 <p align="center">펀딩 제목</p>
                 <pre>기업이름</pre>
                 <span class="i_date">14일 남음</span>
                 <span class="i_prog_percent">45%</span>
                 <span class="i_total_money">1,000,000,000원</span>
             </div>
         </a>

                  
        

        
    </div>
    
    <%@ include file="../common/footer.jsp" %>
</body>
</html>