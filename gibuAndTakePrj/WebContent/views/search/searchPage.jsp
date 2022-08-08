<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Document</title>

    <!-- 지울거 -->
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- 여기까지 -->

    <!-- 지울거 -->
    <style>
      @import url("https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=IBM+Plex+Sans+KR&display=swap");

      body {
        width: 1200px;
        margin: 0 auto;
        margin-bottom: 10%; /*지울거*/
        font-family: "IBM Plex Sans KR", "IBM Plex Sans", sans-serif;
      }

      #search {
        width: 100%;
        height: 100px;
        background-color: #8bdcb1;
        display: flex;
        align-items: center;
        justify-content: space-around;
        padding: 0 14%;
      }

      .search-category {
        width: 150px;
        margin-right: 25px;
        height: 40px;
      }

      .search-bar {
        height: 40px;
      }

      #search-icon {
        width: 40px;
        height: 40px;
        margin-left: 30px;
      }

      #category-search-outer {
        margin: 0 10%;
        padding: 20px 5% 20px;
        border-bottom: 3px solid #72d09e;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .category-search-title {
        width: 15%;
        position: relative;
        top: 4px;
      }

      .category-search-title h6 {
        font-weight: 600;
        color: #2e6c4a;
      }

      .category-search-subtitle {
        font-weight: 600;
        color: #2e6c4a;
        padding: 5px 6px 5px 20px;
      }

      .category-search-menu {
        width: 30%;
        display: flex;
      }

      .category-button {
        margin-left: 10%;
        height: 35px;
        background-color: #e3f3ec;
        border-radius: 10px;
        font-size: 15px;
        width: 120px;
      }

      #searched-content-header {
        margin: 1% 12%;
        display: flex;
        justify-content: space-between;
      }

      #searched-header-sort button {
        position: relative;
        top: -1px;
      }

      #searched-header-title {
        font-weight: 600;
        position: relative;
        top: 4px;
      }

      .contents {
        margin: 1% 10% 2%;
        background-color: #e3f3ec;
        height: 120px;
        display: flex;
        align-items: center;
        justify-content: space-between;
      }

      .content-info {
        display: flex;
        width: 70%;
      }
      .content-info2 {
        display: flex;
        width: 30%;
        justify-content: flex-end;
        align-items: center;
      }

      .content-info-title {
        margin: auto 2%;
        display: flex;
        flex-direction: column;
      }

      .content-info-title span {
        padding: 3px 0;
      }

      .content-info img {
        width: 130px;
        height: 90px;
        margin-left: 2%;
      }

      .content-info-state {
        color: #2e6c4a;
        font-weight: 600;
        margin-right: 12%;
        font-size: 15px;
      }

      .content-info-status {
        display: flex;
        flex-direction: column;
        margin-right: 8%;
      }

      .content-info-status span {
        padding: 2px 0;
        font-size: 15px;
      }
    </style>
  </head>
  <body>
    <div id="search">
      <select name="" class="form-select search-category" id="inputGroupSelect01" required>
        <option selected value="1">기부</option>
        <option value="2">펀딩</option>
        <option value="3">캠페인</option>
      </select>
      <input name="" type="text" class="form-control search-bar" placeholder="검색어를 입력하세요." />
      <div id="search-icon">아이콘</div>
    </div>
    <div id="category-search-outer">
      <div class="category-search-title"><h6>주제별 찾기</h6></div>
      <div class="category-search-menu">
        <span class="category-search-subtitle" id="">기부</span>
        <button class="category-button btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</button>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">어르신</a></li>
          <li><a class="dropdown-item" href="#">아동/청소년</a></li>
          <li><a class="dropdown-item" href="#">환경</a></li>
        </ul>
      </div>
      <div class="category-search-menu">
        <span class="category-search-subtitle" id="">펀딩</span>
        <button class="category-button btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</button>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">어르신</a></li>
          <li><a class="dropdown-item" href="#">아동/청소년</a></li>
          <li><a class="dropdown-item" href="#">환경</a></li>
        </ul>
      </div>
    </div>
    <div id="searched-content">
      <div id="searched-content-header">
        <div id="searched-header-title">
          <!-- <span>추천 목록</span> -->
          <span id="searched-num">검색 결과 n건</span>
        </div>
        <div id="searched-header-sort">
          <span><a>최신순</a> | <a>금액순</a></span>
          <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">전체</button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">진행중</a></li>
            <li><a class="dropdown-item" href="#">종료</a></li>
          </ul>
        </div>
      </div>
      <div id="searched-content-body">
        <div class="contents">
          <div class="content-info">
            <img src="../../resources/img/premium-icon-donation-3843326.png" />
            <div class="content-info-title">
              <span>제목입니다 제목입니다 제목입니다 제목입니다</span>
              <span>단체명</span>
            </div>
          </div>
          <div class="content-info2">
            <span class="content-info-state">진행중</span>
            <div class="content-info-status">
              <span>1,000,000원 모금</span>
              <span>1,000명 참여</span>
            </div>
          </div>
        </div>
        <div class="contents">
          <div class="content-info">
            <img src="../../resources/img/premium-icon-donation-3843326.png" />
            <div class="content-info-title">
              <span>제목입니다 제목입니다 제목입니다 제목입니다</span>
              <span>단체명</span>
            </div>
          </div>
          <div class="content-info2">
            <span class="content-info-state">진행중</span>
            <div class="content-info-status">
              <span>1,000,000원 모금</span>
              <span>1,000명 참여</span>
            </div>
          </div>
        </div>
        <div class="contents">
          <div class="content-info">
            <img src="../../resources/img/premium-icon-donation-3843326.png" />
            <div class="content-info-title">
              <span>제목입니다 제목입니다 제목입니다 제목입니다</span>
              <span>단체명</span>
            </div>
          </div>
          <div class="content-info2">
            <span class="content-info-state">진행중</span>
            <div class="content-info-status">
              <span>1,000,000원 모금</span>
              <span>1,000명 참여</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      $(document).ready(function () {
        var num = $(".contents").length;

        var countText = document.getElementById("searched-num");

        countText.innerHTML = "검색 결과 " + num + "건";
        $("#search-icon").click(function () {});
      });
    </script>
  </body>
</html>
