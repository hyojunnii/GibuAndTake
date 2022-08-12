<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 명세서 목록</title>
<style>
	#body {
        width: 1200px;
		height: 1000px;
        margin: 0 auto;
    }

	#category{
		width: 100%;
		height: 100px;
		background-color: #8bdcb1;
		text-align: left;
		font-size: 25px;
		font-weight: 700;
		line-height: 100px;
		margin: 0 0 0 0;
        margin-top: 20px;
	}
	
	#category a {
		margin: 0 0 0 20px;
	}

	table {
		width: 700px;
		color: #15462b;
		border-top: 3px solid #8bdcb1;
		border-bottom: 3px solid #8bdcb1;
		border-collapse: collapse;
		margin: auto;
		margin-bottom: 10px;
	}
	
	th {
		text-align: left;
		width: 20%;
	}

	th, td {
		border-bottom: 1px solid black;
		padding: 5px;
		padding-left: 20px;
	}

	#first th, #second th {
		border-right: 1px solid black;
		width: 20%;
	}

	#second tbody td:last-child {
		text-align: right;
		padding-right: 10px;
	}

	#outer {
		width: 700px;
		display: flex;
		margin: 0 auto;
		margin-top: 10px;
		flex-wrap: wrap;
		box-sizing: border-box;
		justify-content: space-between;
	}

	#title {
		font-size: 30px;
		display: inline;
		width: 550px;
		font-weight: bold;
		padding: 5px;
	}

	input {
		background-color: #8bdcb1;
		border: #8bdcb1;
		border-radius: 30px;
		color: #2e6c4a;
		font-weight: bolder;
		font-size: 20px;
		width: 130px;
		height: 40px;
		box-sizing: border-box;
	}

	#do_t {
		margin-left: 10px;
		font-size: 20px;
	}

	#do_ex, #do_tt, #do_tt2 {
		line-height: 35px;
		color: #2e6c4a;
	}

	hr {
		margin: 50px;
		border: 1px dashed #8bdcb1;
	}


</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>

	<div id="body">

		<div id="category">
			<a>기업 명세서 목록</a>
		</div>
		
		<form action="/gibuAndTakePrj/member/stmtRe" method="get">
			<table id="first">
				<div id="outer">
					<div id="title">진행한 기부 프로그램 이름</div>
					<input type="submit" value="수정">
				
					<div id="do_t">기부금 집행 내역 |</div>
					<div id="do_ex">기부금이 어떻게 사용되었는지 등록해주세요.</div>
					<div id="do_tt">최종 수정 일시 |</div>
					<div id="do_tt2">2022-08-05 13:30</div>
				</div>
				<tr>
					<th>집행기간</th>
					<td colspan="2">2022년 7월 5일~2022년 8월 5일</td>
				</tr>
				<tr>
					<th>총 모금 금액</th>
					<td colspan="2">3,000,000원(목표 금액 3,000,000원)</td>
				</tr>
				<tr>
					<th>사업 분야</th>
					<td colspan="2">취약계층 아동·청소년</td>
				</tr>
			</table>
			<table id="second">
				<thead>
					<tr>
						<th>총 집행 금액</th>
						<td colspan="2">3,000,000원(목표 금액 3,000,000원)</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>사업비</th>
						<td>프로그램 도서구매 3권(각1만)*20</td>
						<td>600,000 원</td>
					</tr>
					<tr>
						<th>사업비</th>
						<td>프로그램 강사비 12주</td>
						<td>1,200,000 원</td>
					</tr>
					<tr>
						<th>사업비</th>
						<td>필기구 및 간식 20*3천원*12주</td>
						<td>720,000 원</td>
					</tr>
				</tbody>
			</table>
		</form>

		<hr>

	</div>
	
	<%@include file="/views/common/footer.jsp" %>
</body>
</html>