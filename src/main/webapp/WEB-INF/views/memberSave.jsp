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
    <title>회원가입</title>
</head>
<body>
    <form action="/save" method = "post">
        이메일: <input type="text" name="memberEmail"> <br>
        비밀번호: <input type="text" name="memberPass"> <br>
        이름: <input type="text" name="memberName"> <br>
        생년월일: <input type="text" name="memberBirth"> <br>
        핸드폰번호: <input type="text" name="memberMobile"> <br>
        <input type="submit" value="등록">
    </form>
</body>
</html>
