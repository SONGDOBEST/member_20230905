<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
    <h2>memberMain.jsp</h2>
    로그인 이메일 : ${sessionScope.loginEmail} <br>
    model에 담은 이메일 : ${email} <br>
    <a href="/logout">로그아웃</a>
    <a href="/">홈으로</a>
</body>
</html>
