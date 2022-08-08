<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부앤테이크</title>

<style>

    section{
        display: flex;
        justify-content: center;
    }


    *{
        box-sizing: border-box;
    }

    #review_card_wrap{
        width: 1164px;
        clear: both;
    }

    .review_card{
        float: left;
        position: relative;
        width: 364px;
        height: 522px;
        margin: 0 0 24px 24px;
        text-align: center;
        border: 1px solid #e6e6e6;
        display: flex;
        flex-direction: column;
    }



    .review_card_corp{
        display: inline-block;
        margin: 29px auto 0;
        padding: 1px 10px 0;
        background-color: #fff;
        font-size: 15px;
        line-height: 27px;
        color: #9CCC65;
    }

    .review_card_title{
        height: 60px;
        line-height: 30px;
        margin: 19px 21px 0;
        font-size: 20px;
    }

    .review_card_img{
        width: 320px;
        height: 240px;
    }

    .review_card_text{
        height: 69px;
        line-height: 23px;
        margin: 19px 21px 0;
        font-size: 15px;
        text-align: left;
        color: #828282;
    }

    .review_view_more{
        width: 100%;
        margin: 0 0 24px 24px;
        height: 35px;
    }

</style>

</head>
<body>
<%@include file="/views/common/header.jsp" %>

	<section>
        <div id="review_card_wrap">
            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <a href="" class="review_card">
                <span class="review_card_corp">기업이름</span>
                <strong class="review_card_title">후기 제목</strong>
                <img src="" alt="후기 썸네일" class="review_card_img">
                <p class="review_card_text">후기 내용 ...</p>
            </a>

            <input type="button" value="더보기" class="review_view_more">

        </div>

    </section>


<%@include file="/views/common/footer.jsp" %>
</body>
</html>