<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="MemberTable.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% MemberDAO dao = new MemberDAO(application);
	List<String> sival = new Vector<String>();
	sival = dao.idCheck();
	StringBuffer abc = new StringBuffer();
	for(int i =0; i<sival.size();i++){
		if(abc.length()>0){
			abc.append(',');
		}
		abc.append('"').append(sival.get(i)).append('"');
	}
%>
<meta charset="UTF-8">
<title>regidateForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">  
	
<script type="text/javascript">
var idch = 0;
function validateForm(form) {
	if(form.id.value==""){
		alert("아이디를 입력하세요");
		form.id.focus();
		return false;
	}
	if(idch == 0){
		alert("중복체크해주세요.");
		return false;
	}
	if(form.pass.value==""){
		alert("비밀번호를 입력하세요");
		form.pass.focus();
		return false;
	}
	if(form.pass_check.value==""){
		alert("비밀번호 재확인 해주세요");
		form.pass_check.focus();
		return false;
	}
	if(form.pass.value!=form.pass_check.value){
        alert('패스워드가 일치하지 않습니다.')
        form.pass.value='';
        form.pass_check.value='';
        form.pass.focus();
        return false;
    }
	if(form.name.value==""){
		alert("이름을 입력하세요");
		form.name.focus();
		return false;
	}
	if(form.email1.value==""){
		alert("이메일을 입력하세요.");
		form.email1.focus();
		return false;
	}
	if(form.email2.value==""){
		alert("이메일 주소를 입력하세요.");
		form.email2.focus();
		return false;
	}
	if(form.phone1.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.phone1.focus();
		return false;
	}
	if(form.phone2.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.phone2.focus();
		return false;
	}
	if(form.phone3.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.phone3.focus();
		return false;
	}
}
function inputEmail(frm){
    var domain = frm.email_domain.value;
    if(domain==''){
        frm.email1.value = ''; 
        frm.email2.value = '';
    }
    else if(domain=='직접입력'){
        frm.email2.readOnly = false; 
        frm.email2.value = '';
        frm.email2.focus();
    }
    else{
        frm.email2.value = domain; 
        frm.email2.readOnly = true;
    }
}  
function idCheck(){
	var fn = document.forms[0];
		if(fn.id.value==""){
			alert("아이디를 입력해주세요");
			fn.id.focus();
		}
		else{
			fn.id.readOnly = true;
			window.open("idCheck.jsp?id="+fn.id.value,"idover", "width=400, height=300");
		}
		idch=1;
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
	<!-- Top부분 -->
	<%@ include file ="../Main/inc/top.jsp" %>

<div class="subtop text-center" style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
			
	<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
	<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/index/board_list.css" type="text/css">
		
	<div class="container p-5 my-4 border" style="width: 800px;">
		<form name="myForm" method="post" action="RegidateProcess.jsp" onsubmit="return validateForm(this);">
			<table class="table">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" style="width: 200px;" name="id" id="id"/>
						<button type="button" class="btn_search" onclick="idCheck(this.form);">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="pass" style="width: 200px;"/>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						<input type="password" name="pass_check" style="width: 200px;"/>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" style="width: 100px;" name="name" style="width: 200px;"/>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="email1" style="width: 200px;"/>
						<span>@</span>
						<input type="text" name="email2" style="width: 150px;"/>
						<!-- 도메인 선택할 수 있게 만들어주기  -->
						<select name="email_domain" onchange="inputEmail(this.form);" class="userSelect w100">
	                        <option value="" checked> -- 선택 --</option>
	                        <option value="naver.com">naver.com</option>
	                        <option value="nate.com">nate.com</option>
	                        <option value="gmail.com">gmail.com</option>
	                        <option value="daum.net">daum.net</option>
	                        <option value="hanmail.net">hanmail.net</option>
	                        <option value="직접입력">직접입력</option>
	                    </select>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>
						<input type="text" maxlength="3" style="width: 100px" name="phone1" /> - 
						<input type="text" maxlength="4" style="width: 100px" name="phone2" /> - 
						<input type="text" maxlength="4" style="width: 100px" name="phone3" />
					</td>
				</tr>
			</table>
			
			<table style="width:670px; margin-top:20px;">
	            <tr>
	                <td align="center">                    
	                    <input type="submit" value="회원가입" class="btn_submit" style="width: 200px; "/>
	                    &nbsp;&nbsp;
	                    <input type="reset" value="취소" class="btn_cancel" style="width: 200px;"/>
	                </td>
	            </tr>
	        </table> 
		</form>
		
	</div>
	
</div>
	<%@ include file ="../Main/inc/bottom.jsp" %>
</body>
</html>