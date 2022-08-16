<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 명세서 수정</title>
<style>

	#nav{
		display: flex;
	}

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

	form {
		width: 1200px;
	}

    table {
		width: 700px;
		color: #15462b;
		border-top: 3px solid #8bdcb1;
		border-bottom: 3px solid #8bdcb1;
		border-collapse: collapse;
		margin: auto;
		margin-bottom: 5px;
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

	#do_t {
		margin-left: 10px;
		font-size: 20px;
	}

    #re-outer {
        width: 700px;
        margin: 0 auto;
		margin-top: 20px;
		margin-bottom: 20px;
        display: flex;
    }

	#re-outer input {
		background-color: #8bdcb1;
		border: #8bdcb1;
		border-radius: 30px;
		color: #2e6c4a;
		font-weight: bolder;
		font-size: 20px;
		width: 130px;
		height: 40px;
		box-sizing: border-box;
        margin: 0 auto;
	}

    #col-outer {
        display: flex;
        margin: auto;
		margin-top: 20px;
		padding-right: 20px;
        width: 700px;
        justify-content: right;
    }

    #col-p, #col-m {
        background-color: #8bdcb1;
        color: #2e6c4a;
        font-size: 20px;
        font-weight: bold;
        border-radius: 100%;
        width: 25px;
        height: 25px;
        margin: 5px;
        text-align: center;
        line-height: 25px;
    }

    #second tbody td {
        color: lightgray;
    }

	.total {
		color: #2e6c4a;
		font-weight: bold;
	}

	.input-col {
		display: flex;
		justify-content: space-between;
		border: none;
	}
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>

	<div id="body">
		<div id="category">
			<a>기업 명세서 수정</a>
		</div>
		<div id="nav">
			<div id="naviIn"><%@ include file="/views/mypageNav/mypageNavi.jsp" %></div>

			<form action="/gibuAndTakePrj/member/stmtList" method="get">
		
				<table id="first">
					<div id="outer">
						<div id="title">진행한 기부 프로그램 이름</div>
						<div id="do_t">기부금 집행 내역 수정하기</div>
					</div>
					<tr>
						<th>집행기간</th>
						<td colspan="2">2022년 7월 5일~2022년 8월 5일</td>
					</tr>
					<tr>
						<th>총 모금 금액</th>
						<td colspan="2"><span class="total">3,000,000원</span>(목표금액 3,000,000원)</td>
					</tr>
					<tr>
						<th>사업 분야</th>
						<td colspan="2">취약계층 아동·청소년</td>
					</tr>
				</table>
				<table id="second">
					<div id="col-outer">
						<div id="col-p">+</div>
						<div id="col-m">-</div>
					</div>
					<thead>
						<tr>
							<th>총 집행 금액</th>
							<td colspan="2"><span class="total">3,000,000원</span>(목표금액 3,000,000원)</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>사업비</th>
							<td colspan="2" class="input-col">
								<input type="text" size="40" placeholder=" 사용 내역을 등록해주세요.">
								<input type="text" placeholder=" 금액을 등록해주세요.">
							</td>
						</tr>
				</table>
				<div id="re-outer">
					<input type="submit" value="수정">
				</div>
			</form>


		</div>
	</div>

	<%@include file="/views/common/footer.jsp" %>

</body>
</html>