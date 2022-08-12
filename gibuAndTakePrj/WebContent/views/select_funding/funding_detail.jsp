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
    	border-radius: 10px;
    }

    #funding_detail_container_div{
        width: 100%;
        margin: 0 auto;
    }

    .funding_btn_container{ 
        font-size: 35px;
        text-decoration: none;
        color: black;
    }
    .funding_btn_cover{
        width: 40%;
        margin: 30px auto;
        background-color: #b3e0c9;
        border-radius: 10px;
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
    #title_table{
    width: 100%;
}

#outer{
	width: 1200px;
	margin: 0 auto;
	
}

#funding_cover{
	width: 80%;
	border-radius: 10px;
	}
</style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
	<div id="outer">
    <div id="funding_detail_container">
        <table id="title_table">
            <tr>
                <td width="20%"></td>
                <td colspan="3" width="60%"><h1>여기는 펀딩 이름</h1></td>
                <td width="20%"><button hidden>수정하기</button></td>
            </tr>
        </table>
        <p class="comName">By 기업 이름</p>
        <img src="../resources/img/sample.png" alt="첫번째 이미지사진">
    <div id="funding_detail_container_div">
        <p>
            까닭이요, 패, 그리고 봅니다. 나의 노새, 딴은 피어나듯이 그리워 까닭입니다. 위에 속의 한 까닭입니다. 않은 하나에 무성할 쓸쓸함과 하늘에는 어머님, 위에 하나에 버리었습니다. 마리아 했던 다하지 헤일 사랑과 풀이 별 속의 듯합니다. 속의 시인의 차 밤이 내 라이너 옥 언덕 이제 있습니다. 별빛이 마디씩 차 어머님, 이름과, 별 북간도에 계십니다. 별이 새워 아이들의 어머니, 하늘에는 잠, 계십니다. 우는 별빛이 무성할 별 가득 겨울이 남은 어머니, 봅니다.

            멀리 가을로 지나고 어머니, 못 있습니다. 어머니, 하나에 밤을 소녀들의 어머니 그러나 까닭입니다. 별이 다하지 무성할 어머님, 강아지, 하나에 위에 있습니다. 내 무엇인지 잔디가 봅니다. 내 벌써 다 헤는 그리고 자랑처럼 거외다. 이런 시인의 프랑시스 밤이 쓸쓸함과 이네들은 별들을 않은 어머니 봅니다. 헤는 라이너 계집애들의 가을 새겨지는 까닭입니다. 이름과, 이 언덕 언덕 이제 봅니다. 새겨지는 없이 이름과, 파란 버리었습니다. 언덕 다 같이 하나에 애기 비둘기, 가을로 동경과 까닭입니다.

            이국 가을로 새워 하나에 겨울이 했던 어머님, 프랑시스 버리었습니다. 별에도 같이 강아지, 다 토끼, 아이들의 옥 거외다. 어머니 이런 이름을 까닭입니다. 청춘이 멀리 하늘에는 애기 토끼, 별 봅니다. 그러나 이런 아침이 아이들의 새겨지는 동경과 거외다. 이름자 하나에 이제 언덕 프랑시스 하나에 거외다. 슬퍼하는 가을 까닭이요, 된 이네들은 하나에 있습니다. 덮어 하나에 어머님, 시인의 겨울이 다 그러나 버리었습니다. 까닭이요, 아침이 못 시와 봄이 부끄러운 자랑처럼 있습니다. 마리아 쉬이 불러 불러 봅니다. 말 같이 애기 프랑시스 잔디가 나는 지나가는 듯합니다.

            이런 딴은 하나에 듯합니다. 많은 무덤 하늘에는 버리었습니다. 하나에 때 애기 벌써 이런 이런 가을로 새워 지나고 까닭입니다. 내 파란 그리고 우는 덮어 무엇인지 노루, 있습니다. 무덤 슬퍼하는 오면 잔디가 부끄러운 어머니, 가난한 않은 봅니다. 하나의 이름과, 파란 계집애들의 쓸쓸함과 이름자를 이제 듯합니다. 말 어머님, 당신은 소녀들의 멀듯이, 언덕 토끼, 하나에 아름다운 있습니다. 이름자를 까닭이요, 밤을 아무 하나 피어나듯이 봅니다. 오면 부끄러운 나의 멀리 많은 계십니다. 애기 별 벌레는 아이들의 우는 노새, 봅니다.

            나는 했던 써 봅니다. 가득 다 무엇인지 다 까닭입니다. 피어나듯이 내 속의 어머님, 새겨지는 내 책상을 까닭입니다. 없이 말 언덕 별 이름과, 위에도 버리었습니다. 부끄러운 어머님, 아스라히 어머니, 벌써 못 별 것은 된 버리었습니다. 쉬이 아침이 경, 별에도 나의 봄이 파란 옥 오면 버리었습니다. 우는 무엇인지 당신은 별에도 까닭입니다. 아직 가난한 이웃 듯합니다. 소학교 쉬이 하나에 봅니다. 아무 밤을 소녀들의 거외다. 별 비둘기, 흙으로 부끄러운 많은 버리었습니다.

            가득 이름과, 멀리 걱정도 옥 가난한 까닭입니다. 부끄러운 써 풀이 어머님, 많은 이름과, 오면 까닭이요, 까닭입니다. 밤이 마디씩 토끼, 이름자 소녀들의 계십니다. 말 강아지, 위에 오면 애기 보고, 있습니다. 별빛이 불러 계절이 이름과, 봅니다. 벌레는 그리고 부끄러운 잔디가 이름과, 별들을 위에 어머니 별 거외다. 별 아이들의 애기 경, 듯합니다. 경, 하나에 것은 지나고 오는 소녀들의 버리었습니다. 계절이 부끄러운 가득 라이너 흙으로 잠, 별 계십니다.

            강아지, 노루, 오는 이름과, 계십니다. 우는 프랑시스 그러나 하늘에는 된 벌써 소학교 거외다. 그리고 동경과 애기 지나고 이웃 거외다. 딴은 아직 언덕 무성할 청춘이 까닭입니다. 쉬이 아스라히 계절이 별이 멀리 아침이 까닭입니다. 어머니 파란 아무 아이들의 가을 어머님, 이런 아침이 추억과 봅니다. 때 옥 이름과, 오는 애기 있습니다. 풀이 된 무성할 묻힌 이국 아스라히 거외다. 내 별 별이 멀리 겨울이 언덕 된 별 거외다. 북간도에 밤을 지나가는 별을 이름자 옥 토끼, 잔디가 어머니, 듯합니다. 벌레는 써 부끄러운 버리었습니다.

            동경과 별에도 까닭이요, 어머니, 까닭입니다. 이런 그러나 우는 잔디가 지나가는 새겨지는 있습니다. 계절이 노새, 덮어 있습니다. 내린 무성할 언덕 토끼, 이름을 잠, 이국 벌레는 계십니다. 이름자 가난한 계집애들의 있습니다. 프랑시스 벌레는 걱정도 덮어 어머님, 쉬이 오면 있습니다. 이름과, 별들을 덮어 까닭입니다. 헤일 소학교 잔디가 별이 풀이 이름과, 별빛이 봅니다. 하나에 동경과 강아지, 어머님, 계십니다. 지나고 같이 이국 나의 속의 이름과, 어머니, 무성할 계십니다. 잔디가 아무 사람들의 지나가는 않은 밤을 이름과 불러 버리었습니다.

            하나에 내린 걱정도 헤는 버리었습니다. 않은 그리고 토끼, 겨울이 별이 별 보고, 이름과 헤일 계십니다. 아스라히 비둘기, 말 우는 이 북간도에 거외다. 어머니 잠, 내 위에 묻힌 시와 듯합니다. 이름과, 별 하나에 계절이 시인의 별에도 하나에 이름과, 나는 계십니다. 청춘이 잔디가 멀리 계집애들의 못 흙으로 버리었습니다. 이름과 했던 프랑시스 듯합니다. 계절이 별이 봄이 프랑시스 별 이름과, 거외다. 위에도 남은 내 별 별 까닭입니다.

            언덕 나는 이름을 어머니, 어머니, 이런 까닭이요, 있습니다. 지나가는 속의 나의 별 경, 멀리 차 말 봅니다. 내 시와 어머니, 아름다운 써 나의 이름과, 어머님, 남은 듯합니다. 헤는 하나에 나는 비둘기, 하늘에는 있습니다. 어머니 릴케 봄이 어머님, 없이 불러 때 차 마리아 있습니다. 하나에 이네들은 한 잔디가 내일 별 까닭입니다. 별빛이 했던 것은 쉬이 어머니, 별 내 있습니다. 아침이 이름과, 덮어 별 나의 별에도 벌써 듯합니다. 무엇인지 부끄러운 다하지 까닭이요, 내 벌써 나의 한 했던 봅니다. 많은 아직 하나에 이웃 이름자를 소학교 멀리 별 별 있습니다. 것은 무덤 써 옥 위에 하나의 봅니다.

            새겨지는 그리고 새워 부끄러운 듯합니다. 멀리 이 부끄러운 까닭이요, 같이 별 청춘이 봅니다. 별 별빛이 계집애들의 그리고 듯합니다. 소학교 때 청춘이 지나가는 까닭이요, 봅니다. 사랑과 잔디가 아스라히 거외다. 별 새겨지는 라이너 것은 자랑처럼 사람들의 그리워 봅니다. 못 북간도에 하나에 애기 아스라히 까닭입니다. 내 무성할 걱정도 거외다. 아스라히 가을로 봄이 위에도 불러 별에도 벌써 같이 거외다. 이런 토끼, 슬퍼하는 계십니다.

            별들을 둘 노루, 북간도에 이제 아직 헤일 하나에 별 있습니다. 않은 어머님, 가슴속에 내린 너무나 차 남은 하나에 까닭입니다. 한 지나가는 둘 아스라히 나는 않은 하늘에는 강아지, 위에 거외다. 파란 토끼, 프랑시스 내 위에 그리고 속의 계집애들의 버리었습니다. 이름자 걱정도 이 있습니다. 나는 다 다 나의 잔디가 가득 멀리 시인의 별에도 거외다. 된 까닭이요, 별 그리고 덮어 거외다. 노루, 별들을 이제 위에 마디씩 나는 어머니, 아스라히 딴은 있습니다. 이네들은 프랑시스 속의 피어나듯이 무덤 듯합니다. 별들을 이름과, 하나에 프랑시스 속의 듯합니다.

            마리아 무덤 아이들의 오는 별빛이 써 가난한 아름다운 까닭입니다. 풀이 것은 이름과, 이름자 멀듯이, 나는 나의 가을 우는 까닭입니다. 벌써 이제 시인의 언덕 보고, 소학교 말 하나에 까닭입니다. 별 것은 다 버리었습니다. 다 흙으로 그러나 소녀들의 아름다운 아무 이국 못 있습니다. 별 토끼, 무덤 딴은 마리아 봅니다. 때 보고, 지나가는 경, 잠, 하늘에는 써 위에 까닭입니다. 지나고 보고, 별 다 나는 이름자를 까닭입니다. 밤을 시와 이런 불러 있습니다.

            아무 아름다운 벌레는 덮어 사람들의 했던 계십니다. 어머님, 가을로 새겨지는 패, 애기 무성할 경, 하나에 있습니다. 이국 보고, 그리워 거외다. 그리워 별들을 이름과, 사랑과 봅니다. 가을 사람들의 내린 멀리 이름을 된 말 하나에 둘 봅니다. 나는 책상을 덮어 벌써 풀이 것은 당신은 비둘기, 지나고 계십니다. 까닭이요, 나는 소학교 걱정도 멀리 어머님, 밤이 별 있습니다. 남은 소학교 별을 이름과 별 버리었습니다. 된 아무 별들을 이웃 하나에 나는 동경과 사랑과 거외다. 마리아 슬퍼하는 이름과 우는 이름을 까닭입니다.

            무덤 비둘기, 지나고 있습니다. 나의 위에도 패, 아스라히 옥 풀이 나는 밤을 거외다. 무덤 까닭이요, 불러 이름을 다하지 그리워 나는 있습니다. 아이들의 별 나의 그리워 아직 어머니, 않은 옥 까닭입니다. 않은 내 계집애들의 무성할 나의 옥 차 듯합니다. 가을 풀이 별빛이 북간도에 소학교 가을로 없이 써 별에도 있습니다. 이름과, 시와 토끼, 잔디가 경, 까닭입니다. 내일 않은 패, 풀이 다 밤이 버리었습니다. 소학교 피어나듯이 다 청춘이 하늘에는 속의 까닭입니다. 계절이 한 위에 별 속의 너무나 계십니다.
        </p>
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

        <div id="funding_cover">
            <table class="btn_table">
                <tr>
                    <td width="50%">
                        <p id="funding_item_title">
                            상품이름 공간
                        </p>
                    </td>
                    <td width="50%">
                        <p id="total_money">
                            659,600원
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <select name="funding_item_basket" id="funding_basket">
                            <option value="리워드 선택하기">리워드 선택하기</option>
                            <option value="값 넣기">값 넣기</option>
                        </select>
                    </td>
                    <td>
                        <p id="plan_money">
                            4,000,000원 목표
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="funding_btn_cover">
                            <a href=""  class="funding_btn_container">
                                <div>
                                    펀딩 참여하기
                                </div>
                            </a>
                        </div>
                    </td>
                </tr>
            </table>


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
        </div>

        
        
    </div>
</div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>