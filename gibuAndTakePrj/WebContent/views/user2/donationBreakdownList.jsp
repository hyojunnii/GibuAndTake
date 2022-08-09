<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>기부 내역 조회</title>
<style>

	#body {
		margin: 20px auto;
		border-collapse: collapse;
		width: 300px;
	}
	#body th {
		border-bottom: 3px solid #8bdcb1;
		padding: 10px;
	}

	#body td {
		border-bottom: 1px solid;
		padding: 10 10 10 20;
	}

	#body th, #body td {
		padding: 5px;
	}

	#body td:first-child{
		border-right: 1px solid;
		width: 40%;
		font-weight: 900;
	}

	#body tbody:last-child{
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

	#certificate, #receipt {
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
		<table id="body">
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
					<td><input id="certificate" type="button" value="출력" data-bs-toggle="modal" data-bs-target="#certificatePrint"></button></td>
				</tr>
				<tr>
					<td>기부금영수증</td>
					<td><input id="receipt" type="button" value="출력" oncanplay="location.href='';"></button></td>
				</tr>
			</tbody>
			</thead>
		</table>
	</form>
		
	<hr>
	
	<%@include file="/views/common/footer.jsp" %>
	
	<!-- The Modal -->
	<div class="modal" id="certificatePrint">
		<div class="modal-dialog">
			<div class="modal-content">
		
				<!-- Modal Header -->
				<div class="modal-header">
					<h3 class="modal-title">기부 증서 출력하기</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
			
				<!-- Modal body -->
				<div class="modal-body">
					
					<div id="pwdFormOuter">
						<form action="" method="post">
							<input type="hidden" name="memberId" value="">
							<table id="modal-table">
								<tr>
									<td>기부자번호:</td>
									<td>R123457</td>
								</tr>
								<tr>
									<td>기부자명:</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>기부단체:</td>
									<td></td>
								</tr>
								<tr>
									<td>기부분야:</td>
									<td></td>
								</tr>
								<tr>
									<td>총기부금액:</td>
									<td></td>
								</tr>
								<tr>
									<td>기부일자:</td>
									<td></td>
								</tr>
							</table>
							<div id="modal-text-outer">
								<div id="modal-text">위 사람은 사랑과 봉사, 섬김과 나눔의 정신을 가지고<br>
								어려운 이웃들의 복지 증진과 사회 통합을 위해 노력하며<br>
								기부 앤 테이크를 통해 기부하였음을 증명합니다.</div>
								<div id="modal-date">2022. 08. 05</div>
								<div id="modal-sign">기부 앤 테이크 대표</div>
							</div>
							<div>
								<input type="button" value="출력하기" onclick="return checkPwd();">
							</div>

						</form>
					</div>
					
				</div>
			
			</div>
		</div>
	</div>
	  

</body>
</html>