<%@page import="MemberTable.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");

MemberDAO dao = new MemberDAO(application);

int mdto = dao.selectCheckId(id);
dao.close();

if(mdto == 0){
	out.print("사용가능한 아이디입니다.");
}
else if(mdto == 1){
	out.print("중복된 아이디입니다.");
}
else{
	out.print("에러발생");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Id_Check</title>
</head>
<body>
	<div>
		<span>현재 창을 닫으려면 닫기 버튼을 누르세요!</span>
		<button onclick="window.close();">닫기</button>
	</div>
</body>
</html>