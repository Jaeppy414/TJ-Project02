<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../common/jquery/jquery-3.6.1.min.js"></script>
    
<script type="text/javascript">
function validateForm(form) {
	if(form.name.value==""){
		alert("이름을 입력하세요");
		form.name.focus();
		return false;
	}
	if(form.email.value==""){
		alert("이메일을 입력하세요.");
		form.email.focus();
		return false;
	}
}
function idFind(){
	var ifn = document.myForm;
	ifn.action="FinderProcess.jsp";
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
</script>

</head>
<body>
	<%@ include file ="../Main/inc/top.jsp" %>
	<div class="container p-5 my-4 border" align="center" style="width: 450px;">
		<form name="myForm" method="post" onsubmit="return validateForm(this);">
			<div class="container mt-3">
			  <ul class="nav justify-content-center">
			    <li class="nav-item">
			      <a class="nav-link active" href="./FinderId.jsp" name="id">아이디 찾기</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="./FinderPw.jsp" name="pw" >비밀번호 찾기</a>
			    </li>
			  </ul>
			</div>
			<table class="mt-3">
				<tr>
					<th>이름</th>
					<td><input type="text" maxlength="20" placeholder="이름" name="name" style="width:200px" /></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text"  placeholder="@포함해서 작성" name="email" style="width: 200px" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="확인" onclick="idFind();"/>
						 <input type="reset" value="취소" onclick="location.href='../Main/mainHome.jsp'" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../Main/inc/bottom.jsp"%>
</body>
</html>