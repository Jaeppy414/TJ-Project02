<%@page import="MemberTable.MemberDTO"%>
<%@page import="MemberTable.MemberDAO"%>
<%@page import="utils.JSFunction"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberDAO dao = new MemberDAO(application);
String id = session.getAttribute("UserId").toString();
String pass = request.getParameter("Pass");
String email = request.getParameter("Email1") +"@"
			+ request.getParameter("Email2");
String phone = request.getParameter("Phone1")
			+ request.getParameter("Phone2")
			+ request.getParameter("Phone3");
MemberDTO dto = new MemberDTO();
dto.setId(id);
dto.setPass(pass);
dto.setEmail(email);
dto.setPhone(phone);
int iResult = dao.editMember(dto);
dao.close();
if(iResult==1){
	JSFunction.alertBack(id+"님, 회원정보가 수정되었습니다.", out);
}
else{
	request.getRequestDispatcher("editForm2.jsp")
	.forward(request, response);
}
%>