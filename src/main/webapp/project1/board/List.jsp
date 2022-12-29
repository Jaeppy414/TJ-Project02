<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//DB연결 및 CRUD작업을 위한 DAO객체를 생성한다. 
BoardDAO dao = new BoardDAO(application);

Map<String, Object> param = new HashMap<String, Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
//사용자가 입력한 검색어가 있다면..
if (searchWord != null) {
	/* Map컬렉션에 컬럼명과 검색어를 추가한다. */
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}
//Map컬렉션을 인수로 게시물의 갯수를 카운트한다. 
int totalCount = dao.selectCount(param);

/**페이징 코드 추가부분 s***********************/
int pageSize = 
	Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = 
	Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
int totalPage = (int)Math.ceil((double)totalCount / pageSize);
int pageNum = 1;
String pageTemp = request.getParameter("pageNum");
if(pageTemp != null && !pageTemp.equals(""))
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
<title>회원제 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<!-- 공통링크 -->
	<%@ include file="../Main/inc/top.jsp"%>

	<div class="subtop text-center" style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
		<div class="container">
			<div class="c_wrp m_wrp v_m">
				<div>
					<h1 class="mb-none dft text-light font-weight-bold">자유 게시판</h1>
				</div>
					<h5 class="mb-none dft text-light font-weight-bold">자유롭게 쓰고 답변하실 수 있는 공간입니다.</h5>
					<h5 class="mb-none dft text-light font-weight-bold">제목을 클릭하면 글의 내용을 볼 수 있습니다.</h5>
					<h5 class="mb-none dft text-light font-weight-bold">더조은</h5>
					<h5 class="mb-none dft text-light font-weight-bold">^^</h5>
					<h5 class="mb-none dft text-light font-weight-bold">댓글기능이 필요함.</h5>
			</div>
		</div>
	</div>
	<!-- 검색폼 -->
	<div class="sec_dvd">
		<div class="container">
			<div class="stit text-center">
				<h2 class="dft mb-none font-weight-bold">자유게시판</h2>
				<div class="lined"></div>
			</div>
			<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
			<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/index/board_list.css" type="text/css">
			
			<form method="get">
				<table border="1" width="90%">
					<tr>
						<td align="center">
							<select name="searchField">
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select> 
							<input type="text" name="searchWord" /> 
							<input type="submit" value="검색하기" />
						</td>
					</tr>
				</table>
			</form>
	<!-- 게시물 목록 테이블(표) -->
			<table border="1" width="90%">
				
				<!-- 각 칼럼의 이름 -->
				<tr>
					<th width="10%">번호</th>
					<th width="50%">제목</th>
					<th width="15%">작성자</th>
					<th width="10%">조회수</th>
					<th width="15%">작성일</th>
				</tr>
				<!-- 목록의 내용 -->
				<%
				//컬렉션에 입력된 데이터가 없는지 확인한다. 
				if (boardLists.isEmpty()) {
				%>
				<tr>
					<td colspan="5" align="center">등록된 게시물이 없습니다^^*</td>
				</tr>
				<%
				} else {
				//출력할 게시물이 있는 경우에는 확장 for문으로 List컬렉션에
				//저장된 데이터의 갯수만큼 반복하여 출력한다. 
				int virtualNum = 0;
				for (BoardDTO dto : boardLists) {
					//현재 출력할 게시물의 갯수에 따라 출력번호는 달라지므로
					//totalCount를 사용하여 가상번호를 부여한다. 
					virtualNum = totalCount--;
				%>
				<tr align="center">
					<!-- 게시물의 가상번호 -->
					<td><%=virtualNum%></td>
					<!-- 제목 -->
					<td align="left">
						<a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a>
					</td>
					<!-- 작성자 아이디 -->
					<td align="center"><%=dto.getId()%></td>
					<!-- 조회수 -->
					<td align="center"><%=dto.getVisitcount()%></td>
					<!-- 작성일 -->
					<td align="center"><%=dto.getPostdate()%></td>
				</tr>
				<%
				}
				}
				%>
			</table>
			<table border="1" width="90%">
				<tr align="right">
					<td>
						<button type="button" onclick="location.href='../Main/Main.jsp'">홈으로</button>
					<%
						if (session.getAttribute("UserId") != null){
					%>
						<button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
					<%
					}
					%>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../Main/inc/bottom.jsp"%>
</body>
</html>
