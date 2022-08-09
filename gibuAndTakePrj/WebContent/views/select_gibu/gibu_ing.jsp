<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
    box-sizing: border-box;
}
#group_catelist ul{
    margin: 0 10%;
    height: 100px;
    background-color: #8bdcb1;
}

#group_catelist ul li{
    list-style: none;
    float: left;
    width: 11.1%;
    height:100%;
    text-align: center;
}

#group_catelist ul li a span{
    font-size: 12px;
    line-height: 50px;
}
#group_catelist ul li a img{
    margin-top: 5%;
    width: 50px;
    height: 50px;
    object-fit: cover;
}


.container{
    margin: 0 10%;
    margin-top: 30px;
    border: 1px solid black;
    height: 1340px;
}
.container>p {
    font-weight: 800;
    font-size: 30px;
}

.card:hover{
    text-decoration: none;
}

.card{
    float: left;
    width: 267px;
    height: 363px;
    border: 1px solid black;
    margin: 30px 0 30px 30px;
}

.card div{
    height: 50%;
    border: 1px solid black;
}
.card div p{
    margin-top: 10px;
    font-size: 20px;
    font-weight: 700;
}
.card div pre{
    margin-top: 5px;
    font-size: 15px;
    font-weight: 700;
    text-align: center;
}

progress{
    width: 90%;
    margin-left: 5%;
    margin-right: 5%;
    height: 10px;
    -webkit-appearance: none;
}
progress::-webkit-progress-bar{
    background-color: #8bdcb1;
    border: 1px solid black;
}
progress::-webkit-progress-value{
    background-color: red;
}

.i_date{
        color: red;
        margin-right: 10%;
        font-weight: 500;
        display: block;
        text-align: right;
        margin-top: 5%;
    }
    .i_prog_percent{
        color: red;
        margin-left: 5%;
        font-weight: 500;
        font-size: 30px;
        margin-top: 5px;
    }
    .i_total_money{
        margin-right: 5%;
        float: right;
        margin-top: 5%;
        font-size: 20px;
        font-weight: 600;
    }
    .card img{
        width: 100%;
        height: 100%;
    }
</style>
</head>
<body>


    <%@ include file="../common/header.jsp" %>
	<%@ include file="gibu_header.jsp" %>
    <div id="group_catelist">
        <ul>
            <li>

                <a href="/gibuAndTakePrj/view/gibu">
                    <img src="../resources/img/select_icon/1all.png" alt="전체보기">
                    <br>
                    <span>전체보기</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/2kid.png" alt="아동 | 청소년">
                    <br>
                    <span>아동 | 청소년</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/3old.png" alt="어르신">
                    <br>
                    <span>어르신</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/4dis.png" alt="장애인">
                    <br>
                    <span>장애인</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/5multi.png" alt="다문화">
                    <br>
                    <span>다문화</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/6earth.png" alt="지구촌">
                    <br>
                    <span>지구촌</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/7woman.png" alt="가족 | 여성">
                    <br>
                    <span>가족 | 여성</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/8society.png" alt="시민사회">
                    <br>
                    <span>시민사회</span>
                </a>
            </li>

            <li>
                <a href="">
                    <img src="../resources/img/select_icon/9animal.png" alt="동물">
                    <br>
                    <span>동물</span>
                </a>
            </li>
        </ul>
    </div>

    <div class="container">
      
       <p>기부모금함 ??개</p>
        
       
        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>

        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a><a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a><a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a><a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a><a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a><a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>

        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>
        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>
        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>
      
        <a href="/gibuAndTakePrj/view/gibu_detail" class="card">
            <div>
                <img src="../resources/img/select_icon/1all.png" alt="">
            </div>
            <div>
                <p align="center">기부 제목</p>
                <pre>기업이름</pre>
                <progress id="i_progress" value="20" max="100"></progress>
                <span class="i_prog_percent">20%</span>
                <span class="i_total_money">1,000,000,000원</span>
            </div>
        </a>

    </div>

    <%@ include file="../common/footer.jsp" %>
</body>
</html>