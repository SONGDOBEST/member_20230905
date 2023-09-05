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
<form action="/update" method = "post">
    <input type="hidden" name="id" value="${member.id}"> <br>
    이메일: <input type="text" name="memberEmail" value="${member.memberEmail}"> <br>
    비밀번호: <input type="text" name="memberPass" value="${member.memberPass}"> <br>
    이름: <input type="text" name="memberName" value="${member.memberName}"> <br>
    생년월일: <input type="text" name="memberBirth"  value="${member.memberBirth}"> <br>
    핸드폰번호: <input type="text" name="memberMobile"  value="${member.memberMobile}"> <br>
    <input type="submit" value="수정">
</form>
</body>
</html>
