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

    .btn-area{
        width: 1200px;
        text-align: center;
        margin-top: 30px;
        margin-bottom: 50px;
    }

    .btn-area a {
        text-decoration: none;
        border: none;
        color: #2e6c4a;
        font-size: 20px;
        font-weight: bolder;
        border-radius: 50px;
        background-color: #d8eee2;
        padding: 15px;
    }

    .img{
        display: flex;
        justify-content: space-evenly;
    }

    .text {
        font-size: 20px;
        text-align: left;
        line-height: 120px;
        color: #2e6c4a;
    }

    h2 {
        background-color: #d8eee2;
        text-align: center;
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
        <h2>1 기부하기</h2>
        <div id="img-area">
            <div class="img">
                <img src="../../resources/img/testImg01.png" alt="기부 방법 이미지">
                <div class="text">
                1. 기부하고 싶은 프로젝트를 선택한다. <br>
                2. 기부하기를 누른다. <br>
                3. 기부하고 싶은 액수를 결제한다. <br>
                4. 마이페이지에서 기부 내역과 영수증을 확인한다.
                </div>
            </div>

            <div class="btn-area">
                <a href="">기부하러 가기</a>
            </div>

            <h2>2 펀딩하기</h2>
            <div class="img">
                <img src="../../resources/img/testImg01.png" alt="펀딩 방법 이미지">
                <div class="text">
                1. 펀딩에 참여하고 싶은 프로젝트를 선택한다. <br>
                2. 펀딩할 물품을 고르고 결제한다. <br>
                3. 마이페이지에서 나의 펀딩 내역을 확인한다. <br>
                </div>
            </div>

            <div class="btn-area">
                <a href="">펀딩하러 가기</a>
            </div>

            <h2> 3 캠페인 참여하기</h2>
            <div class="img">
                <img src="../../resources/img/testImg01.png" alt="캠페인 참여 방법 이미지">
                <div class="text">
                1. 참여하고 싶은 캠페인을 선택한다. <br>
                2. 각 캠페인의 인증 방법을 읽는다. <br>
                3. 인증하기를 눌러서 인증을 남긴다. <br>
                4. 마이페이지에서 캠페인 참여 내역을 확인한다.
                </div>
            </div>

            <div class="btn-area">
                <a href="">캠페인 참여하러 가기</a>
            </div> 
        </div>

    </div>

	<%@include file="/views/common/footer.jsp" %>
</body>
</html>