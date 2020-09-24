<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
#modiBtn {
	text-align: right;
}

#delBtn {
	text-align: right;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>어디서 만날래? 상세페이지</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="#"><h4>
											<b>${place.pName }</b>
										</h4></a>
									<div class="links_locat d-flex align-items-center">
										<div class="location">
											<p>
												<i class="fa fa-map-marker"></i>${place.pAddress }</p>
										</div>
										<div class="location">
											<p>
												<i class="fa fa-clock-o"></i>${place.pTime }</p>
										</div>
									</div>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="heart_mark" href="#"> <i class="ti-heart"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<img src="resources/puploadFiles/${place.pFileName }"
								style="width: 100%; height: 300px;" alt="img">
						</div>
						<div class="single_wrap">

							<h4>${place.pName }</h4>
							<p>${place.pOption }</p>
						</div>


					</div>
					<div style="text-align: right;">
						<a href="plist.mo" class="genric-btn warning radius">목록</a>
						<c:url var="pupdate" value="pupView.mo">
							<c:param name="pNo" value="${place.pNo }" />
						</c:url>
						<a href="${pupdate }" class="genric-btn success radius"
							id="modiBtn">수정</a>
						<c:url var="pdelete" value="pdelete.mo">
							<c:param name="pNo" value="${place.pNo }" />
						</c:url>
						<a href="${pdelete }" class="genric-btn danger radius" id="delBtn">삭제</a>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="job_sumary">
						<div class="summery_header">
							<h3>장소 상세 정보</h3>
						</div>
						<div class="job_content">
							<ul>
								<li>등록날짜: <span>${place.pRegDate }</span></li>
								<li>수용인원: <span>${place.pAcceptNum }</span></li>
								<li>대여 비용: <span>${place.pPrice }</span></li>
								<li>대여 시간: <span>${place.pTime }</span></li>
								<li>위치: <span id="place">${place.pAddress }</span></li>
							</ul>
						</div>
					</div>
					<div class="share_wrap d-flex">
						<span>Share at:</span>
						<ul>
							<li><a href="#"> <i class="fa fa-facebook"></i></a></li>
							<li><a href="#"> <i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"> <i class="fa fa-twitter"></i></a></li>
							<li><a href="#"> <i class="fa fa-envelope"></i></a></li>
						</ul>
					</div>
					<div class="job_location_wrap">
						<div class="job_lok_inner">
							<div id="map" style="height: 200px;"></div>
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b3ef93e917509222170b4eb7a9ac123c&libraries=services,clusterer,drawing"></script>
							<script>
								// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
								var infowindow = new kakao.maps.InfoWindow({
									zIndex : 1
								});

								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(37.566826,
											126.9786567), // 지도의 중심좌표
									level : 3
								// 지도의 확대 레벨
								};

								// 지도를 생성합니다    
								var map = new kakao.maps.Map(mapContainer,
										mapOption);

								// 장소 검색 객체를 생성합니다
								var ps = new kakao.maps.services.Places();

								$(function() {

									var keyWord = $("#place").html();
									// console.log(keyWord); 코솔에 체크 

									// 키워드로 장소를 검색합니다
									ps.keywordSearch(keyWord, placesSearchCB);

								});
								// 키워드 검색 완료 시 호출되는 콜백함수 입니다
								function placesSearchCB(data, status,
										pagination) {
									if (status === kakao.maps.services.Status.OK) {

										// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
										// LatLngBounds 객체에 좌표를 추가합니다
										var bounds = new kakao.maps.LatLngBounds();

										for (var i = 0; i < data.length; i++) {
											displayMarker(data[i]);
											bounds
													.extend(new kakao.maps.LatLng(
															data[i].y,
															data[i].x));
										}

										// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
										map.setBounds(bounds);
									}
								}

								// 지도에 마커를 표시하는 함수입니다
								function displayMarker(place) {

									// 마커를 생성하고 지도에 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : new kakao.maps.LatLng(
												place.y, place.x)
									});

									// 마커에 클릭이벤트를 등록합니다
									kakao.maps.event
											.addListener(
													marker,
													'click',
													function() {
														// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
														infowindow
																.setContent('<div style="padding:5px;font-size:12px;">'
																		+ place.place_name
																		+ '</div>');
														infowindow.open(map,
																marker);
													});
								}
							</script>


						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- link that opens popup -->
	<!-- JS here -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/ajax-form.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/scrollIt.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/nice-select.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/gijgo.min.js"></script>

	<!--contact js-->
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>

	<script src="js/main.js"></script>
</body>
</html>