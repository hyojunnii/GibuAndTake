<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩 승인 목록</title>
<style>
	#title {
        width: 200px;
        margin-left: 120px;
        text-align: center;
        font-weight: bold;
        font-size: 36px;
        padding: 30px;
    }
    
    #name{
		text-align: center;
    	font-size: 25px;
    	font-weight: bold;
        padding-bottom: 50px;
    }
    
    #outer{
        border: 1px solid black;
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
    	font-weight: bold;
    }
    
    
    #btn{
    	margin-top: 120px;
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
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }
    
    #b{
    	width: 40px;
    	height: 40px;
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }
    
    #c{
    	width: 40px;
    	height: 40px;
    	border: 1px solid black;
    	background-color: white;
        font-weight: bold;
    }

    
    
    .input{
    	background-color: white;
    	color: green;
    	margin-left: 140px;
    	margin-top: 30px;
    	font-weight: bold;
    	border-radius: 15px;
    	border: 0px;
    }
    
    .input:hover{
    	cursor: pointer;
    }
    
    #campaign{
    	margin-left: 135px;
    }
    
    #approve{
    	background-color: #b3e0c9;
    	margin-left: 1150px;
    	margin-top: 5px;
    	border: 2px solid;
    	border-radius: 15px;
    	font-weight: bold;
    	padding: 0px 20px 0px 20px;
    }
    
    #approve:hover{
        cursor: pointer;
    }
    
    #last{
    	padding: 300px;
    }
</style>
</head>
<body>
 	<%@include file="/views/common/header.jsp" %>
    <div id="title">승인목록</div>
    
	 <div style="border: 1px solid #72d09e; float: left; width: 20%; height:600px; padding:10px;">
		<form action="/gibuAndTakePrj/approve/list" method="get">
			<input class="input" type="submit" value="기부승인">
		</form>
		
		<form action="/gibuAndTakePrj/approve/fundinglist" method="get">
			<input class="input" type="submit" value="펀딩승인">
		</form>
		
		<form action="/gibuAndTakePrj/approve/campaignlist" method="get">
			<input id="campaign" class="input" type="submit" value="캠페인승인">
		</form>
	 </div>
	 <div style="border: 1px solid #72d09e; float: left; width: 80%; height:600px; padding:50px 0px 0px 0px;">
		
		<div id="name">펀딩 승인 목록</div>
		
		<div id="outer">		
        <table id="table-main">
            <thead id="head">
                <tr>
                    <td>NO</td>
                    <td>진행현황</td>
                    <td>신청자</td>
                    <td>승인일</td>
                </tr>
            </thead>
            
            <tbody>        
                    <tr>
                        <td>2</td>
                        <td>미완료</td>
                        <td>기업</td>
                        <td>22/08/02</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>완료</td>
                        <td>기업</td>
                        <td>22/08/01</td>
                    </tr>
            </tbody>            
        </table>
    	</div>
    	
 		<form action="/gibuAndTakePrj/approve/funding" method="get">
			<input id="approve"  type="submit" value="승인">
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
       
      
</body>
</html>