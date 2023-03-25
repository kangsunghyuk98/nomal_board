<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>비밀번호 재설정</title>
</head>
<body>

<form action="/updatepassword" method="post">

아이디 : <input type="text" name="username" /> <br><br>
이메일 : <input type="email" name="email" /><br><br>
재설정할 비밀번호 : <input type="password" name="password"/><br>

    <input type="submit" value="비밀번호 재설정" />

</form>

</body>
</html>
