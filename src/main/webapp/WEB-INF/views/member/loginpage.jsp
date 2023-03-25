<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>

  <style>

    .login-page {
      position: absolute;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      background: #fff;
    }
    .login-page .login-content {
      width: 420px;
      padding: 40px;
      height: 500px;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 1;
      position: absolute;
      background: #FFF;
      box-shadow: 0 0px 70px rgba(0, 0, 0, 0.1);
      border-top: 5px solid #7ac142;
      float: left;
      transition: all 0.2s ease-out;
      transition-delay: 0.2s;
    }
    .login-page .login-content.login-content-signin.ng-hide:not(.ng-hide-animate) {
      transition-delay: 0s;
      display: block!important;
      opacity: 0;
      z-index: -1;
      transform: translate(-45%, -50%);
    }
    .login-page .login-content.login-content-signup.ng-hide:not(.ng-hide-animate) {
      transition-delay: 0s;
      display: block!important;
      opacity: 0;
      z-index: -1;
      transform: translate(-55%, -50%);
    }
    .login-page .login-content h2 {
      text-align: left;
      color: #7ac142;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin: 0;
      font-size: 18px;
      font-weight: bold;
    }
    .login-page .login-content form.wrapper-box {
      margin-top: 40px;
    }
    .login-page .login-content form.wrapper-box input {
      margin-top: 20px;
      border: none;
      border-bottom: 1px solid rgba(0, 0, 0, 0.1);
      border-radius: 0;
      padding-left: 0;
      box-shadow: none;
      transition: all 0.1s ease-out;
    }
    .login-page .login-content form.wrapper-box input:valid {
      border-bottom: 1px solid #7ac142;
    }
    .login-page .login-content form.wrapper-box input:focus:invalid {
      border-bottom: 1px solid #EF6161;
    }
    .login-page .login-content form.wrapper-box ::-webkit-input-placeholder {
      color: rgba(0, 0, 0, 0.5);
    }
    .login-page .login-content form.wrapper-box :-moz-placeholder {
      color: rgba(0, 0, 0, 0.5);
    }
    .login-page .login-content form.wrapper-box ::-moz-placeholder {
      color: rgba(0, 0, 0, 0.5);
    }
    .login-page .login-content form.wrapper-box :-ms-input-placeholder {
      color: rgba(0, 0, 0, 0.5);
    }
    .login-page .login-content form.wrapper-box button {
      display: inline-block;
      margin-top: 50px;
      border: 2px solid #7ac142;
      background: #7ac142;
      border-radius: 25px;
      padding: 3px 12px 5px 12px;
      color: #fff;
      font-size: 14px;
      font-weight: bold;
      letter-spacing: 0px;
      transition: all 0.1s ease-out;
    }
    .login-page .login-content form.wrapper-box button:hover {
      color: #7ac142;
      background: #fff;
      border: 2px solid #7ac142;
    }
    .login-page .login-content form.wrapper-box button:active {
      box-shadow: none;
    }
    .login-page .login-content .outer-link {
      display: inline-block;
      margin-top: 50px;
      padding: 5px 0;
      display: block;
      color: rgba(0, 0, 0, 0.4);
      transition: all 0.1s ease-out;
    }
    .login-page .login-content .outer-link:hover {
      transition: all 0s ease-out;
      color: rgba(0, 0, 0, 0.8);
      text-decoration: none;
    }
    .login-page .login-content.login-content-signin > div,
    .login-page .login-content.login-content-signup > div {
      overflow: hidden;
      top: 50%;
      position: relative;
      transform: translateY(-50%);
    }
    .login-page .login-content.login-content-signin {
      margin-left: -130px;
    }
    .login-page .login-content.login-content-signup {
      margin-left: 130px;
    }
    .login-page .login-switcher {
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      margin: auto;
      width: 660px;
      height: 400px;
      box-shadow: 0 0px 20px rgba(0, 0, 0, 0.03);
    }
    .login-page .login-switcher > div {
      width: 40%;
      margin-top: 125px;
    }
    .login-page .login-switcher > div.login-switcher-signin {
      float: left;
    }
    .login-page .login-switcher > div.login-switcher-signup {
      float: right;
    }
    .login-page .login-switcher > div h3 {
      color: rgba(0, 0, 0, 0.4);
      text-align: center;
      font-size: 14px;
    }
    .login-page .login-switcher > div button {
      display: block;
      margin: 20px auto 0 auto;
      outline: 0;
      background: none;
      border: 2px solid rgba(0, 0, 0, 0.1);
      border-radius: 20px;
      color: rgba(0, 0, 0, 0.3);
      font-weight: bold;
      font-size: 14px;
      padding: 4px 12px 5px 12px;
      transition: all 0.1s ease-out;
    }
    .login-page .login-switcher > div button:hover {
      border: 2px solid #7ac142 !important;
      color: rgba(0, 0, 0, 0.8);
    }
    .login-page .login-switcher .login-switcher-signin,
    .login-page .login-switcher .login-switcher-signup {
      transition: all 0.1s ease-out;
    }
    .login-page .login-switcher .login-switcher-signin.ng-hide:not(.ng-hide-animate),
    .login-page .login-switcher .login-switcher-signup.ng-hide:not(.ng-hide-animate) {
      display: block!important;
      opacity: 0;
      transform: translateY(10px);
    }

  </style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.5/angular.min.js"></script>
</head>
<body>
<div class="login-page" ng-app="">

  <div class="login-content login-content-signin" ng-hide="showSignIn">
    <div>
      <h2>로그인</h2>
      <form method="post" action="/login/success" class="wrapper-box" role="form" ng-submit="login()">
        <input type="text"
               ng-model="email"
               class="form-control form-control-email"
               placeholder="이름 입력"
               name="username"
               required>
        <input type="password"
               ng-model="password"
               class="form-control form-control-password"
               placeholder="비밀번호 입력"
               name="password"
               required >
        <a class="outer-link pull-left" href="/findid">아이디 찾기</a>
        <span class="outer-link pull-left">&nbsp;|&nbsp;</span>
        <a class="outer-link pull-left" href="/updatepassword">비밀번호 재설정</a>
        <button type="submit" class="btn btn-submit btn-default pull-right">로그인</button>
      </form>
    </div>
  </div>

  <div class="login-content login-content-signup ng-hide" ng-show="showSignIn">
    <div>
      <h2>회원가입</h2>
      <form action="/join" method="post" class="wrapper-box" role="form" ng-submit="register()">
        <input type="text"
               ng-model="username"
               class="form-control form-control-username"
               placeholder="이름을 입력하세요"
               name="username"
               required >
        <input type="email"
               ng-model="email"
               class="form-control form-control-email"
               placeholder="이메일을 입력하세요"
               name="email"
               required >
        <input type="password"
               ng-model="password"
               class="form-control form-control-password"
               placeholder="비밀번호를 입력하세요"
               name="password"
               required >
        <button type="submit" class="btn btn-submit btn-default pull-right">회원가입</button>
      </form>
    </div>
  </div>



  <div class="login-switcher">
    <div class="login-switcher-signin" ng-show="showSignIn">
      <h3>계정이 이미 있으신가요?</h3>
      <button ng-click="showSignIn=false">로그인</button>
    </div>
    <div class="login-switcher-signup" ng-hide="showSignIn">
      <h3>계정이 없으신가요?</h3>
      <button ng-click="showSignIn=true">회원가입</button>
    </div>
  </div>


</div>
</body>
</html>

