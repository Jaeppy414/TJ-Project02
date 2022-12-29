<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">  
    
		<nav class="navbar navbar-expand-md bg-light navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">
				  <img src="https://www.tjoeun.co.kr/images/logo.gif?v=20190918" alt="TJ 글램핑" onclick="location.href='../Main/Main.jsp';"> 
				</a>
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="../Main/About.jsp">글램핑 소개</a></li>
						<li class="nav-item"><a class="nav-link" href="../notice/noticeMain.jsp">공지사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#">이벤트</a></li>
						<li class="nav-item"><a class="nav-link" href="../board/List.jsp">자유게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="#">리뷰</a></li>
						<li class="nav-item"><a class="nav-link" href="#">포토</a></li>
						<li class="nav-item"><a class="nav-link" href="../Main/Map.jsp">오시는길</a></li>
					</ul>
			</div>
			
			<div class="container-fluid">
				<ul class="navbar-nav ms-auto text-light">
					<% if(session.getAttribute("UserId") == null){ %>
					<li class="nav-item"><a class="nav-link" onclick="location.href='../regidate/RegidateForm.jsp';">
					<i class='bi bi-person-plus-fill' style='font-size: 20px'></i>회원가입</a></li>
					<% 
					}
					else {
					%>
					<li class="nav-item"><a class="nav-link" onclick="location.href='../regidate/editForm2.jsp';"><i
							class='bi bi-person-lines-fill' style='font-size: 20px'></i>회원정보수정</a>
					</li>
					<li class="nav-item"><a class="nav-link" >
					<i class='bi bi-person-lines-fill' style='font-size: 20px'></i><%=session.getAttribute("UserName") %>님 환영합니다.</a></li>
					<% 
					}
					%>
					
					<% if(session.getAttribute("UserId") == null){ %>
					<li class="nav-item"><a class="nav-link" href="#" onclick="location.href='../Login/LoginForm.jsp';">
					<i class='bi bi-box-arrow-in-right' style='font-size: 20px' ></i>로그인</a></li>
					<% 
					}
					else {
					%>
					<li class="nav-item"><a class="nav-link" href="#" onclick="location.href='../Login/Logout.jsp';">
					<i class='bi bi-box-arrow-right' style='font-size: 20px'></i>로그아웃</a></li>
					<% 
					}
					%>
				</ul>
			</div>
		</nav>