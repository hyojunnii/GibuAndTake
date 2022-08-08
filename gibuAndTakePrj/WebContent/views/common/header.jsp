<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style>
    *{
        font-family: 'IBM Plex Sans KR', sans-serif;
    }

    header{
        width: 1920px;
        vertical-align: middle;
        padding-top: 15px;
        padding-bottom: 15px;
        border-bottom: 1px solid #14AE5C;
    }

    header>div{
        display: inline-block;
        vertical-align: middle;
    }

    #logo{
        width: 75px;
        height: 75px;
    }

    #siteName{
        font-size: 50px;
        vertical-align: bottom;
    }
    
    #logo_name>*{
        text-decoration: none;
    }

    
    
    a{
    	text-decoration: none;
    	color: black;
    }

    #logo_name>a>*{
        vertical-align: middle;
        height: 75px;
    }

    #siteName_small{
        font-size: 25px;
        
        
    }

    #top_menu{
        padding-left: 180px;
        margin-right: 400px;
    }

    #serch_icon{
        width: 35px;
        height: 35px;
    }

    #login{
        font-size: 25px;
        margin-right: 10px;
    }

    #login_serch>a{
        vertical-align: middle;
    }

    .selected_bg{
        background-color: #EBF5E0;
    }

    .greenBold{
        color: #086C37;
        font-weight: bold;
    }

    .top_menu_click{
        margin-left: 10px;
        margin-right: 10px;
        font-size: 50px;
    }

    .float_right{
        float: right;
    }
    .float_right::after{
        clear: both;
    }

</style>
</head>
<body>
    <!-- 아이콘 출처 : <a href="https://www.flaticon.com/kr/free-icons/" title=" 아이콘"> 아이콘  제작자: Smashicons - Flaticon</a> -->
	<header>
        <div id="logo_name">
            <a href="<%=request.getContextPath()%>">
                <img id="logo" src="../../resources/img/free-icon-giving-5017478.png" alt="홈페이지 로고">
                <span id="siteName"><span class="greenBold selected_bg">기부 앤 테이크</span><span id="siteName_small" class="greenBold">Gibu n Take</span></span>
            </a>
        </div>
        </div>
        <div id="top_menu" class="">
            <nav>
                <span>
                    <a href="" class="top_menu_click">소개</a>
                    <a href="" class="top_menu_click">기부</a>
                    <a href="" class="top_menu_click">펀딩</a>
                    <a href="" class="top_menu_click">캠페인</a>
                    <a href="" class="top_menu_click">스토리</a>
                </span>
            </nav>
        </div>
        <div id="login_serch" class="">
            <a href=""><span id="login">로그인</span></a>
            <a href=""><img id="serch_icon" src="../../resources/img/free-icon-search-149309.png" alt="검색아이콘"></a>
        </div>
    </header>
</body>
</html>