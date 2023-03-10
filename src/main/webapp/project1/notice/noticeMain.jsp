<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
BoardDAO dao = new BoardDAO(application);

Map<String, Object> param = new HashMap<String, Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");

if (searchWord != null) {
	/* Map컬렉션에 컬럼명과 검색어를 추가한다. */
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}
//Map컬렉션을 인수로 게시물의 갯수를 카운트한다. 
int totalCount = dao.selectCount(param);

/**페이징 코드 추가부분 s***********************/
int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));

int totalPage = (int) Math.ceil((double) totalCount / pageSize);

int pageNum = 1;
String pageTemp = request.getParameter("pageNum");
if (pageTemp != null && !pageTemp.equals(""))
	pageNum = Integer.parseInt(pageTemp);

int start = (pageNum - 1) * pageSize;
int end = pageSize;

param.put("start", start);
param.put("end", end);
/**페이징 코드 추가부분 e***********************/

//목록에 출력할 게시물을 추출하여 반환받는다. 
List<BoardDTO> boardLists = dao.selectList(param);
//자원해제
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<%@ include file="../Main/inc/top.jsp"%>

	<div class="subtop text-center"
		style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
		<div class="container">
			<div class="c_wrp m_wrp v_m">
				<div>
					<h1 class="mb-none dft text-light font-weight-bold">공지사항</h1>
				</div>
				<h5 class="mb-none dft text-light font-weight-bold">공지사항
					게시판입니다.</h5>
				<h5 class="mb-none dft text-light font-weight-bold">제목을 클릭하면 글의
					내용을 볼 수 있습니다.</h5>
				<h5 class="mb-none dft text-light font-weight-bold">더조은</h5>
				<h5 class="mb-none dft text-light font-weight-bold">^^</h5>
			</div>
		</div>
	</div>
	<div class="site_con_wrp">
		<div class="container">
			<ul class="list-unstyled mb-none">
				<li><a href="/"><img
						src="http://www.parkofdream.com/theme/s007/img/site_home.png"
						alt="" title=""></a></li>
			</ul>
		</div>
	</div>
	<div class="sec_dvd">
		<div class="container">
			<div class="stit text-center">
				<h2 class="dft mb-none font-weight-bold">공지사항</h2>
				<div class="lined"></div>
			</div>
			<link rel="stylesheet"
				href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
			<link rel="stylesheet"
				href="http://www.parkofdream.com/theme/s007/index/board_list.css"
				type="text/css">
			<div role="main" class="main">
				<div id="board_01_list">
					<!--board tap시작-->
					<div id="board_tap_wrp">
						<div class="board_tap pb-xl">
							<ul class="nav sort-source font-size-md"></ul>
						</div>
					</div>
					<div id="board_wrap">
						<!--board list-->
						<form name="fboardlist" id="fboardlist"
							action="./board_list_update.php"
							onsubmit="return fboardlist_submit(this);" method="post">
							<div id="board_list">
								<table class="table table_list">
									<thead>
										<th class="num">No.</th>
										<th class="sbj">제목</th>
										<th class="id">작성자</th>
										<th class="date">등록일</th>
									</thead>
									<%
									if (boardLists.isEmpty()) {
									%>
									<tr>
										<td colspan="5" align="center">등록된 게시물이 없습니다^^*</td>
									</tr>
									<%
									} else {
									int virtualNum = 0;

									for (BoardDTO dto : boardLists) {
										virtualNum = totalCount--;
									%>
									<tr align="center">
										<!-- 게시물의 가상번호 -->
										<td><%=virtualNum%></td>
										<!-- 제목 -->
										<td align="left"><a
											href="../board/View.jsp?num=<%=dto.getNum()%>"> <%=dto.getTitle()%></a>
										</td>
										<!-- 작성자 아이디 -->
										<td align="center"><%=dto.getId()%></td>
										<!-- 작성일 -->
										<td align="center"><%=dto.getPostdate()%></td>
									</tr>
									<%
									}
									}
									%>
								</table>
								<tr align="right">
									<td>
										<button type="button"
											onclick="location.href='../Main/Main.jsp'">홈으로</button> <%
 if ((session.getAttribute("UserId") != null && session.getAttribute("UserId").equals("admin"))) {
 %>
										<button type="button"
											onclick="location.href='../board/Write.jsp';">글쓰기</button> <%
 }
 %>
									</td>
								</tr>

								<h1 align="center">자주 묻는 질문</h1>
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<a class="btn" data-bs-toggle="collapse" href="#collapseOne">
												뭐가 이렇게 안돼</a>
										</div>
										<div id="collapseOne" class="collapse show"
											data-bs-parent="#accordion">
											<div class="card-body">ㅋ</div>
										</div>
									</div>

									<div class="card">
										<div class="card-header">
											<a class="collapsed btn" data-bs-toggle="collapse"
												href="#collapseTwo"> 질문2 </a>
										</div>
										<div id="collapseTwo" class="collapse"
											data-bs-parent="#accordion">
											<div class="card-body">답변2</div>
										</div>
									</div>

									<div class="card">
										<div class="card-header">
											<a class="collapsed btn" data-bs-toggle="collapse"
												href="#collapseThree"> 질문3 </a>
										</div>
										<div id="collapseThree" class="collapse"
											data-bs-parent="#accordion">
											<div class="card-body">답변3</div>
										</div>
									</div>

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


	</div>
	<%@ include file="../Main/inc/bottom.jsp"%>
</body>
</html>