<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<form action="/login" method = "post">
    이메일: <input type="text" name="memberEmail"> <br>
    비밀번호: <input type="text" name="memberPassword"> <br>
    <input type="submit" value="로그인">
    <a href="/">홈으로</a>
</form>
</body>
</html>