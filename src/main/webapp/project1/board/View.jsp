
<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <% pageContext.setAttribute("replaceChar", "\n"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String num = request.getParameter("num");   
BoardDAO dao = new BoardDAO(application);
dao.updateVistiCount(num);
BoardDTO dto = dao.selectView(num);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script>
function deletePost() {
    var confirmed = confirm("정말로 삭제하겠습니까?"); 
    if (confirmed) {
        var form = document.writeFrm;      
        form.method = "post";  
        form.action = "DeleteProcess.jsp";  
        form.submit();  
    }
}
</script>
</head>
<body>
<!-- 공통링크 -->
	<%@ include file="../Main/inc/top.jsp"%>

	<div class="subtop text-center"
		style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
		<div class="container">
			<div class="c_wrp m_wrp v_m">
				<div>
					<h1 class="mb-none dft text-light font-weight-bold">상세보기</h1>
				</div>
					<h5 class="mb-none dft text-light font-weight-bold">자유게시판에서 제목을 클릭</h5>
					<h5 class="mb-none dft text-light font-weight-bold">하면 이쪽으로 넘어옵니다.</h5>
					<h5 class="mb-none dft text-light font-weight-bold">더조은</h5>
					<h5 class="mb-none dft text-light font-weight-bold">^^</h5>
					<h5 class="mb-none dft text-light font-weight-bold">댓글기능이 필요함.</h5>
			</div>
		</div>
	</div>
	<div class="site_con_wrp">
		<div class="container">
			<ul>
				<li><a href="/"><img src="http://www.parkofdream.com/theme/s007/img/site_home.png" alt="" title=""></a></li>
			</ul>
		</div>
	</div>
	
	<div class="sec_dvd">
		<div class="container">
			<div class="stit text-center">
				<h2 class="dft mb-none font-weight-bold">자유게시판</h2>
				<div class="lined"></div>
			</div>
			<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
			<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/index/board_list.css" type="text/css">
			
			<form name="writeFrm">
			<!--  
			게시물 삭제를 위해 hidden타입의 input상자를 하나 추가한다. 
			삭제 버튼 클릭시 서버로 전송할 예정이다. 
			-->
			<input type="hid-den" name="num" value="<%= num %>" />  
			    <table border="1" width="90%">
			        <tr>
			            <td>번호</td>
			            <td><%= dto.getNum() %></td>
			            <td>작성자</td>
			            <td><%= dto.getName() %></td>
			        </tr>
			        <tr>
			            <td>작성일</td>
			            <td><%= dto.getPostdate() %></td>
			            <td>조회수</td>
			            <td><%= dto.getVisitcount() %></td>
			        </tr>
			        <tr>
			            <td>제목</td>
			            <td colspan="3"><%= dto.getTitle() %></td>
			        </tr>
			        <tr>
			            <td>내용</td>
			            <td colspan="3" height="100">
			       			${fn:replace(dto.getContent, replaceChar, "\\n") }
			               <%= dto.getContent().replace("\r\n", "<br/>") %>
			            </td> 
			        </tr>
			        <tr>
			            <td colspan="4" align="center">
							<%
							if(session.getAttribute("UserId")!=null &&  dto.getId().equals(session.getAttribute("UserId").toString())){
							%>
						     <button type="button"
						             onclick="location.href='Edit.jsp?num=<%= dto.getNum() %>';">
						         수정하기</button>
						     <button type="button" onclick="deletePost();">삭제하기</button> 
							<%
							}
							%>
			 
			                <button type="button" onclick="location.href='List.jsp';">
			                    목록 보기
			                </button>
			                <button type="button" onclick="location.href='../Main/Main.jsp';">
			                    홈으로
			                </button>
			            </td>
			        </tr>
			    </table>
			</form>
		</div>
	</div>
	<%@ include file="../Main/inc/bottom.jsp"%>
</body>
</html>
