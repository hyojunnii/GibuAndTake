<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Gibu n Take</title>
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/free-icon-giving-5017478.png" />
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

    <style>
      #body {
        width: 1200px;
        margin: 0 auto;
      }

      .right {
        float: right;
      }

      .content-header {
        position: relative;
        width: 50%;
        top: 90px;
        right: -150px;
      }

      .donation-header {
        height: 300px;
      }

      .content-outer {
        height: 100%;
        background-color: #b3e0c9;
      }

      .content-img {
        height: 70%;
        width: 30%;
        position: relative;
        top: -80px;
        right: -680px;
        border-radius: 25px;
      }

      .content-img img {
        width: 100%;
        height: 100%;
        border-radius: 25px;
        border: 2px solid #ececec;
      }

      #funding {
        margin: 50px 10%;
      }

      #funding-header {
        margin-bottom: 20px;
        display: flex;
        justify-content: space-between;
      }

      #funding-header h5 {
        font-weight: 600;
        color: #15462b;
      }

      #funding-header a {
        text-decoration: none;
        background-color: #dee2e6;
        padding: 7px 10px 4px;
        border-radius: 15px;
        font-size: 13px;
        font-weight: 600;
      }

      #funding-header a:hover {
        color: #2e6c4a;
        background-color: #cfe6da;
      }

      #funding-content {
        display: flex;
        justify-content: space-evenly;
      }

      .f-content {
        border: none;
      }

      .f-content img {
        border-radius: 10px;
      }

      .f-content-info {
        display: flex;
      }

      .progress-title {
        font-size: 12px;
        font-weight: 600;
        padding-bottom: 2px;
      }

      .progress-money {
        font-size: 11px;
        float: right;
        position: relative;
        top: -7px;
      }

      #info-outer {
        background-color: #8bdcb1;
        padding: 20px 10%;
        height: 170px;
        display: flex;
        align-items: center;
      }

      #info-img {
        width: 20%;
        margin-right: -20px;
      }

      #info-img img {
        width: 70%;
        height: 100%;
      }

      #info-content h3 {
        font-weight: 700;
        color: #123c25;
      }

      #info-content span {
        font-size: 15px;
      }

      #info-content2 {
        margin-left: 17%;
        font-size: 18px;
      }
      #info-content2 table {
        border-collapse: separate;
        border-spacing: 15px 15px;
      }

      .t-title {
        font-weight: 600;
        color: #123c25;
      }

      #campaign h5 {
        margin-top: 40px;
        color: #123c25;
        font-size: 20px;
      }

      #campaign-content {
        margin: 25px 15% 40px;
        display: flex;
        justify-content: space-around;
      }

      #campaign-content-info {
        display: flex;
        justify-content: space-between;
        margin: 0 15px 0 10px;
      }
    </style>
  </head>
  <body>
    <%@ include file="/views/common/header.jsp" %>

    <div id="body">
      <div id="donation">
        <div id="carouselExampleCaptions" class="carousel carousel-dark slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button
              type="button"
              data-bs-target="#carouselExampleCaptions"
              data-bs-slide-to="0"
              class="active"
              aria-current="true"
              aria-label="Slide 1"
            ></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner donation-header">
            <div class="carousel-item active content-outer">
              <div class="content-header">
                <span>기부 카테고리</span>
                <h3>23글자정도까지만 제대로 보입니다 (여기까지)</h3>
                <br />
                <h6>기부앤테이크 단체명</h6>
              </div>
              <div class="content-img">
                <img src="resources/img/testImg01.png" class="right img-fluid" alt="..." />
              </div>
            </div>
            <div class="carousel-item content-outer">
              <div class="content-header">
                <span>기부 카테고리</span>
                <h3>23글자 안넘을거같긴한데</h3>
                <br />
                <h6>단체명명명</h6>
              </div>
              <div class="content-img">
                <img src="resources/img/testImg01.png" class="right img-fluid" alt="..." />
              </div>
            </div>
            <div class="carousel-item content-outer">
              <div class="content-header">
                <span>기부 카테고리</span>
                <h3>줄 넘어가게 바꿀수있으신분은 바꿔주세욘</h3>
                <br />
                <h6>화면 넘어가는거 때문에 그냥 포기했습니다 flex가 안먹혀여</h6>
              </div>
              <div class="content-img">
                <img src="resources/img/testImg01.png" class="right img-fluid" alt="..." />
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <div id="funding">
        <div id="funding-header">
          <h5>펀딩인데 좀 있어보이는 말이 뭐가 있을까요</h5>
          <a href="">더보기 &gt;</a>
        </div>
        <div id="funding-content">
          <div class="card f-content" style="width: 20%">
            <img src="resources/img/testImg01.png" class="card-img-top" />
            <div class="card-body">
              <div class="card-title progress-title">펀딩제목제목제목제목제목제목제목제목</div>
              <div class="progress-money">1,100,000원</div>
              <div class="progress" style="height: 5px; width: 58%">
                <div class="progress-bar bg-success" role="progressbar" style="width: 40%; height: 5px"></div>
              </div>
            </div>
          </div>
          <div class="card f-content" style="width: 20%">
            <img src="resources/img/testImg01.png" class="card-img-top" />
            <div class="card-body">
              <div class="card-title progress-title">여기도 하나라도 줄 다르면 이상해져요</div>
              <div class="progress-money">1,100,000원</div>
              <div class="progress" style="height: 5px; width: 58%">
                <div class="progress-bar bg-success" role="progressbar" style="width: 40%; height: 5px"></div>
              </div>
            </div>
          </div>
          <div class="card f-content" style="width: 20%">
            <img src="resources/img/testImg01.png" class="card-img-top" />
            <div class="card-body">
              <div class="card-title progress-title">근데 제목을 짧지도 길지도 않게 쓰면 될거같아요</div>
              <div class="progress-money">1,100,000원</div>
              <div class="progress" style="height: 5px; width: 58%">
                <div class="progress-bar bg-success" role="progressbar" style="width: 40%; height: 5px"></div>
              </div>
            </div>
          </div>
          <div class="card f-content" style="width: 20%">
            <img src="resources/img/testImg01.png" class="card-img-top" />
            <div class="card-body">
              <div class="card-title progress-title">제목 길이 대충 정해두던가..</div>
              <div class="progress-money">1,100,000원</div>
              <div class="progress" style="height: 5px; width: 58%">
                <div class="progress-bar bg-success" role="progressbar" style="width: 40%; height: 5px"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="info-outer">
        <div id="info-img">
          <img src="resources/img/free-icon-giving-5017478.png" class="img-fluid" />
        </div>
        <div id="info-content">
          <h3>오늘의 참여현황</h3>
          <p>오늘의 마음이 이만큼 모였어요</p>
          <span>2022.08.14</span>
        </div>
        <div id="info-content2">
          <table>
            <tr>
              <td class="t-title">기부참여</td>
              <td>10,000명</td>
              <td class="t-title">기부총액</td>
              <td>10,000,000원</td>
            </tr>
            <tr>
              <td class="t-title">펀딩참여</td>
              <td>10,000명</td>
              <td class="t-title">펀딩총액</td>
              <td>10,000,000원</td>
            </tr>
          </table>
        </div>
      </div>
      <div id="campaign">
        <h5 align="center">함께 행동해요 (?) 오늘의 행동 (?)</h5>
        <div id="campaign-content">
          <figure class="figure">
            <img src="resources/img/testImg01.png" class="figure-img img-fluid rounded" alt="..." />
            <div id="campaign-content-info">
              <figcaption class="figure-caption" style="color: #000000">캠페인제목입니다 여기도 마찬가지</figcaption>
              <figcaption class="figure-caption">진행자명</figcaption>
            </div>
          </figure>
          <figure class="figure">
            <img src="resources/img/testImg01.png" class="figure-img img-fluid rounded" alt="..." />
            <div id="campaign-content-info">
              <figcaption class="figure-caption" style="color: #000000">어떻게 할수있을거같기도한데 안하고싶어요</figcaption>
              <figcaption class="figure-caption">진행자명</figcaption>
            </div>
          </figure>
        </div>
      </div>
    </div>
    <%@ include file="/views/common/footer.jsp" %>
  </body>
</html>
