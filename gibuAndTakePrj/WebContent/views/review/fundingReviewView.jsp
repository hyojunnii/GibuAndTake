<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부앤테이크</title>

<style>
    *{
        box-sizing: border-box;
    }
    


    .review_detail_header{
        width: 100%;
        background-image: url();
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
        height: 376px;
    }

    .review_detail_header>*{
        color: white;
    }

    .review_header_title{
        font-size: 40px;
    }

    .review_header_corp{
        opacity: 0.6;
    }

    #review_body_content{
        width: 1164px;
        margin: 0 auto;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    #review_body_achieve{
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        flex-direction: column;
        border-top: 1px solid #e6e6e6;
        border-bottom: 1px solid #e6e6e6;
        height: 300px;
    }

    #review_achieve_total{
        font-size: 50px;
    }

    #review_achieve_goal{
        font-size: 35px;
    }

    #review_detail_footer{
        display: flex;
        justify-content: space-between;
    }

    #review_detail_footer_corp{
        display: flex;
        flex-direction: column;
    }

    #review_detail_footer_btn{
        display: flex;
        align-items: flex-end;
    }

    .review_detail_btn{
        height: 30px;
        background-color: #E4F4D2;
        border-color: #e6e6e6;
        border-radius: 15px;
        outline: none;
        box-shadow: none;
    }

    #review_detail_footer_corp_name{
        font-size: 32px;
    }
    
    #review_detail_footer_corp_intro{
        font-size: 18px;
    }
    
    .review_detail_footer_corp_date{
        font-size: 15px;
        color: #5c5c5c;
    }


</style>

</head>
<body>
<%@include file="/views/common/header.jsp" %>

    <section>
        <form action="" method="post">
        <div id="review_detail_wrap">
            <div class="review_detail_header">
                <strong class="review_header_title">후기제목</strong>
                <span class="review_header_corp">회사명</span>
            </div>
            <div id="review_body_content">
                <pre
                    >후기내용





<img id="imgTest" src="../../resources/img/free-icon-giving-5017478.png" alt="이미지 테스트">



후기내용</pre
                >
            </div>
            <div id="review_body_achieve">
                <strong id="review_achieve_total">3,959,000원</strong>
                <span id="review_achieve_goal">4,000,000원</span>
            </div>
            <div id="review_detail_footer">
                <div id="review_detail_footer_corp">
                    <span id="review_detail_footer_corp_name">기업이름</span>
                    <span id="review_detail_footer_corp_intro">기업소개</span>
                    <span class="review_detail_footer_corp_date">기부기간 : 2999. 01. 01. ~ 2999. 01. 01.</span>
                    <span class="review_detail_footer_corp_date">기부후기 : 2999. 01. 01.</span>
                </div>
                <div id="review_detail_footer_btn">
                    <input type="submit" value="수정하기" class="review_detail_btn">
                    <input type="submit" value="삭제하기" class="review_detail_btn"> 
                </div>
            </div>
        </div>
        </form>
    </section>



<%@include file="/views/common/footer.jsp" %>
</body>
</html>