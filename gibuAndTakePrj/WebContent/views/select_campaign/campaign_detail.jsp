<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body{
    width: 1200px;
}
        #campaign_detail_container{
        border: 1px solid blue;
        margin: 0 10%;
        text-align: center;
    }
    
    #campaign_detail_container> img{
        width: 60%;
        /* 이미지 높이 */
        height: 400px;
    }

    #campaign_detail_container_div{
        width: 60%;
        margin: 0 auto;
    }

    .campaign_btn_container{ 
        font-size: 50px;
        text-decoration: none;
        color: black;
    }
    .campaign_btn_cover{
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
    #campaign_item_total{
        margin: 0% 80% 0% 5%;
    }

    
    #table_cover{
        width: 60%;
        margin: 0 20%;
    }
    .campaign_table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

    }
    .campaign_table thead th {
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        color: #369;
        border-bottom: 3px solid #036;
    }
    .campaign_table tbody th {
        width: 150px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
        background: #f3f6f7;
        text-align: center;
    }
    .campaign_table td {
        width: 350px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
    }

    #campaign_cover {
        background-color: #8bdcb1;
        width: 100%;
        height: 400px;
        margin: 30px auto;
    }

    /* 상품이름 */
    #campaign_item_title{
        font-weight: 700;
        font-size:  40px;
        margin-left: 5%;
        }
    /* 리워드 선택하기 */
    #campaign_basket{
        margin: 0% 5% 0% 5%;
    }
    
    .btn_table{
        width: 100%;
        height: 100%;
    }

    select{
        width: 100%;
    }

    /*tab css*/
.tab{float:left; width:100%; height:290px; box-sizing: border-box;}
.tabnav{font-size:0; width:100%; border:1px solid #ddd; box-sizing: border-box;}
.tabnav li{display: inline-block;  height:46px; text-align:center; border-right:1px solid #ddd;}
.tabnav li a:before{content:""; position:absolute; left:0; top:0px; width:100%; height:3px; }
.tabnav li a.active:before{background:red;}
.tabnav li a.active{border-bottom:1px solid #fff;}
.tabnav li a{ position:relative; display:block; background: #f8f8f8; color: #000; padding:0 30px; line-height:46px; text-decoration:none; font-size:16px;}
.tabnav li a:hover,
.tabnav li a.active{background:#fff; color:#7ea21e; }
.tabcontent{padding: 20px; border:1px solid #ddd; border-top:none;}

#comments_table{
    width: 100%;
    border: 1px solid black;
}
#comments_img{
    width: 100%;
    height: 200px;
}
.ingCnt{
    font-weight: 700;
    margin-top: 30px;
    font-size: 30px;
}
#title_table{
    width: 100%;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <%@ include file="../common/header.jsp" %>

    <div id="campaign_detail_container">
        <br>
        <img src="../resources/img/sample.png" alt="첫번째 이미지사진">
    <div id="campaign_detail_container_div">
        <table id="title_table">
            <tr>
                <td width="20%"></td>
                <td colspan="3" width="60%"><h1>여기는 캠페인 이름</h1></td>
                <td width="20%"><button hidden>수정하기</button></td>
            </tr>
        </table>
        <p class="comName">By 기업 이름</p>
        <p class="ingCnt"> ???명 행동중</p>
        <div class="campaign_btn_cover">
            <a href=""  class="campaign_btn_container">
                <div>
                    행동하기
                </div>
            </a>
        </div>

        <div class="tabs"> <!-- A -->
            <ul class="tabnav">
              <li><a href="#introduce">캠페인 소개</a></li>
              <li><a href="#comments">행동보드</a></li>  
            </ul>
            <div class="tabcontent">

                <div id="introduce">
                <h3>캠페인 소개</h3>
                    <h2>사업대상</h2>
                        <div id="table_cover">
                            <table class="campaign_table">
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
                        <h2>사업대상</h2>
                        <div id="table_cover">
                            <table class="campaign_table">
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
                        <h2>사업대상</h2>
                        <div id="table_cover">
                            <table class="campaign_table">
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
                        <h2>사업대상</h2>
                        <div id="table_cover">
                            <table class="campaign_table">
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
                        <h2>사업대상</h2>
                        <div id="table_cover">
                            <table class="campaign_table">
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
                </div>
             
              <div id="comments">
                <table id="comments_table">
                    <tr>
                        <td colspan="3" id="comments_name">이름or닉네임</td>
                        <td id="comments_date" align="right">2022-08-05 19:36</td>
                        <td><button value="신고">신고</button></td>
                    </tr>
                    <tr>
                        <td colspan="5" id="comments_content">진짜 좋은 경험이였습니다!</td>
                    </tr>
                    <tr>
                        <td colspan="5" ><img src="../resources/img/sample.png" alt="" id="comments_img"></td>
                    </tr>
                </table>
              </div>

              <div id="comments">
                <table id="comments_table">
                    <tr>
                        <td colspan="3" id="comments_name">이름or닉네임</td>
                        <td id="comments_date" align="right">2022-08-05 19:36</td>
                        <td><button value="신고">신고</button></td>
                    </tr>
                    <tr>
                        <td colspan="5" id="comments_content">진짜 좋은 경험이였습니다!</td>
                    </tr>
                    <tr>
                        <td colspan="5" ><img src="../resources/img/sample.png" alt="" id="comments_img"></td>
                    </tr>
                </table>
              </div>

              <div id="comments">
                <table id="comments_table">
                    <tr>
                        <td colspan="3" id="comments_name">이름or닉네임</td>
                        <td id="comments_date" align="right">2022-08-05 19:36</td>
                        <td><button value="신고">신고</button></td>
                    </tr>
                    <tr>
                        <td colspan="5" id="comments_content">진짜 좋은 경험이였습니다!</td>
                    </tr>
                    <tr>
                        <td colspan="5" ><img src="../resources/img/sample.png" alt="" id="comments_img"></td>
                    </tr>
                </table>
              </div>

            </div>
          </div>


        
            
        
        </div>
       
    </div>

            <!-- <p id="campaign_item_title" align="left">
                상품이름 공간
            </p>
            <div>
                <select name="campaign_item_basket" id="campaign_basket">
                    <option value="리워드 선택하기">리워드 선택하기</option>
                    <option value="값 넣기">값 넣기</option>
                </select>
            </div>
            <p name="campaign_item_total">????원</p>
            <p id="total_money">
                659,600원
            </p>
            <p id="plan_money">
                4,000,000원 목표
            </p>
            <div class="campaign_btn_cover">
                <a href=""  class="campaign_btn_container">
                    <div>
                        기부하기
                    </div>
                </a>
            </div> -->
            
            <script>
                $(function(){
                $('.tabcontent > div').hide();
                $('.tabnav a').click(function () {
                    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
                    $('.tabnav a').removeClass('active');
                    $(this).addClass('active');
                    return false;
                }).filter(':eq(0)').click();
                });
                </script>




    <br clear="both">
    <%@ include file="../common/footer.jsp" %>
</body>
</html>