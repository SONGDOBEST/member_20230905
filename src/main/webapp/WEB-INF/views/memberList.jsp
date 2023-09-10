<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/resources/css/style.css">
<html>
<head>
    <title>회원 목록</title>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <style>
        table {
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<h2>list.jsp</h2>
<div class="container">
    <div id="member-list">
        <table class="table table-bordered">
            <tr>
                <td>id</td>
                <td>email</td>
                <td>name</td>
                <td>birth</td>
                <td>mobile</td>
                <td>조회</td>
                <td>삭제</td>
            </tr>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td onclick="ajax_detail_fn('${member.id}')">
                            ${member.memberEmail}
                    </td>
                    <td>${member.memberName}</td>
                    <td>${member.memberBirth}</td>
                    <td>${member.memberMobile}</td>
                    <td>
                        <a class="btn btn-info" onclick="detail_fn('${member.id}')">조회</a>
                    </td>
                    <td>
                        <a class="btn btn-danger" onclick="delete_fn('${member.id}')">삭제</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div id="member-detail">

    </div>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const detail_fn = (id) => {
        location.href="/member?id="+id;
    }
    const delete_fn = (id) => {
        location.href="/delete?id="+id;
    }
    const ajax_detail_fn = (id) => {
        const memberDetail = document.getElementById("member-detail");
        $.ajax({
            type: "get",
            url: "/member-ajax",
            data: {
                id: id
            },
            success: function(res){
                let result= "<table class='table table-dark'>"; //큰 따옴표, 작은 따옴표 잘 구분해서.
                result += "<tr>";
                result += "<td>" + res.id + "</td>";
                result += "<td>" + res.memberEmail + "</td>";
                result += "<td>" + res.memberName + "</td>";
                result += "<td>" + res.memberBirth + "</td>";
                result += "<td>" + res.memberMobile + "</td>";
                result += "</tr>"
                result += "</table>"
                memberDetail.innerHTML = result;
            },
            error: function(){
                alert("회원 정보가 없습니다!")
            }
        })
    }
</script>
</html>