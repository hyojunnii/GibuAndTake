<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    a{
        text-decoration: none;
        font-size: 25px;
        color: black;
    }
    a:hover{
        text-decoration: underline;
    }
    a:active{
        text-decoration: underline;
    }
    li{
        list-style: none;
    }
    
    #campaign_wrap{
        width: 500px;
        height: 50px;
        outline: 1px dotted red;
        margin: 0 auto;
    }
    
    
    #campaign_wrap ul li{
        float: left;
        width: 100%;
        height: 50px;
        line-height: 50px;
        text-align: center;
        background-color: white;
    }
    
    #campaign_wrap ul li a{
        display: block;
    }
    </style>
</head>
<body>
    <div id="campaign_wrap">
        <ul>
            <li>
                <a href="/gibuAndTakePrj/view/campaign">진행중인 캠페인</a>
            </li>
        </ul>
    </div>
</body>
</html>