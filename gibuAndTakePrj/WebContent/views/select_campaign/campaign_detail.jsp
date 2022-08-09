<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        #funding_detail_container{
        border: 1px solid blue;
        margin: 0 10%;
        text-align: center;
    }
    
    #funding_detail_container img{
        width: 60%;
        /* 이미지 높이 */
        height: 400px;
    }

    #funding_detail_container_div{
        width: 60%;
        margin: 0 auto;
    }

    .funding_btn_container{ 
        font-size: 50px;
        text-decoration: none;
        color: black;
    }
    .funding_btn_cover{
        width: 40%;
        margin: 30px auto;
        background-color: ivory;
        border-radius: 112px;
        border: 1px solid black;
    }
   
    #total_money{
        font-weight: 600;
        font-size: 30px;
 
    }

    #plan_money{
        font-weight: 500;
        font-size: 20px;
        margin-top: 0;
        
    }
    #funding_item_total{
        margin: 0% 80% 0% 5%;
    }

    
    #table_cover{
        width: 60%;
        margin: 0 20%;
    }
    .funding_table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

    }
    .funding_table thead th {
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        color: #369;
        border-bottom: 3px solid #036;
    }
    .funding_table tbody th {
        width: 150px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
        background: #f3f6f7;
        text-align: center;
    }
    .funding_table td {
        width: 350px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
    }

    #funding_cover {
        background-color: #8bdcb1;
        width: 100%;
        height: 400px;
        margin: 30px auto;
    }

    /* 상품이름 */
    #funding_item_title{
        font-weight: 700;
        font-size:  40px;
        margin-left: 5%;
        }
    /* 리워드 선택하기 */
    #funding_basket{
        margin: 0% 5% 0% 5%;
    }
    
    .btn_table{
        width: 100%;
        height: 100%;
    }

    select{
        width: 100%;
    }
</style>

</head>
<body>
    <%@ include file="../common/header.jsp" %>
    <%@ include file="campaign_header.jsp" %>

    <div id="funding_detail_container">
        <h1>여기는 캠페인 제목 공간</h1>
        <p class="comName">By 기업 이름</p>
        <img src="../resources/img/sample.png" alt="첫번째 이미지사진">
    <div id="funding_detail_container_div">
      
            <h2>사업대상</h2>
        <div id="table_cover">
            <table class="funding_table">
                <tbody>
                <tr>
                    <th>기업이름</th>
                    <td>삼성</td>
                </tr>
                <tr>
                    <th>모금기간</th>
                    <td>2100년 8월 8일 ~ 2105년 8월 8일</td>
                </tr>
                <tr>
                    <th>사업대상</th>
                    <td>어르신</td>
                </tr>
                </tbody>
            </table>
        </div>

        
            <div class="funding_btn_cover">
                <a href=""  class="funding_btn_container">
                    <div>
                        행동하기
                    </div>
                </a>
            </div>
        
        </div>
        
    </div>

            <!-- <p id="funding_item_title" align="left">
                상품이름 공간
            </p>
            <div>
                <select name="funding_item_basket" id="funding_basket">
                    <option value="리워드 선택하기">리워드 선택하기</option>
                    <option value="값 넣기">값 넣기</option>
                </select>
            </div>
            <p name="funding_item_total">????원</p>
            <p id="total_money">
                659,600원
            </p>
            <p id="plan_money">
                4,000,000원 목표
            </p>
            <div class="funding_btn_cover">
                <a href=""  class="funding_btn_container">
                    <div>
                        기부하기
                    </div>
                </a>
            </div> -->
        








    <%@ include file="../common/footer.jsp" %>
</body>
</html>