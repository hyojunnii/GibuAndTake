<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부앤테이크</title>

<style>

    section>*{
        display: flex;
        flex-direction: column;
        align-items: center;
        box-sizing: border-box;
    }

    #pay_title{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 30px;
        margin-bottom: 30px;
    }

    .pay_div_title_mini{
        font-size: 20px;
    }

    .pay_div_title{
        font-size: 35px;
        margin-right: 10px;
    }

    #pay_body{
        width: 1162px;
    }

    .pay_border{
        border: 1px solid #5c5c5c6c;
        padding: 10px;
    }

    .donate_money{
        height: 53px;
        box-sizing: border-box;
        color: #14AE5C;
        font-size: 47px;
        text-align: right;
    }

    .donate_won{
        font-size: 35px;
    }

    .pay_select_name{
        font-size: 20px;
        
    }

    #pay_body_money{
        padding-top: 50px;
        padding-bottom: 50px;
    }

    #pay_body_money>*{
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    #pay_btn_div{
        margin-top: 40px;
        margin-bottom: 40px;
    }

    #pay_btn{
        width: 150px;
        height: 70px;
        font-size: 30px;
        text-align: center;
        border: 1px solid #5c5c5c;
        background-color: #E4F4D2;
        border-radius: 50px;
    }

    #pay_body_send{
        padding-top: 50px;
        padding-bottom: 50px;
        margin-top: 20px;
        display: flex;
        flex-direction: column;
    }

    #pay_send_addr>*>*>*{
        padding: 10px;
    }

</style>

</head>
<body>
<%@include file="/views/common/header.jsp" %>

    <section>
        <form action="">
            <div id="pay_title">
                <strong class="pay_div_title">펀딩 제목</strong>
                <span class="pay_div_title_mini">회사명</span>
            </div>
            
            <div id="pay_body">
                <div id="pay_body_title" class="pay_border">
                    <span class="pay_div_title_mini">펀딩내역</span>
                </div>
                <div id="pay_body_money" class="pay_border">
                    <span>
                        <span class="pay_div_title">리워드 명</span>
                        <span class="donate_money donate_won">10,000 원</span>
                    </span>
                </div>
                <div id="pay_body_send" class="pay_border">
                    <span class="pay_div_title_mini">배송지</span>
                    <table id="pay_send_addr">
                        <tr>
                            <td>이름</td>
                            <td><input type="text" name="" id=""></td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td><input type="text" name="" id=""></td>
                        </tr>
                        <tr>
                            <td>배송지</td>
                            <td><input type="text" name="" id="" style="width: 300px;"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <div id="pay_btn_div">
                <input type="button" value="결제하기" id="pay_btn">
            </div>

        </form>
    </section>


<%@include file="/views/common/footer.jsp" %>
</body>
</html>