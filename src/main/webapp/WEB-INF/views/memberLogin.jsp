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
</head>
<body>
<form action="/login" method = "post">
    이름: <input type="text" name="loginName">
    비밀번호: <input type="text" name="loginPass">
    <input type="submit" value="로그인">
</form>
</body>
</html>