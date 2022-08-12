<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개:기부앤테이크?</title>
<style>

    #body {
        width: 1200px;
        margin: 0 auto;
    }

    #category {
        margin: 50px;
    }

    #account {
        margin: 30px auto;
        width: 700px;
        height: 250px;
        border: 2px solid #8bdcb1;
        border-radius: 15px;
        display: flex;
    }

    #account a {
        text-align: right;
    }

    #text {
        width: 300px;
        float: right;
        text-align: center;
        margin: auto;
        margin-top: 50px;
    }

    #text a {
        color: #2E6C4A;
        font-weight: bolder;
        font-size: 25px;
    }

    .big, .small{
        margin: auto;
        width: 700px;
    }

    .big {
        color: #2e6c4a;
        font-size: 20px;
        font-weight: bold;
    }

    .small {
        font-size: 20px;
    }

    #img1{
        padding: 10px;
        width: 350px;
        border-radius: 20px;
        object-fit: cover;
    }

    #img2 {
        width: 800px;
        height: auto;
        display: block;
        margin: auto;
    }

    #what {
        background-color: #EBF5E0;
        color: #2e6c4a;
        font-weight: bold;
        border-radius: 15px;
    }

</style>
</head>
<body>

    <%@include file="/views/introduce/introduceHead.jsp" %>

    <div id="body">

        <div id="category">
            <a>'기부 앤 테이크'는 어떤 곳인가요?</a>
        </div>
    
        <div id="account">
           <div id="img-area">
                <img src="../../resources/img/do-not-use-this-image-g43f0f0b51_640.jpg" alt="" id="img1">
           </div>
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
    
        <img src="../../resources/img/history.png" alt="" id="img2">

    </div>

    <%@include file="/views/common/footer.jsp" %>
</body>
</html>