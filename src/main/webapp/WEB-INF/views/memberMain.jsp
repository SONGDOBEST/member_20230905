<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
    <h2>memberMain.jsp</h2>
    로그인 이메일 : ${sessionScope.loginEmail} <br>
    <%-- 로그인 계정이 admin일 경우에만 회원목록 링크가 보임 --%>
    <button class="btn btn-primary" onclick="detail_fn(${sessionScope.loginEmail})">정보 보기</button>
    <c:if test="${sessionScope.loginEmail == 'admin'}">
        <a href="/members">회원목록</a> <br>
    </c:if>
    model에 담은 이메일 : ${email} <br>
    <a href="/logout">로그아웃</a>
    <a href="/">홈으로</a>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const detail_fn = (Email) => {
        location.href="/member?Email="+Email;
    }
</script>
</html>
