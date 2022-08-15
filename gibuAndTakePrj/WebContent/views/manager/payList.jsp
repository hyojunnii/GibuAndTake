<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제내역관리</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style>
	#title {
       	background-color: #8bdcb1;
        width: 1890px;
        text-align: left;
        font-weight: bold;
        font-size: 36px;
        padding: 30px 0px 30px 135px;
    }
    
    #name{
    	color: #15462b;
		text-align: center;
    	font-size: 25px;
    	font-weight: bold;
        padding-bottom: 40px;
    }
    
    #category1{
    	width: 100px;
    	height: 40px;
    	border-radius: 15px;
    	margin-left: 300px;
    	border: 1px solid #2e6c4a;
    }
    
    #category2{
    	width: 100px;
    	height: 40px;
    	border-radius: 15px;
    	margin-left: 20px;
    	border: 1px solid #2e6c4a;
    }
    
    .search {
	  position: relative;
	  width: 250px;
      border-radius: 10px;
	  float: right;
	  margin-right: 300px;
	}
	
	#search {
	  width: 100%;
	  border: 1px solid #2e6c4a;
	  border-radius: 10px;
	  padding: 10px 12px;
	  font-size: 14px;
	}
	
	#icon {
	  position : absolute;
	  width: 17px;
	  top: 10px;
	  right: 12px;
	  margin: 0;
	}
    
    #outer{
        border: 1px solid #2e6c4a;
        color: black;
        width: 60%;
        margin: 0 auto;
        padding-bottom: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        text-align: center;
        flex-direction: column;
    }

    #table-main{
        border: 1px solid white;
        width: 100%;
        margin-top: 10px;
        line-height: 2.5em;
    }

    #table-main>tbody tr:hover{
        cursor: pointer;
    }
    
    #head{
    	font-weight: bold;
    }
    
    #body1:hover{
    	background-color: #93e1b7
    }
    
    #body2:hover{
    	background-color: #93e1b7
    }
    
    #body3:hover{
    	background-color: #93e1b7
    }
    
    #body4:hover{
    	background-color: #93e1b7
    }
    
    #body5:hover{
    	background-color: #93e1b7
    }
    
    #btn{
    	margin-top: 110px;
    	text-align: center;
    }
    
    #a:hover{
    	cursor: pointer;
    }
    
    #b:hover{
    	cursor: pointer;
    }
    
    #c:hover{
    	cursor: pointer;
    }
    
    #a{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }
    
    #b{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }
    
    #c{
    	width: 40px;
    	height: 40px;
    	border: 1px solid #2e6c4a;
    	color: #2e6c4a;
        font-weight: bold;
    }

    
    .input{
    	background-color: white;
    	color: green;
    	margin-left: 130px;
    	margin-top: 30px;
    	font-weight: bold;
    	border: 0px;
    }
    
    .input:hover{
    	cursor: pointer;
    }
    
    #click1{
    	margin-left: 130px;
    }
    
    #click2{
    	margin-left: 130px;
    }
    
    #last{
    	padding: 375px;
    }
</style>
</head>
<body>
 	<%@include file="/views/common/header.jsp" %>
    <div id="title">관리자</div>
    
	 <div style="border: 1px solid #72d09e; float: left; width: 20%; height:750px; padding:10px;">
		
		<form action="/gibuAndTakePrj/manager/list" method="get">
			<input class="input" type="submit" value="활동내역관리">
		</form>
		
		<form action="/gibuAndTakePrj/manager/pay" method="get">
			<input class="input" class="input" type="submit" value="결제내역관리">
		</form>
		
		<form action="/gibuAndTakePrj/manager/sanction" method="get">
			<input id="click1" class="input" type="submit" value="사용자 제재">
		</form>
		
		<form action="/gibuAndTakePrj/approve/list" method="get">
			<input id="click2" class="input" type="submit" value="승인목록">
		</form>
	 </div>
	 
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:750px; padding:50px 0px 0px 0px;">
			
			<div id="name">결제 내역 관리</div>
		
				<td>
                 <select id="category1">
                 	 <option value="1">전체기간</option>
                     <option value="10">1월</option>
                     <option value="20">2월</option>
                     <option value="30">3월</option>
                     <option value="40">4월</option>
                     <option value="50">5월</option>
                     <option value="60">6월</option>
                     <option value="70">7월</option>
                     <option value="80">8월</option>
                     <option value="90">9월</option>
                     <option value="100">10월</option>
                     <option value="110">11월</option>
                     <option value="120">12월</option>
                 </select>
             </td>
	    	<td>
                 <select id="category2">
                 	 <option value="1">전체내역</option>
                 </select>
             </td>
	    		
	    		<div class="search">
				   <input id="search" type="text" placeholder="검색어 입력">
				   <img id="icon" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
				</div>
            <br><br>
			
			<div id="outer">		
	        <table id="table-main">
	            <thead id="head">
	                <tr>
	                    <td>결제날짜</td>
	                    <td>결제번호</td>
	                    <td>결제방법</td>
	                    <td>결제금액</td>
	                </tr>
	            </thead>
	            
	            <tbody>        
                    <tr id="body1">
                        <td>2022/08/05</td>
                        <td>R102345F9</td>
                        <td>신용카드</td>
                        <td>50,000원</td>
                    </tr>
                    <tr id="body2">
                        <td>2022/08/04</td>
                        <td>R102345F8</td>
                        <td>신용카드</td>
                        <td>70,000원</td>
                    </tr>
                    <tr id="body3">
                        <td>2022/08/03</td>
                        <td>R102345F7</td>
                        <td>신용카드</td>
                        <td>50,000원</td>
                    </tr>
                    <tr id="body4">
                        <td>2022/08/02</td>
                        <td>R102345F2</td>
                        <td>신용카드</td>
                        <td>50,000원</td>
                    </tr>
                    <tr id="body5">
                        <td>2022/08/01</td>
                        <td>R102345F1</td>
                        <td>신용카드</td>
                        <td>50,000원</td>
                    </tr>
            	</tbody>            
        </table>
    	</div>
	
	<div id="btn">
	    	<a id="a">&nbsp&nbsp<&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp1&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp2&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp3&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp4&nbsp&nbsp</a>
	        <a id="b">&nbsp&nbsp5&nbsp&nbsp</a>
	        <a id="c">&nbsp&nbsp>&nbsp&nbsp</a>
	    </div>
    
   		<%-- <div id="page-area">
				<%if(currentPage != 1){%>
					<a class="btn btn-sm btn-primary" href="/semi/board/list?p=<%=currentPage-1%>"> &lt; </a>
				<%} %>
				<% for(int i = startPage; i <= endPage; ++i) {%>
					<%if(i == currentPage) {%>
						<a class="btn btn-sm btn-primary"><%=i%></a>
					<%}else{ %>
						<a class="btn btn-sm btn-primary" href="<%=contextPath%>/board/list?p=<%=i%>"><%=i%></a>
					<%} %>
				<%} %>
				
				<%if(currentPage != maxPage){%>
					<a class="btn btn-sm btn-primary" href="/semi/board/list?p=<%=currentPage+1%>"> &gt; </a>
				<%} %>
			</div> --%>
	
	
	</div>
    	<div id="last"></div>
       <%@include file="/views/common/footer.jsp" %>
       
       
</body>
</html>
