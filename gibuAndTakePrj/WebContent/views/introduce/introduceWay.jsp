<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
    #body {
        width: 1200px;
        margin: 0 auto;
    }

    #way {
        background-color: #EBF5E0;
        color: #2e6c4a;
        font-weight: bold;
        border-radius: 15px;
    }

    #img-area {
        text-align: center;
    }

    #img-area img {
        margin: 0 auto;
    }
    .text-area{
        width: 1200px;
        text-align: center;
        margin-top: 20px;
        margin-bottom: 50px;
    }

    .text-area a {
        border: none;
        color: #2e6c4a;
        font-size: 30px;
        font-weight: bolder;
        border-radius: 30px;
        background-color: #d8eee2;
        padding: 10px;
    }

</style>
</head>
<body>
	<%@include file="/views/introduce/introduceHead.jsp" %>

    <div id="body">

        <div id="category">
            <a>후원 결제 방법</a>
        </div>
        <!--
            이미지 다 3번 형식으로 바꿀 예정
        -->
        <div id="img-area">
            <img src="../../resources/img/1_기부방법.jpg" alt="기부 방법 이미지">   
            <div class="text-area">
                <a href="">기부하러 가기</a>
            </div>
            <img src="../../resources/img/2_펀딩방법.jpg" alt="">
            <div class="text-area">
                <a href="">펀딩하러 가기</a>
            </div>
            <img src="../../resources/img/3_캠페인방법.jpg" alt="">
            <div class="text-area">
                <a href="">캠페인 참여하러 가기</a>
            </div> 
        </div>

    </div>

	<%@include file="/views/common/footer.jsp" %>
</body>
</html>