<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>

    <!-- 지울거 -->
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- 여기까지 -->

    <link rel="stylesheet" href="../../../resources/css/pmForm.css" type="text/css" />

    <!-- 지울거 -->
    <style>
      @import url("https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=IBM+Plex+Sans+KR&display=swap");

      body {
        width: 1200px;
        margin: 0 auto;
        margin-bottom: 10%; /*지울거*/
        font-family: "IBM Plex Sans KR", "IBM Plex Sans", sans-serif;
      }

      .form-subtitle {
        width: 10%;
      }
      .sub-title {
        padding-left: 5%;
      }
      .form-content-sub {
        width: 8%;
      }
    </style>
    <!-- 여기까지 -->
  </head>
  <body>
    <div id="pm-header">
      <h1><a>캠페인 프로젝트 신청</a></h1>
    </div>
    <div id="pm-form-outer">
      <form action="">
        <!-- name 안채움 -->
        <table id="pm-table">
          <tr>
            <td class="form-subtitle">카테고리*</td>
            <td colspan="4">
              <select name="" class="form-select form-content" id="inputGroupSelect01" required>
                <option selected>카테고리를 선택하세요.</option>
                <option value="1">아동/청소년</option>
                <option value="2">어르신</option>
                <option value="3">장애인</option>
              </select>
            </td>
          </tr>
          <tr>
            <td class="form-subtitle">진행자명*</td>
            <td colspan="4"><input name="" type="text" class="form-control form-content" placeholder="진행자명을 입력하세요." required /></td>
          </tr>
          <tr>
            <td class="form-subtitle">프로젝트 제목*</td>
            <td colspan="4"><input name="" type="text" class="form-control form-content" placeholder="프로젝트의 제목을 입력하세요." required /></td>
          </tr>
          <tr>
            <td class="form-subtitle">캠페인 기간*</td>
            <td class="form-content-sub">캠페인 종료일</td>
            <td class="form-content-date" colspan="3"><input name="" type="date" class="form-control form-content" required /></td>
          </tr>
          <tr>
            <td class="form-subtitle">프로젝트 소개*</td>
            <td colspan="4">
              <textarea
                name=""
                class="form-control form-content form-content-textarea"
                aria-label="With textarea"
                placeholder="진행하는 프로젝트에 대한 설명을 입력하세요."
                required
              ></textarea>
            </td>
          </tr>
          <tr id="file">
            <td class="form-subtitle">사진 첨부*</td>
            <td colspan="4">
              <input type="file" name="files" class="form-control form-content" accept="image/*" multiple />
            </td>
          </tr>
          <tr>
            <td class="form-subtitle">목표 인원*</td>
            <td colspan="4"><input name="" type="text" class="form-control form-content" placeholder="목표 인원을 입력하세요." required /></td>
          </tr>
        </table>

        <div id="form-notice">
          <span class="form-notice-title">유의사항</span>
          <p class="form-notice-content">
            - 참여자들이 프로젝트에 대한 자세한 정보를 확인할 수 있도록 작성해주세요. <br />
            - 신청한 프로젝트는 관리자의 승인 후 게시가 이루어집니다. <br />
            - 카테고리, 진행자명, 제목, 캠페인기간은 등록 후 수정이 불가능합니다. <br />
            - 캠페인이 시작되면 프로젝트 삭제가 불가능합니다. <br />
            - (주)기부 앤 테이크는 프로젝트에 대한 책임을 지지 않습니다. <br />
          </p>
        </div>

        <div class="form-checkbox">
          <label class="form-check-label" for="flexCheckDefault">유의사항을 모두 확인하였습니다.</label>
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required />
        </div>

        <input type="submit" id="submit-btn" value="신청하기" />
      </form>
    </div>
  </body>
</html>
