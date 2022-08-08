<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개:기부앤테이크?</title>
<style>
    #account {
        margin: 30px auto;
        width: 800px;
        height: 200px;
        border: 2px solid #8bdcb1;
        border-radius: 15px;
    }

    #account a {
        text-align: right;
    }

    #category {
        margin: 50px;
    }

    #text {
        width: 300px;
        float: right;
        box-sizing: border-box;
        text-align: center;
        margin-top: 25px;
    }

    #text a {
        font-weight: bolder;
        font-size: 25px;
    }

    .big, .small{
        margin: auto;
        width: 750px;
    }

    .big {
        font-size: 20px;
        font-weight: bold;
    }

    .small {
        font-size: 20px;
    }

    img{
        margin-top: 20px;
        margin-left: 20px;
        width: 50%;
        height: 80%;
        border-radius: 15px;
    }
</style>
</head>
<body>

    <%@include file="/views/common/header.jsp" %>
    <%@include file="/views/introduce/introduceHead.jsp" %>

    <div id="category">
        <a>'기부 앤 테이크'는 어떤 곳인가요?</a>
    </div>

    <div id="account">
        <img src="../../resources/img/testImg01.png" alt="">
        <div id="text">
            <a>기부 참여 실천</a>
            <p>다양한 사람들의 기부를 격려하고<br>
            기부에 대한 진입 장벽을 낮춰<br>
            기부에 관한 인식을 바꾸기 위한<br>
            선한 영향력을 추구하는 사이트<br>
            </p>
        </div>
    </div>
    
    <div class="big">
        기부에 대한 인식 변화
    </div>
    <div class="small">
        줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~
    </div>
    <div class="big">
        기부에 대한 인식 변화
    </div>
    <div class="small">
        줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~
    </div>
    <div class="big">
        기부에 대한 인식 변화
    </div>
    <div class="small">
        줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~줄글로 된 설명~~~~~~~~~~~~~~
    </div>

    <img src="" alt="">

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>