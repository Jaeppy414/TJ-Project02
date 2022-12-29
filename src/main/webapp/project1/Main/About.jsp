<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
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
</style>
</head>
<body>
	<%@ include file="./inc/top.jsp"%>


	<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/skin/board/mt_basic1/style.css">
	<link rel="stylesheet" href="http://www.parkofdream.com/theme/s007/index/board_list.css" type="text/css">
	
	<div class="container">

		<h2>더조은 글램핑 소개</h2>
	
	
		<div class="row mt-5">
				<iframe style="width: 1000px; height: 800px" src="https://www.youtube.com/embed/4exzHOPhlmo" title="YouTube video player" 
					frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		
		</div>
		<div class="row mt-5">
			<div class="col-md-2">
			<img src="https://t1.daumcdn.net/cfile/tistory/237F7C4A58F8125E2F" alt="글램핑" />
			</div>
			<div class="col-md-8"></div>
			
				<h3>더조은 글램핑</h3>
				
				<br /><br /><br />
				
				<h3>글램핑이란?</h3>
				<br />
				
				<p>
					• 화려하다(glamorous)와 캠핑(camping)을 조합해 만든 신조어로 필요한 도구들이 모두 갖춰진 곳에서 안락하게 즐기는 캠핑을 뜻합니다. 
				</p>
				<br /><br />
				<p>•지친 일상 속 힐링의 시간! </p>
				<br /><br />
				<p>
					• 맑은 공기와 쏟아지는 밤하늘 별들 그리고 아날로그 정서의 결정판인 모닥불 아래서 최고의 구비시설과 새로운 경험을 할 수 있는 최고의 힐링여행이 되는 더조은글램핑 완주점에서 가족, 연인과 즐겁고 특별한 경험을 즐겨보세요.
				</p>
				
				
				<img src="https://cdn.imweb.me/thumbnail/20220120/271aec0d063c9.jpg" alt="글램핑" style="width: 700px"/>
				<p>
					• 텐트당 4인 초과로는 입장이 불가능합니다. (방문객, 유아 포함)<br>
					• 1동당 최대인원인 4인을 초과하지 않는 범위 내에서 방문객 입장가능하며, 방문객들은 관리실에서 체크인 이후 이용가능합니다. (방문객 요금15,000원 추가)<br>
					• 방문객-밥만 먹고 가시는 분, 얼굴보러 오신 분, 물건 갖다주러 오신 분 등 <br>
					• 최대인원 초과로 입실 불가시, 환불 불가능합니다.<br>
					• 입실: 오후3시~오후7시, 퇴실: 오전11시까지 <br>
					• 애완동물 입실불가<br>
					• 안전관리를 위해 개인화기용품 (화롯대, 바베큐그릴, 가스렌지, 전기그릴, 등)이용을 금합니다000.<br>
					• 개인사정과 날씨로 인한 날짜변경이 불가하니, 신중히 예약일을 정해주세요.<br>
					• 기물파손시 손해배상을 청구할 수 있습니다.​<br>
					• 부주의로 인한 사고시 책임지지 않습니다.<br>
					• 음주 소란시 강제 퇴실 되실 수 있습니다. (환불불가)<br>
					• 수건은 1명 1장 지급됩니다. 부족할 경우 추가로 챙겨오셔야합니다. <br>
					• 분실물은 7일간 보관합니다. 7일 이후 폐기처리되며 이에 대한 책임은 분실한 분께 있습니다. (택배발송 불가)<br>
					• 주차는 각 텐트당 1대씩 텐트옆에 주차 가능 (추가 차량은 외부주차장 이용)<br>
					• 무단입실시 전원강제 퇴장입니다. (환불불가)<br>
					• 수영장 이용시 물 이외의 음식물은 반입이 불가능합니다. (수질 유지를 위해 선크림, 아쿠아슈즈 착용불가)<br>
					• 예약완료 후 예약일은 개인사정 및 기상상황에 의해 변경불가하니, 예약 전 꼭 참고하시기 바랍니다.<br>
					• ​분실물에 대해 책임지지 않으며, 귀중품은 각자 잘 관리해주시기바랍니다.<br>
					• 도착시 체크인 주차장에 주차 후, 관리실에서 체크인 해주세요.
				</p>
			<div class="col-md-2"></div>
		</div>

	</div>
	<%@ include file="./inc/bottom.jsp"%>
</body>
</html>