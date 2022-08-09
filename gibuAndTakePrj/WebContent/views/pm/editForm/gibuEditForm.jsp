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

    </style>
    <!-- 여기까지 -->
  </head>
  <body>
    <div id="pm-header">
      <h1><a>기부 프로젝트 수정</a></h1>
    </div>
    <div id="pm-form-outer">
      <form action="">
        <!-- name 안채움 -->
        <table id="pm-table">
          <tr>
            <td class="form-subtitle" >카테고리*</td>
            <td colspan="4">
              <select name="" class="form-select form-content" id="inputGroupSelect01" required>
                <option disabled="disabled" selected>기본값</option>
              </select>
            </td>
          </tr>
          <tr>
            <td class="form-subtitle">단체명*</td>
            <td colspan="4"><input name="" type="text" class="form-control form-content" placeholder="단체명을 입력하세요." required readonly /></td>
          </tr>
          <tr>
            <td class="form-subtitle">프로젝트 제목*</td>
            <td colspan="4">
              <input name="" type="text" class="form-control form-content" placeholder="프로젝트의 제목을 입력하세요." required readonly />
            </td>
          </tr>
          <tr>
            <td class="form-subtitle">모금 기간*</td>
            <td class="form-content-sub">모금 종료일</td>
            <td class="form-content-date" colspan="3"><input name="" type="date" class="form-control form-content" required readonly /></td>
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
            <td colspan="5" class="sub-title">기부금 사용계획</td>
          </tr>
          <tr>
            <td class="form-subtitle">사업 대상*</td>
            <td colspan="4"><input name="" type="text" class="form-control form-content" placeholder="사업 대상을 입력하세요." required /></td>
          </tr>
          <tr>
            <td class="form-subtitle">사업 기간*</td>
            <td class="form-content-sub">사업 시작일</td>
            <td class="form-content-date">
              <input name="" type="date" class="form-control form-content" required />
            </td>
            <td class="form-content-sub">사업 종료일</td>
            <td class="form-content-date"><input name="" type="date" class="form-control form-content" required /></td>
          </tr>
          <tr>
            <td class="form-subtitle">목표 금액*</td>
            <td colspan="4">
              <input name="" type="text" class="form-control form-content" placeholder="목표 금액을 입력하세요." required readonly />
            </td>
          </tr>
          <table id="pm-table2">
            <tr>
              <td class="form-subtitle form-subtitle2">사업 세부 사항*</td>
              <td>
                <select name="" class="form-select form-content" id="inputGroupSelect01" required>
                  <option selected>분류</option>
                  <option value="">사업비</option>
                  <option value="">인건비</option>
                  <option value="">운영비</option>
                  <option value="">행사홍보비</option>
                </select>
              </td>
              <td><input name="" type="text" class="form-control form-content" placeholder="사용 내용" required /></td>
              <td>
                <input name="" type="text" class="form-control form-content" placeholder="사용 금액" required />
              </td>
            </tr>
          </table>
        </table>
        <input type="button" onclick="addRow()" class="button add-button" value="추가" />
        <input type="button" onclick="deleteRow()" class="button" value="삭제" />

        <div id="form-notice">
          <span class="form-notice-title">유의사항</span>
          <p class="form-notice-content">
            - 참여자들이 프로젝트에 대한 자세한 정보를 확인할 수 있도록 작성해주세요. <br />
            - 카테고리, 단체명, 제목, 모금기간, 목표금액은 수정이 불가능합니다. <br />
            - 모금이 시작된 경우 프로젝트 삭제가 불가능합니다. <br />
            - (주)기부 앤 테이크는 프로젝트에 대한 책임을 지지 않습니다. <br />
          </p>
        </div>

        <div class="form-checkbox">
          <label class="form-check-label" for="flexCheckDefault">유의사항을 모두 확인하였습니다.</label>
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required />
        </div>

        <input type="submit" id="submit-btn" value="수정하기" />
      </form>
    </div>

    <script>
      function addRow() {
        const table = document.getElementById("pm-table2");

        const newRow = table.insertRow();

        const newCell1 = newRow.insertCell(0);
        const newCell2 = newRow.insertCell(1);
        const newCell3 = newRow.insertCell(2);
        const newCell4 = newRow.insertCell(3);

        newCell1.innerHTML = '<td class="form-subtitle form-subtitle2"></td>';
        newCell2.innerHTML =
          '<td><select class="form-select form-content" id="inputGroupSelect01"><option selected>분류</option><option value="1">사업비</option><option value="2">기타</option><option value="3">장애인</option></select></td>';
        newCell3.innerHTML = '<td colspan="2"><input type="text" class="form-control form-content" placeholder="사용 내용" /></td>';
        newCell4.innerHTML = '<td><input type="text" class="form-control form-content" placeholder="사용 금액" /></td>';
      }

      function deleteRow() {
        const table = document.getElementById("pm-table2");
        if (table.rows.length < 1) return;
        table.deleteRow(table.rows.length - 1);
      }
    </script>
  </body>
</html>