<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">  
    
<style type="text/css">
* {
  box-sizing: border-box;
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
}
</style>
</head>
<body>

<div class="container-fluid">
<!-- TOP 부분 -->
    <%@ include file="inc/top.jsp"%>
	<!-- Carousel -->
	<div id="demo" class="carousel slide" data-bs-ride="carousel">
		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		</div>
		<!-- The slideshow/carousel -->
		<div class="container carousel-inner">
			<div class="carousel-item active">
			  	<img src="http://www.parkofdream.com/theme/s007/img/about1.jpg" alt="image1" class="d-block" style="width: 100%; height: 600px">
			</div>
			<div class="carousel-item">
			  	<img src="http://www.parkofdream.com/theme/s007/img/about2.jpg" alt="image2" class="d-block" style="width: 100%; height: 600px">
			</div>
			<div class="carousel-item">
			  	<img src="http://www.parkofdream.com/theme/s007/img/about3.jpg" alt="image3" class="d-block" style="width: 100%; height: 600px">
			</div>
		</div>
		
		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
		  	<span class="carousel-control-next-icon"></span>
		</button>
	</div>
<!-- 콘텐츠 부분 -->
	<div class="container mt-5">
		<div class="row">
			<div class="card " style="width:300px; cursor:pointer">
				<img class="card-img-top" src="http://www.parkofdream.com/theme/s007/img/msec2_room2_2.jpg" 
					alt="Card image" onclick="javascript:location.href='http://www.parkofdream.com/theme/s007/index/facility_03.php'">
				<div class="card-body">
					<h4 class="card-title">캠프파이어</h4>
					<p class="card-text">캠프파이어 구매</p>
					<a href="http://www.parkofdream.com/theme/s007/index/facility_03.php" class="btn btn-dark">자세히 보기</a>
				</div>
			</div>
			<div class="card" style="width:300px; cursor:pointer">
				<img class="card-img-top" src="https://www.daraegol.com/data/file/stay_special/2949574932_mUPYvp2O_a655b3b343164c3e748608aba4a92c1d0c864870.jpg" 
					alt="Card image" onclick="javascript:location.href='https://www.daraegol.com/stay_special/%EA%B0%9C%EB%B3%84%ED%85%8C%EB%9D%BC%EC%8A%A4%EB%B0%94%EB%B2%A0%ED%81%90/'">
				<div class="card-body">
					<h4 class="card-title">바베큐</h4>
					<p class="card-text">바베큐 구매</p>
					<a href="https://www.daraegol.com/stay_special/%EA%B0%9C%EB%B3%84%ED%85%8C%EB%9D%BC%EC%8A%A4%EB%B0%94%EB%B2%A0%ED%81%90/" class="btn btn-dark">자세히 보기</a>
				</div>
			</div>
			<div class="card" style="width:300px; cursor:pointer">
				<img class="card-img-top" src="https://www.hyundai.co.kr/image/upload/asset_library/MDA00000000000017992/18af512c31cb4a29a59a61f8a8cf06e6.jpg" 
					alt="Card image" onclick="javascript:location.href='https://www.hyundai.co.kr/image/upload/asset_library/MDA00000000000017992/18af512c31cb4a29a59a61f8a8cf06e6.jpg'">
				<div class="card-body">
					<h4 class="card-title"></h4>
					<p class="card-text">캠핑 체험 플랫폼</p>
					<a href="https://www.hyundai.co.kr/news/CONT0000000000023556" class="btn btn-dark">자세히 보기</a>
				</div>
			</div>
		</div>
	</div>	
			<!-- 지도부분 -->

		<div id="camp_02" class="clearfix">
			<div class="sec1 sec_dvd">
				<div class="container mt-5">
					<div class="stit text-center">
						<h2 class="dft mb-none font-weight-bold">오시는 길</h2>
						<div class="lined"></div>
					</div>
					<div class="tabs tab_box conbox">
						<div class="tab-content">
							<div id="tab1" class="tab-pane active">
								<div class="map_box" align="center">
									<div id="map" style="width: 800px; height: 500px;"></div>
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=74d24ef56b0114dd5ba90c6fc82bfaac"></script>
									<script>
										var mapContainer = document
												.getElementById('map'), // 지도를 표시할 div 
										mapOption = {
											center : new kakao.maps.LatLng(
													37.569125, 126.984655), // 지도의 중심좌표
											level : 3
										// 지도의 확대 레벨
										};
	
										// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
										var map = new kakao.maps.Map(mapContainer,
												mapOption);
	
										//마커가 표시될 위치입니다 
										var markerPosition = new kakao.maps.LatLng(
												37.569125, 126.984655);
	
										// 마커를 생성합니다
										var marker = new kakao.maps.Marker({
											position : markerPosition
										});
	
										// 마커가 지도 위에 표시되도록 설정합니다
										marker.setMap(map);
	
										// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
										// marker.setMap(null);
									</script>
								</div>
							</div>
						</div>
					</div>
	
					<div class="map_main">
						<ul class="list-unstyled mb-none row text-center">
							<li class="col-sm-4 col-xs-12">
								<h5 class="dft mb-none font-weight-light">
									<span class="font-weight-bold f_pop">ADD.</span> 서울특별시 종로구 번지 3호 4 KR 서울특별시 종로구 관철동 180 5 층
								</h5>
							</li>
							<li class="col-sm-4 col-xs-12">
								<h5 class="dft mb-none font-weight-light">
									<span class="font-weight-bold f_pop">TEL.</span> 02-123-4567
								</h5>
							</li>
						</ul>
					</div>
					<div class="map_txt">
						<h4 class="dft mb-none font-weight-bold">자동차로 오시는 길</h4>
						<ul class="list-unstyled mb-none clearfix road_wrp">
							<li class="">
								<h5 class="dft mb-none font-weight-semibold">네비게이션 이용시</h5>
								<p class="dft mb-none font-weight-light">
									해당 주소로 검색하시기 바랍니다. <span class="font-weight-bold">[서울특별시
										종로구 번지 3호 4 KR 서울특별시 종로구 관철동 180 5 층]</span>
								</p>
							</li>
						</ul>
					</div>
					<div class="map_txt map_txt2 pb-none">
						<h4 class="dft mb-none font-weight-bold">대중교통으로 오시는 길</h4>
						<ul class="list-unstyled mb-none clearfix road_wrp">
							<li class="">
								<h5 class="dft mb-none font-weight-semibold">지하철 이용</h5>
								<p class="dft mb-none font-weight-light">1호선 종각역에서 하차 → 지도보고
									잘 찾아오세요~^^</p>
							</li>
	
						</ul>
					</div>
				</div>
			</div>
		</div>
<!-- 카피라이트 -->
	<%@ include file="./inc/bottom.jsp"%>
</div>
</body>
</html>