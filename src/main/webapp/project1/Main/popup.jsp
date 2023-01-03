<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style type="text/css">
/* 오늘 하루 보지 않기 팝업 */
button {
	border: 0;
	background: none;
	cursor: pointer;
}

.main_popup {
	position: fixed;
	z-index: 1005;
	-webkit-box-shadow: 0px 13px 40px -6px #061626;
	box-shadow: 0px 13px 40px -6px #061626;
	top: 50px;
	left: 50px;
	display: none; &. on { display : block;
	background-color: #fff;
}

.img_wrap {
	width: 200px;
	height: 200px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.btn_close {
	width: 32px;
	height: 32px;
	position: absolute;
	top: 17px;
	right: 17px;
	font-size: 0;
	border: 0;
	background: none; &:: before { content : "";
	width: 2px;
	height: 32px;
	background-color: #333;
	position: absolute;
	top: 0;
	left: 15px;
	transform: rotate(45deg);
}

&
::after {
	content: "";
	width: 32px;
	height: 2px;
	background-color: #333;
	position: absolute;
	top: 15px;
	left: 0;
	transform: rotate(45deg);
}

}
.btn_today_close {
	width: 100%;
	height: 45px;
	background-color: #333;
	text-align: center;
	color: #fff;
	font-size: 14px;
	display: block; span { display : block;
	line-height: 40px;
	vertical-align: bottom;
	opacity: 0.8;
}
}
}
</style>
<script type="text/javascript">
<script src="<https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js>"></script>
<script type="text/javascript">
function screenCenterPop(){
    /* 
    screen객체를 통해 사용하는 모니터의 현재 해상도를 구해올 수 있다. 해상도와 팝업창의 
    크기를 이용해서 본인의 모니터에서 가운데 위치를 지정하여 팝업창을 열 수 있다.
     */
    var s_width = window.screen.width;
    var s_height = window.screen.height;
    /* 
    팝업창의 크기가 300px이므로 좌측상탄에서 150px이동해야 화면의 정중앙에 팝업창을 위치시킬 수 있다.
    */
    var leftVar = s_width/2 - 300/2;
    var topVar = s_height/2 - 300/2;
    window.open("popup.jsp", "popup", "width=300,height=300,left="+ leftVar +",top="+ topVar);
}
  function closePopup(){
    if(document.getElementById("check").value){
      Cookies.set('popupCheck', 'no', { expires: 24 });
    }
  //자기 자신을 닫는 dom method
    self.close();
  }
</script>
</head>
<body>
	<div style="text-align: center">
		<img
			src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/03/17/605146bfeed1b.jpg"
			style="max-width: 100%;">
		<div style="text-align: center">
			<input type="checkbox" id="check" onclick="closePopup()">
			<fontsize=3> <b>더 이상 보지 않기</b>
		</div>
	</div>
</body>
</html>