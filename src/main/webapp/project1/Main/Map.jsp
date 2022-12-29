<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>지도 생성하기</title>

</head>
<body>
	<%@ include file="./inc/top.jsp"%>
	<!-- 지도를 표시할 div 입니다 -->
	<div class="subtop text-center"
		style="background: url(http://www.parkofdream.com/theme/s007/img/parallax5.jpg) center center no-repeat;">
		<div class="container">
			<div class="c_wrp m_wrp v_m">
				<div>
					<h1 class="mb-none dft text-light font-weight-bold">오시는 길</h1>
				</div>
				<h5 class="mb-none dft text-light font-weight-bold">지도</h5>
				<h5 class="mb-none dft text-light font-weight-bold">^^</h5>
				<h5 class="mb-none dft text-light font-weight-bold">더조은</h5>
				<h5 class="mb-none dft text-light font-weight-bold">^^</h5>
			</div>
		</div>
	</div>
	<div id="camp_02" class="clearfix">
		<div class="sec1 sec_dvd">
			<div class="container">
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
								<span class="font-weight-bold f_pop">ADD.</span> 서울특별시 종로구 번지 3호
								4 KR 서울특별시 종로구 관철동 180 5 층
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


	<%@ include file="./inc/bottom.jsp"%>
</body>
</html>