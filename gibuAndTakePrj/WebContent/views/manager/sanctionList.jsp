<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 제재</title>
<style>
	#title {
       	background-color: #8bdcb1;
        width: 1905px;
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
        width: 95%;
        margin-top: 10px;
        line-height: 2.5em;
    }

    #table-main>tbody tr:hover{
        cursor: pointer;
    }
    
    #head{
    	color: #2e6c4a;
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

    
    .input{
    	background-color: white;
    	color: green;
    	margin-left: 130px;
    	margin-top: 30px;
    	font-weight: bold;
    	border-radius: 15px;
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
    
    #btn{
    	margin-top: 130px;
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
    
    #sanction{
    	background-color: #b3e0c9;
    	border: 2px solid #acdac2;
    	margin-left: 1140px;
    	margin-top: 5px;
    	margin-right: 10px;
    	border-radius: 15px;
    	font-weight: bold;
    	padding: 0px 20px 0px 20px;
    }
    
    .float{
    	float: left;
    }
    
    #last{
    	padding: 325px;
    }
</style>
</head>
<body>
 	<%@include file="/views/common/header.jsp" %>
    <div id="title">관리자</div>
    
	 <div style="border: 1px solid #72d09e; float: left; width: 20%; height:650px; padding:10px;">
		
		<form action="/gibuAndTakePrj/manager/list" method="get">
			<input class="input" type="submit" value="활동내역관리">
		</form>
		
		<form action="/gibuAndTakePrj/manager/pay" method="get">
			<input class="input" class="input" type="submit" value="결제내역관리">
		</form>
		
		<form action="/gibuAndTakePrj/manager/sanction" method="get">
			<input id="click1" class="input" type="submit" value="사용자 제재">
		</form>
		
		<form action="/gibuAndTakePrj/manager/approvelist" method="get">
			<input id="click2" class="input" type="submit" value="승인목록">
		</form>
	 </div>
	 
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:650px; padding:50px 0px 0px 0px;">
	
		<div id="name">사용자 제재</div>
	
		<div id="outer">
        <table id="table-main">
            <thead id="head">
                <tr>
                    <td>NO</td>
                    <td>제목</td>
                    <td>작성자</td>
                    <td>조회수</td>
                    <td>작성일</td>
                </tr>
            </thead>
            
            <tbody>        
                    <tr id="body1">
                        <td>3</td>
                        <th>[공지]안내드립니다</th>
                        <td>관리자</td>
                        <td>5</td>
                        <td>22/08/02</td>
                    </tr>
                    <tr id="body2">
                        <td>2</td>
                        <th>[공지]안내드립니다</th>
                        <td>관리자</td>
                        <td>10</td>
                        <td>22/08/01</td>
                    </tr>
                    <tr id="body3">
                        <td>1</td>
                        <th>[공지]안내드립니다</th>
                        <td>관리자</td>
                        <td>30</td>
                        <td>22/08/01</td>
                    </tr>
            </tbody>            
        </table>
	    </div>
	    
	    <form action="/gibuAndTakePrj/manager/write" method="get">
				<input id="sanction" class="float"  type="submit" value="작성">			
		</form>
		
		
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
       
       <script>
    	$(function(){
    		$('#table-main>tbody>tr').click(function(){
    			const num = $(this).children().eq(0).text();
    			
    			location.href='/gibuAndTakePrj/manager/detail?num=' + num;
    		});
    	})
    </script>
       
</body>
</html>
