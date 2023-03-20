<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>마이 페이지</title>

    <!-- Css -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">

    <style>

        .box h3 {
            text-align:center;
            position:relative;
            top:80px;
        }
        .box {
            width:70%;
            height:200px;
            background:#FFF;
            margin:40px auto;
        }

        /*
        box-shadow: [horizontal offset] [vertical offset] [blur radius] [optional spread radius] [color];
        aka
        box-shadow: 1px 3px 5px #ccc;
        */

        /*=========================================
         * Effect 1
        =========================================*/
        .effect1 {
            -webkit-box-shadow: 0 10px 6px -6px #777;
            -moz-box-shadow: 0 10px 6px -6px #777;
            box-shadow: 0 10px 6px -6px #777;
        }

        /*=========================================
         * Effect 2
        =========================================*/
        .effect2 {
            position: relative;
        }
        .effect2:before, .effect2:after {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 15px;
            left: 10px;
            width: 50%;
            top: 80%;
            max-width:300px;
            background: #777;
            -webkit-box-shadow: 0 15px 10px #777;
            -moz-box-shadow: 0 15px 10px #777;
            box-shadow: 0 15px 10px #777;
            -webkit-transform: rotate(-3deg);
            -moz-transform: rotate(-3deg);
            -o-transform: rotate(-3deg);
            -ms-transform: rotate(-3deg);
            transform: rotate(-3deg);
        }
        .effect2:after
        {
            -webkit-transform: rotate(3deg);
            -moz-transform: rotate(3deg);
            -o-transform: rotate(3deg);
            -ms-transform: rotate(3deg);
            transform: rotate(3deg);
            right: 10px;
            left: auto;
        }

        /*=========================================
         * Effect 3
        =========================================*/
        .effect3 {
            position: relative;
        }
        .effect3:before {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 15px;
            left: 10px;
            width: 50%;
            top: 80%;
            max-width:300px;
            background: #777;
            -webkit-box-shadow: 0 15px 10px #777;
            -moz-box-shadow: 0 15px 10px #777;
            box-shadow: 0 15px 10px #777;
            -webkit-transform: rotate(-3deg);
            -moz-transform: rotate(-3deg);
            -o-transform: rotate(-3deg);
            -ms-transform: rotate(-3deg);
            transform: rotate(-3deg);
        }

        /*=========================================
         * Effect 4
        =========================================*/
        .effect4 {
            position: relative;
        }
        .effect4:after {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 15px;
            right: 10px;
            left: auto;
            width: 50%;
            top: 80%;
            max-width:300px;
            background: #777;
            -webkit-box-shadow: 0 15px 10px #777;
            -moz-box-shadow: 0 15px 10px #777;
            box-shadow: 0 15px 10px #777;
            -webkit-transform: rotate(3deg);
            -moz-transform: rotate(3deg);
            -o-transform: rotate(3deg);
            -ms-transform: rotate(3deg);
            transform: rotate(3deg);
        }

        /*=========================================
         * Effect 5 =========================================*/
        .effect5 {
            position: relative;
        }
        .effect5:before, .effect5:after
        {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 25px;
            left: 10px;
            width: 50%;
            top: 80%;
            max-width:300px;
            background: #777;
            -webkit-box-shadow: 0 35px 20px #777;
            -moz-box-shadow: 0 35px 20px #777;
            box-shadow: 0 35px 20px #777;
            -webkit-transform: rotate(-8deg);
            -moz-transform: rotate(-8deg);
            -o-transform: rotate(-8deg);
            -ms-transform: rotate(-8deg);
            transform: rotate(-8deg);
        }
        .effect5:after {
            -webkit-transform: rotate(8deg);
            -moz-transform: rotate(8deg);
            -o-transform: rotate(8deg);
            -ms-transform: rotate(8deg);
            transform: rotate(8deg);
            right: 10px;
            left: auto;
        }

        /*=========================================
         * Effect 6 =========================================*/
        .effect6 {
            position:relative;
            -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        }
        .effect6:before, .effect6:after {
            content:"";
            position:absolute;
            z-index:-1;
            -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
            -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
            box-shadow:0 0 20px rgba(0,0,0,0.8);
            top:50%;
            bottom:0;
            left:10px;
            right:10px;
            -moz-border-radius:100px / 10px;
            border-radius:100px / 10px;
        }
        .effect6:after {
            right:10px;
            left:auto;
            -webkit-transform:skew(8deg) rotate(3deg);
            -moz-transform:skew(8deg) rotate(3deg);
            -ms-transform:skew(8deg) rotate(3deg);
            -o-transform:skew(8deg) rotate(3deg);
            transform:skew(8deg) rotate(3deg);
        }

        /*=========================================
         * Effect 7
        =========================================*/
        .effect7 {
            position:relative;
            -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        }
        .effect7:before, .effect7:after {
            content:"";
            position:absolute;
            z-index:-1;
            -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
            -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
            box-shadow:0 0 20px rgba(0,0,0,0.8);
            top:0;
            bottom:0;
            left:10px;
            right:10px;
            -moz-border-radius:100px / 10px;
            border-radius:100px / 10px;
        }
        .effect7:after {
            right:10px;
            left:auto;
            -webkit-transform:skew(8deg) rotate(3deg);
            -moz-transform:skew(8deg) rotate(3deg);
            -ms-transform:skew(8deg) rotate(3deg);
            -o-transform:skew(8deg) rotate(3deg);
            transform:skew(8deg) rotate(3deg);
        }

        /*=========================================
         * Effect 8
        =========================================*/
        .effect8 {
            position:relative;
            -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
            box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        }
        .effect8:before, .effect8:after {
            content:"";
            position:absolute;
            z-index:-1;
            -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
            -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
            box-shadow:0 0 20px rgba(0,0,0,0.8);
            top:10px;
            bottom:10px;
            left:0;
            right:0;
            -moz-border-radius:100px / 10px;
            border-radius:100px / 10px;
        }
        .effect8:after {
            right:10px;
            left:auto;
            -webkit-transform:skew(8deg) rotate(3deg);
            -moz-transform:skew(8deg) rotate(3deg);
            -ms-transform:skew(8deg) rotate(3deg);
            -o-transform:skew(8deg) rotate(3deg);
            transform:skew(8deg) rotate(3deg);
        }

    </style>
</head>

<body>

<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
                <span class="bar1"></span>
                <span class="bar2"></span>
                <span class="bar3"></span>
            </div>
            <a href="/">
                <img src="/img/logo.png" alt=""/>
            </a>

        </div>

        <div class="collapse navbar-collapse" id="main-menu">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Board</a></li>
                <sec:authorize access="isAuthenticated()">
                    <li><a href="/member/mypage"><b>${principal.to.username}</b></a></li>
                    <li><a href="/logout"><b>Log-out</b></a></li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                <li><a href="/login"><b>Log-in</b></a></li>
                </sec:authorize>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- 마이페이지 내용 -->
<div class="box effect8">
    <h3>이름 : ${principal.to.username}</h3>
    <h3>이메일 : ${principal.to.email}</h3>
</div>


<!-- Copyright -->
<footer>
    <div class="container">
        <p class="text-center">© 2016 - Designed by <a href="http://www.nicolatolin.com">Nicola Tolin</a> 김경기 웹 연습용 페이지</p>
    </div>
</footer>

<a href="#page-top" class="cd-top">Top</a>


<!-- script -->
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/modernizr.js"></script>
<script src="/js/script.js"></script>



</body>
</html>