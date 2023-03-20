<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>뻑킹 페이지</title>

    <!-- Css -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">


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
            <a class="navbar-brand top" href="/">
                <img src="/img/logo.png" alt="">
            </a>

        </div>

        <div class="collapse navbar-collapse" id="main-menu">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#about">About</a></li>
                <li><a href="#">Board</a></li>

                <sec:authorize access="isAuthenticated()">
                    <li><a href="#"><b>${principal.to.username}</b></a></li>
                    <li><a href="/logout"><b>Log-out</b></a></li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                <li><a href="/login"><b>Log-in</b></a></li>
                </sec:authorize>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- Intro -->
<section class="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <p>일주일에 코딩 27시간 해야합니다.</p>
            </div>
        </div>
    </div>
</section>

<!-- Slider -->
<section class="slider">
    <div class="container-fluid">
        <div class="row no-gutter">
            <div class="col-lg-12">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="/img/slide-1.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-2.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-3.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-4.jpg" alt="slide">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- About -->
<section class="about" id="about">
    <div class="container about">
        <div class="row">
            <div class="col-md-6 big-letter">
                <p>
                    Donec quis leo leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                    Cras scelerisque rhoncus nulla sit amet bibendum. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta
                    vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante.
                </p>
                <br>
                <p>
                    Vestibulum tempor velit nibh, nec finibus lectus ultrices sodales. Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra
                    ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. Maecenas finibus non ipsum ullamcorper vehicula.
                </p>
            </div>
            <div class="col-md-6">
                <p>
                    Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra ullamcorper, neque ligula laoreet justo,
                    non semper nunc mauris mattis lorem. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta
                    vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante. Vestibulum tempor velit
                    nibh, nec finibus lectus ultrices sodales
                </p>
                <br>
                <img class="pull-right" src="/img/signature.jpg" alt="signature">
            </div>
        </div>
    </div>
</section>


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