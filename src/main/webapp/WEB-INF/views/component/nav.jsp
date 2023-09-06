<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-06
  Time: 오전 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="nav">
  <ul class="menu">
    <li class="menu-item">
      <a href="/">index</a>
    </li>
    <li class="menu-item">
      <a href="/save">회원가입</a>
    </li>
    <li class="menu-item">
      <a href="/login">로그인</a>
    </li>
    <li class="menu-item">
      <a href="/members">회원목록</a>
    </li>
    <!-- 로그인 여부에 따라 로그인했으면 oo님 환영합니다. 로그아웃 링크 보이고
         로그인 하지 않았으면 로그인이 보이도록
    -->
    <li class="menu-item" id="login-area">
      <a href=""></a>
    </li>

  </ul>
</div>
<script>
  const loginArea = document.getElementById("login-area");
  const loginEmail = '${sessionScope.loginEmail}';
  console.log(loginEmail.length);
  if(loginEmail.length != 0){
    //로그인 완료
    loginArea.innerHTML = "<a href='/mypage'>" + loginEmail + "님 환영합니다.</a>" +
            "<a href='logout'>로그아웃</a>";
  }else{
    //로그인 하지 않음
    loginArea.innerHTML = "<a href='/login'>로그인</a>"
  }
</script>
