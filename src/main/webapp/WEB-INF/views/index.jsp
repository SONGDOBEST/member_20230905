<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>메인페이지</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<h2>index.jsp</h2>
<a href="/save">회원가입</a> <br>
<a href="/login">로그인</a> <br>
<a href="/members">회원목록</a> <br>

로그인 이메일 : ${sessionScope.loginEmail} <br>
model에 담은 이메일 : ${email} <br>

</body>
</html>