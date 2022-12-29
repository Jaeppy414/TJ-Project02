<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../common/jquery/jquery-3.6.1.min.js"></script>
    
<script>
	function validateForm(form) {
		if(!form.id.value){
			alert("아이디를 입력하세요.");
			form.id.focus();
			return false;
		}
		if(form.pass1.value==''){
			alert("패스워드를 입력하세요.");
			form.pass1.focus();
			return false;
		}
	}
</script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
  box-sizing: border-box;
}

h1 {
  font-weight: bold;
  margin: 0;
}

h2 {
  text-align: center;
}

p {
  font-size: 14px;
  font-weight: 100;
  line-height: 20px;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}

span {
  font-size: 12px;
}

a {
  color: #333;
  font-size: 14px;
  text-decoration: none;
  margin: 15px 0;
}

button {
  border-radius: 20px;
  border: 1px solid #FF4B2B;
  background-color: #FF4B2B;
  color: #FFFFFF;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
}

button:active {
  transform: scale(0.95);
}

button:focus {
  outline: none;
}

button.ghost {
  background-color: transparent;
  border-color: #FFFFFF;
}

form {
  background-color: #FFFFFF;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  text-align: center;
}

input {
  background-color: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  width: 100%;
}

.container {
  background-color: #fff;
  border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
      0 10px 10px rgba(0,0,0,0.22);
  position: relative;
  overflow: hidden;
  width: 768px;
  max-width: 100%;
  min-height: 480px;
}

.form-container {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all 0.6s ease-in-out;
}

.sign-in-container {
  left: 0;
  width: 50%;
  z-index: 2;
}

.container.right-panel-active .sign-in-container {
  transform: translateX(100%);
}

.sign-up-container {
  left: 0;
  width: 50%;
  opacity: 0;
  z-index: 1;
}

.container.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 5;
  animation: show 0.6s;
}

@keyframes show {
  0%, 49.99% {
    opacity: 0;
    z-index: 1;
  }
  
  50%, 100% {
    opacity: 1;
    z-index: 5;
  }
}

.overlay-container {
  position: absolute;
  top: 0;
  left: 50%;
  width: 50%;
  height: 100%;
  overflow: hidden;
  transition: transform 0.6s ease-in-out;
  z-index: 100;
}

.container.right-panel-active .overlay-container{
  transform: translateX(-100%);
}

.overlay {
  background: #FF416C;
  background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
  background: linear-gradient(to right, #FF4B2B, #FF416C);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 0 0;
  color: #FFFFFF;
  position: relative;
  left: -100%;
  height: 100%;
  width: 200%;
    transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
    transform: translateX(50%);
}

.overlay-panel {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 40px;
  text-align: center;
  top: 0;
  height: 100%;
  width: 50%;
  transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.overlay-left {
  transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
  transform: translateX(0);
}

.overlay-right {
  right: 0;
  transform: translateX(0);
}

.container.right-panel-active .overlay-right {
  transform: translateX(20%);
}

.social-container {
  margin: 20px 0;
}


</style>
</head>
<body>
	<%@ include file ="../Main/inc/top.jsp" %>
	<div class="subtop text-center" style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
				
		<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
		<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/index/board_list.css" type="text/css">
		
		<span style="color:red; font-size:1.2em;">
			<%= request.getAttribute("LoginErrMsg")==null?
					"":request.getAttribute("LoginErrMsg")%>
		</span>
		<%
		if(session.getAttribute("UserId")==null){
		%>
		<div class="container p-5 my-4 border" align="center" style="width: 450px;">
			<form action="LoginProcess.jsp" method="post" name="loginFrm"
				onsubmit="return validateForm(this);" align="center">
				<header>
					<h3>로그인</h3>
				</header>
				<hr />
				<div>
					<input type="text" name="id" placeholder="아이디"/>
				</div>
				<div>
					<input type="password" name="pass" placeholder="비밀번호"/>
				</div>
				<br />
				<div>
					<input type="submit" value="로그인하기">
				</div>
				<br />
				<div>
					<a href="FinderId.jsp">아이디 및 비밀번호 찾기</a>
				</div>
			</form>
		</div>
		<%
		}
		else {
		%>
		<div class="container p-5 my-4 border" align="center" style="width: 450px;">	
			<%=session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br />
			<a href="Logout.jsp">[로그아웃]</a>
			<a href="../Main/Main.jsp">[홈으로]</a>
		</div>
		<%
		}
		%>
		
	</div>
<%@ include file ="../Main/inc/bottom.jsp" %>
</body>
</html>