<%@page import="com.gnt.common.ReplyVo"%>
<%@page import="java.util.List"%>
<%@page import="com.gnt.gibu.vo.GibuVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	GibuVo vo = (GibuVo)request.getAttribute("gibuvo");
	List<ReplyVo> list = (List<ReplyVo>)request.getAttribute("replyvo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .gibu_btn_container:hover{
        color: black ;
    }

    #gibu_detail_container{
        margin: 0 10%;
        text-align: center;
    }
    
    #gibu_detail_container img{
        width: 60%;
        /* 이미지 높이 */
        height: 400px;
        border-radius: 10px;
    }

    #gibu_detail_container_div{
        width: 100%;
        margin: 0 auto;
    }

    .gibu_btn_container{ 
        font-size: 50px;
        text-decoration: none;
        color: black;
    }
    .gibu_btn_cover{
        width: 40%;
        margin: 30px auto;
        background-color: #b3e0c9;
        border-radius: 10px;
    }
   
    #total_money{
        font-weight: 600;
        font-size: 30px;
        margin-bottom: 0;
    }

    #plan_money{
        font-weight: 500;
        font-size: 20px;
        margin-top: 0;
    }
    #table_cover{
        width: 60%;
        margin: 0 20%;
    }
    .gibu_table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

    }
    .gibu_table thead th {
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        color: #369;
        border-bottom: 3px solid #036;
    }
    .gibu_table tbody th {
        width: 150px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #72d09e;
        background: #f3f6f7;
        text-align: center;
    }
    .gibu_table td {
        width: 350px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #72d09e;
    }
    #title_table{
    width: 100%;
}

#outer{
	width: 1200px;
	margin: 0 auto;
	
}
    /* tab css*/
    /* .tabs{float:left; width:100%; height:290px; box-sizing: border-box;} */
/* .tabnav{font-size:40px; width:60%; box-sizing: border-box; margin: 0 auto;} */
.tabnav li{display: inline-block;  height:46px; text-align:center; border-right:1px solid #72d09e;}
/* .tabnav li a:before{content:""; position:absolute; left:0; top:0px; width:100%; height:3px; }
.tabnav li a.active:before{background:red;}
.tabnav li a.active{border-bottom:1px solid #72d09e;}
.tabnav li a{ position:relative; display:block; background: #f8f8f8; color: #000; padding:0 30px; line-height:46px; text-decoration:none; font-size:16px;}
.tabnav li a:hover,
.tabnav li a.active{background:#fff; color:#7ea21e; }
.tabcontent{padding: 20px; border:1px solid #72d09e; border-top:none; width: 100%;} */ 

#comments{
    width: 60%;
    margin: 0 auto;
}

#comments_table{
    width: 100%;
    margin: 0 auto;
}
#comments_img{
    width: 100%;
    height: 200px;
    border-radius: 10px;
}
.ingCnt{
    font-weight: 700;
    margin-top: 30px;
    font-size: 30px;
}
#title_table{
    width: 100%;
}
#outer{
	width: 1200px;
	margin: 0 auto;
	
}

#comment_input_table {
    width: 100%;
}

#comment_area{
    width: 110%;
    height: 100px;
    resize: none;
    margin-top: 0;
}
#comment_area_btn{
    height: 100px;
    width: 45%;
    margin-top: 0;
    background-color: #8bdcb1;
    border: none;
    border-radius: 15px;
}

</style>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>
    <%@ include file="../common/header.jsp" %>

	<div id="outer">
    <div id="gibu_detail_container">
        <table id="title_table">
            <tr>
                <td width="20%"></td>
                <td colspan="3" width="60%"><h1><%=vo.getRegname() %></h1></td>
                <td width="20%"><button class="btn" hidden>수정하기</button></td>
            </tr>
        </table>
            <p class="comName">By <%=vo.getMnick() %></p>
            <img src="<%= vo.getImgsrc() %>" alt="첫번째 이미지사진">
        <div id="gibu_detail_container_div">
            <p>
                <%= vo.getRegcontent() %>
            </p>
                <h2>사업대상</h2>
            <div id="table_cover">
                <table class="gibu_table">
                    <tbody>
                    <tr>
                        <th>기업이름</th>
                        <td><%=vo.getMnick() %></td>
                    </tr>
                    <tr>
                        <th>모금기간</th>
                        <td><%= vo.getRegsdate() %> ~ <%= vo.getRegfdate() %></td>
                    </tr>
                    <tr>
                        <th>사업대상</th>
                        <td><%= vo.getDperson() %></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="gibu_btn_cover">
                <a href="<%=path %>/donate/pay"  class="gibu_btn_container">
                    <div>
                        기부하기
                    </div>
                </a>
            </div>
            <p id="total_money">
                <%= vo.getDpmoney() %> 원
            </p>
            <p id="plan_money">
               목표금액 : <%= vo.getDgmoney() %> 원
            </p>
            
        </div>
    </div>
    </div>
    <br>
    <br>
    <div id="tabs"> <!-- A -->
        <h1 align="center">댓글</h1>
        <div class="tabcontent">
         
          <div id="comments">
          	
          	<script>
          		function repEdit() {
					const done = confirm("수정하시겠습니까?");
					var repno = ${'#comments_num'}.va();
					console.log(repno);
				}
          		function repDel() {
          			const done = confirm("삭제하시겠습니까?");
          			if(done==1){
          					
          			}
				}
          		function repBan() {
					const done = confirm("신고하시겠습니까?");
					if(done==1){
						
					}
				}
          	</script>
          	
          	
          	<%for(ReplyVo rp : list) {%>
            <table id="comments_table">
                <tr>
                	<td hidden id="comments_num"><%= rp.getRep_no() %></td>
                    <td id="comments_name" width="30%"><%= rp.getMnick() %></td>
                    <td id="comments_date" align="right" width="50%"><%= rp.getRepmod() %></td>
                    <td align="right" width="20%">
                        <button value="수정" class="btn" onclick="repEdit()">수정</button>
                        <button value="삭제" class="btn" onclick="repDel()">삭제</button>
                        <button value="신고" class="btn" onclick="repBan()">신고</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" id="comments_content"><%= rp.getRepcontent() %></td>
                </tr>
                <!-- <tr>
                    <td colspan="5" ><img src="../resources/img/sample.png" alt="" id="comments_img"></td>
                </tr> -->
                
            </table>
            <hr>
			<%} %>
            


            <!-- 댓글 -->
            <form action="" method="post">
            
                <table id="comment_input_table">
                    <br>
                   <tr>
                    <td align="left">
                        <textarea name="comment_area" id="comment_area" rows="5" placeholder="내용을 적어주세요"></textarea>
                    </td>
                    <td align="right">
                        <button id="comment_area_btn" >등록하기</button>
                    </td>
                   </tr> 
                </table>
                
               

            </form>


          </div>

           
          
        </div>
      </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>