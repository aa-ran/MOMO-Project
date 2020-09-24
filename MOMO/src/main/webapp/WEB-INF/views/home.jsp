<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>메인 페이지</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/slicknav.css">

<link rel="stylesheet" href="css/style.css">

<style>
.b-title {
	color: #4e4e4e;
}

.high-team {
	padding-top: 10px;
}
</style>


<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<!-- catagory_area -->
	<form action="exceptSearch.mo" method="get" accept-charset="utf-8">
	<div class="catagory_area">
		<div class="container">
			<div class="row cat_search">
				<div class="col-lg-3 col-md-4">
					<div class="single_input">
						<select class="wide" name="searchCategory">
							<option value="we">우리랑팀할래?</option>
							<option value="me">나랑팀할래?</option>
						</select>
					</div>
				</div>
				<div class="col-lg-3 col-md-4">
					<div class="single_input">
						<select class="wide" name="searchCondition">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="writer">작성자</option>
						</select>
					</div>
				</div>
				<div class="col-lg-3 col-md-4">
					<div class="single_input">
						<input type="text" name="searchValue" placeholder="Search keyword">
					</div>
				</div>
				<div class="col-lg-3 col-md-12">
					<div class="job_btn">
						<button type="submit" class="boxed-btn3">검색</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	<!--/ catagory_area -->

	<!-- 기대되는 팀 보기(베스트 팀) -->
	<!-- <div class="popular_catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section_title mb-40">
						<a href="highHitTeam.mo" class="boxed-btn3">기대되는 팀</a>
						<h3><b class="b-title">기대되는 팀</b></h3>
					</div>
				</div>
			</div>
			
			<div class="row" id="highTeam-area">
				<div class="col-lg-6 col-xl-4 col-md-6">
					<div class="single_catagory">
						<img src="img/job/1.png" style="width: 100%; height: 200px;">
						<a href="">
							<h4 class="high-team"><b class="b-title">팀 이름</b></h4>
						</a>
						<p>
							<span>조회수 | 0</span>&nbsp; <span>분야 | 음식</span> 
						</p>
						<p>닉네임</p>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<div class="popular_catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section_title">
						<h3>
							<b class="b-title">기대되는 팀 리스트</b>
						</h3>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="brouse_job text-right">
						<a href="welist.mo" class="boxed-btn3">더 많은 팀리스트 보기</a>
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<c:forEach var="list" items="${list }">
					<div class="col-lg-6 col-xl-4 col-md-6">
						<div class="single_catagory">
							<img src="/resources/wuploadFiles/${list.wFileName }"
								style="width: 100%; height: 200px;"> <a
								href="wedetail.mo?wId=${list.wId }">
								<h4 class="high-team">
									<b class="b-title">${list.wTeamName }</b>
								</h4>
							</a>
							<p>
								By ${list.wWriter } <br> ${list.wTitle }<br> <br>
								<span>조회수 | ${list.wCount }</span>&nbsp; <span>분야 |
									${list.wCategory }</span>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- 기대되는 팀 보기 끝 -->

	<!-- 새로운 메이트 시작-->
	<div class="job_listing_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="section_title">
						<h3>
							<b class="b-title">새로운 메이트</b>
						</h3>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="brouse_job text-right">
						<a href="melist.mo" class="boxed-btn3">더 많은 메이트 보기</a>
					</div>
				</div>
			</div>
			<div class="job_lists">
				<div class="row">
					<c:forEach var="me" items="${meList }">
						<div class="col-lg-12 col-md-12">
							<div class="single_jobs white-bg d-flex justify-content-between">
								<div class="jobs_left d-flex align-items-center">
									<div class="thumb">
										<c:if test="${me.mCategory eq '스터디'}">

											<img src="img/candiateds/스터디.png" width="50" height="50"
												alt="">
										</c:if>
										<c:if test="${me.mCategory eq '공모전'}">

											<img src="img/candiateds/공모전.png" width="50" height="50"
												alt="">
										</c:if>
										<c:if test="${me.mCategory eq '취미'}">

											<img src="img/candiateds/취미.png" width="50" height="50"
												alt="">
										</c:if>
										<c:if test="${me.mCategory eq '여가'}">

											<img src="img/candiateds/여가.png" width="50" height="50"
												alt="">
										</c:if>
										<c:if test="${me.mCategory eq '기타'}">

											<img src="img/candiateds/기타.png" width="50" height="50"
												alt="">
										</c:if>
									</div>
									<div class="jobs_conetent">
										<a href="job_details.html"><h4>
												<c:url var="medetail" value="medetail.mo">
													<c:param name="mId" value="${me.mId }" />
												</c:url>


												<b class="b-title"><a href=${medetail }>${me.mTitle }</a></b>
										<div class="links_locat d-flex align-items-center">
											<div class="location">
												<p>
													<i class="fa fa-map-marker"></i>BY ${me.mWriter}
												</p>
											</div>
											<div class="location">
												<p>${me.mCreateDate }</p>
											</div>
										</div>
									</div>
								</div>
								<div class="jobs_right">
									<div class="apply_now">
										</a> <a href="medetail.mo?mId=${me.mId }" class="boxed-btn3">자세히
											보기</a>
									</div>
									<div class="date">
										<p>${me.mCategory }</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 새로운 메이트 끝  -->

	<!-- 새로운 장소 시작-->
	<div class="top_companies_area">
		<div class="container">
			<div class="row align-items-center mb-40">
				<div class="col-lg-6 col-md-6">
					<div class="section_title">
						<h3>
							<b class="b-title">새로운 장소</b>
						</h3>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="brouse_job text-right">
						<a href="plist.mo" class="boxed-btn3">더 많은 장소 보기</a>
					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach var="place" items="${pList }">
					<div class="col-lg-4 col-xl-4 col-md-6">
						<div class="single_category">
							<div class="thumb">
								<img src="/resources/puploadFiles/${place.pFileName }"
									style="width: 100%; height: 200px;" alt="">
							</div>
							<br> <a href="pdetail.mo?pNo=${place.pNo }"><h3>
									<b class="b-title">${place.pName }</b>
								</h3></a>
							<p>
								<i class="fa fa-map-marker"></i>${place.pAddress }
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- 새로운 장소 끝 -->


	<!-- 관심가는 게시글 시작-->
	<c:if test="${loginUser != null }">
		<div class="top_companies_area">
			<div class="container">
				<div class="row align-items-center mb-40">
					<div class="col-lg-6 col-md-6">
						<div class="section_title">
							<h3>
								<b class="b-title">회원님이 관심있을 팀 리스트</b>
							</h3>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="brouse_job text-right">
							<a href="welist.mo" class="boxed-btn3">더 많은 팀리스트 보기</a>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach var="interest" items="${interest }">
						<div class="col-lg-4 col-xl-4 col-md-6">
							<div class="single_category">
								<div class="thumb">
									<img src="/resources/wuploadFiles/${interest.wFileName }"
										style="width: 100%; height: 200px;" alt="">
								</div>
								<br> <a href="wedetail.mo?wId=${interest.wId }"><h3>
										<b class="b-title">${interest.wTitle }</b>
									</h3></a>
								<p>
									<i class="fa fa-map-marker"></i>${interest.wWriter }
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</c:if>
	<!--  관심가는 게시글  끝 -->

	<!-- 광고  -->
	<div class="job_searcing_wrap overlay">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 offset-lg-1 col-md-6">
					<div class="searching_text">
						<h3>팀을 찾으세요?</h3>
						<p>모모가 당신에게 딱 맞는 팀을 찾아드릴 수 있습니다</p>
						<a href="#" class="boxed-btn3">우리랑 팀할래?</a>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1 col-md-6">
					<div class="searching_text">
						<h3>팀원을 찾으세요?</h3>
						<p>모모가 당신의 팀에 딱 맞는 팀원을 찾아드릴 수 있습니다</p>
						<a href="#" class="boxed-btn3">나랑 팀할래?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- job_searcing_wrap end  -->

	<!-- footer start -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


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
<!-- 	<script src="js/nice-select.min.js"></script> -->
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

	<!-- 함수 -->
	<script>
		/* 로그인/회원가입 팝업 창*/
		function popUp(){
			var width = 400, height = 500;
		    var popupX = (document.body.offsetWidth / 2) - (width / 2);
		    //&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
		
		    var popupY= (window.screen.height / 2) - (height / 2);
		    //&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		      
			var url="loginPopUp.mo";
		    /*var url = "/views/note/noteBox.jsp?type=1";*/
		    var option    = "width = " + width + ", height = " + height +", "
		    			+ "top = "+ popupY + ", left = " + popupX + ", resizable=no, status=no, location=no";
		    var title = "간편가입/로그인";
			window.open(url, title, option);	
		};
        $( function() {
            $( "#slider-range" ).slider({  
                range: true,
                min: 0,
                max: 24600,
                values: [ 750, 24600 ],
                slide: function( event, ui ) {
                    $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] +"/ Year" );
                }
            });
            $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
                " - $" + $( "#slider-range" ).slider( "values", 1 ) + "/ Year");
        } );
        
        $(document).ready(function(){
        /*기대되는 팀 출력*/
        	$("#highTeam-area").load("/highHitTeam");
        });
        </script>

</body>

</html>