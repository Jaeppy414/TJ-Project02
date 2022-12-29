<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html style="" class=" js no-touch csstransitions">
<head>


<script type="text/javascript">

function validateForm(form) {
	if(form.mPass.value==""){
		alert("비밀번호를 입력하세요");
		form.mPass.focus();
		return false;
	}
	if(form.mPassCheck.value==""){
		alert("비밀번호 재확인 해주세요");
		form.mPassCheck.focus();
		return false;
	}
	if(form.mPass.value!=form.mPassCheck.value){
        alert('패스워드가 일치하지 않습니다.')
        form.mPass.value='';
        form.mPassCheck.value='';
        form.mPass.focus();
        return false;
    }
	if(form.mEmail1.value==""){
		alert("이메일을 입력하세요.");
		form.mEmail1.focus();
		return false;
	}
	if(form.mEmail2.value==""){
		alert("이메일 주소를 입력하세요.");
		form.mEmail2.focus();
		return false;
	}
	if(form.mPhone1.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.mPhone1.focus();
		return false;
	}
	if(form.mPhone2.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.mPhone2.focus();
		return false;
	}
	if(form.mPhone3.value==""){
		alert("전화번호가 잘못 입력되었습니다.");
		form.mPhone3.focus();
		return false;
	}
}
function inputEmail(frm){
    var domain = frm.email_domain.value;
    if(domain==''){//--선택-- 부분을 선택했을때
        frm.mEmail2.value = '';
    }
    else if(domain=='직접입력'){//'직접입력'을 선택했을때
        frm.mEmail2.readOnly = false;//사용자가 입력해야 하므로 readonly속성을 해제한다. 
        frm.mEmail2.value = '';
        frm.mEmail2.focus();
    }
    else{//도메인을 선택했을때
        frm.mEmail2.value = domain;//선택한 도메인을 입력한다. 
        frm.mEmail2.readOnly = true;//입력된 값을 수정할 수 없도록 readonly속성을 활성화한다. 
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
</head>	

<body cz-shortcut-listen="true">

<%@ include file ="../Main/inc/top.jsp" %>

<div id="con_wrapper">
	<hr>
	<!-- Start Container -->

	<div class="contain">
		<div class="join_wrap">
		
			<dl class="user_title clr">
				<dt><span class="title">회원 정보 수정</span></dt>
			</dl>
			
			<div class="join join_inner">
			
				<!-- 회원가입 -->
				
				<form action="EditProccess.jsp" method="post" name="mJoin" id="mJoin" onsubmit="return validateForm(this);">
				<input type="hidden" name="IDChk" id="IDChk" value="0">
				
				<h2 class="join_title mt40">기본정보입력</h2>
				
				<table cellspacing="0" summary="회원가입양식">
					<colgroup>
						<col width="120px">
						<col>
					</colgroup>
					<tbody><tr>
						<th>아이디</th>
						<td>
							<%= session.getAttribute("UserId") %>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="mPass" id="mPassword" class="join_input wd200"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="mPassCheck" class="join_input wd200"></td>
					</tr>
					<tr>
						<th>성명</th>
						<td><%= session.getAttribute("UserName") %></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
						<input type="text" name="mEmail1" id="mEmail1" onchange="document.all.EmailChk.value=0" class="join_input wd140"> @
						<input type="text" name="mEmail2" id="mEmail2" class="join_input wd180">
						<select name="email_domain" onchange="inputEmail(this.form);" class="join_input wd180">
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
					<tr class="phone">
						<th>휴대전화</th>
						<td>
							<select name="mPhone1" id="Phone1" onchange="document.getElementById('mCellPhone2').focus();" class="join_select wd60">
								<option value="">선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> -
							<input type="text" name="mPhone2" id="mPhone2" value="" class="join_input wd60" maxlength="4" 
								onkeyup="NextInput(this,document.getElementById('mPhone3'),'4');"> - 
							<input type="text" name="mPhone3" id="mPhone3" value="" class="join_input wd60" maxlength="4">
						</td>
					</tr>
				</tbody></table>
				<div class="join_btn" style="margin-top:60px;">
					<a href="javascript:history.back();"><img src="../Images/btn_member_back.jpg" alt=""></a>
					<a><input type="image" src="../Images/btn_member_join2.jpg" alt=""></a>
				</div>
				</form>
			</div>
		</div>
	</div>

</div>

<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
<div></div></div></div>

<%@ include file ="../Main/inc/bottom.jsp" %>
</body>
</html>