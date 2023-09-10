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
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
    <form action="/save" method = "post">
        이메일: <input class="form-control" type="text" name="memberEmail" id="member-email" onkeyup="email_dup_check()">
        <p id="email-dup-check-result"></p>
        비밀번호: <input type="text" name="memberPassword"> <br>
        이름: <input type="text" name="memberName"> <br>
        생년월일: <input type="text" name="memberBirth"> <br>
        핸드폰번호: <input type="text" name="memberMobile"> <br>
        <input type="submit" value="등록">
    </form>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const email_dup_check = () => {
        const email = document.getElementById("member-email").value;
        const result = document.getElementById("email-dup-check-result");

        $.ajax({
            type:"post",
            url: "/duplicate-check",
            data:{
                memberEmail: email
            },
            success: function(){
                result.innerHTML ="사용가능한 이메일입니다.";
                result.style.color = "green";
            },
            error: function(){
                result.innerHTML ="이미 사용 중인 이메일입니다.";
                result.style.color = "red";
            }
        });
    }
</script>
</html>
