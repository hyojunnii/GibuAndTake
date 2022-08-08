<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부 내역 조회</title>
<style>

	table {
		margin: 20px auto;
		border-collapse: collapse;
		width: 300px;
	}
	th {
		border-bottom: 3px solid #8bdcb1;
		padding: 10px;
	}

	td {
		border-bottom: 1px solid;
		padding: 10 10 10 20;
	}

	td:first-child{
		border-right: 1px solid;
		width: 40%;
		font-weight: 900;
	}

	tbody:last-child{
		border-bottom: 3px solid #8bdcb1;
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
	}
	#category a {
		margin: 0 0 0 20px;
	}

	button {
		background-color: #8bdcb1;
		border: #8bdcb1;
		border-radius: 15px;
		color: white;
		font-weight: bolder;
		font-size: 15px;
		width: 70%;
	}

	hr {
		margin: 50px;
		border: 1px dashed #8bdcb1;
	}

</style>
</head>
<body>

	<%@ include file="/views/common/header.jsp" %>

	<div id="category">
		<a>기부 내역 조회</a>
	</div>

	<form action="">
		<table>
			<thead>
				<tr>
					<th colspan="2" style=" font-size: 20px;">참여한 프로젝트 이름</th>
				</tr>
				<tr>
					<th colspan="2">기부 내역</th>
				</tr>
			<tbody>
				<tr>
					<td>신청번호</td>
					<td>R123456789</td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td>신용카드</td>
				</tr>
				<tr>
					<td>기부금액</td>
					<td>30,000 원</td>
				</tr>
				<tr>
					<td>기부일자</td>
					<td>2022-08-07</td>
				</tr>
				<tr>
					<td>기부증서</td>
					<td><button data-bs-toggle="modal" data-bs-target="#certificatePrint">출력</button></td>
				</tr>
				<tr>
					<td>기부금영수증</td>
					<td><button oncanplay="location.href='';">출력</button></td>
				</tr>
			</tbody>
			</thead>
		</table>
	</form>
		
	<hr>
	

	
	
</body>
</html>