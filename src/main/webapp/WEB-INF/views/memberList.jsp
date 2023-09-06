<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>회원 목록</title>
</head>
<body>
<h2>list.jsp</h2>
<table>
    <tr>
        <td>id</td>
        <td>이메일</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>생일</td>
        <td>전화번호</td>
        <td>수정</td>
        <td>삭제</td>
    </tr>
    <c:forEach items="${memberList}" var="member"> //컨트롤러에서 list를 지정해줬음. 거기서 정해준 이름대로 item을 주면 됨
        <tr>
            <td>
                <a href="/memberDetail?id=${member.id}">${member.id}</a>
            </td>
            <td>${member.memberEmail}</td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberBirth}</td>
            <td>${member.memberMobile}</td>
        </tr>
    </c:forEach>
</table>
</body>

</html>