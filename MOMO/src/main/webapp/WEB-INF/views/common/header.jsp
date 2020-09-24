<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="x-ua-compatible" content="ie=edge">
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
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/slicknav.css">

<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
<title>메뉴바</title>
<style>
b {
	color: white;
}
</style>
</head>
<body>
	<!-- 메세지 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<c:if test="${!empty msg }">
	<script>
		swal("${msg}", "","success");
	      
     </script>
	</c:if>
	
	<c:if test="${!empty msgErr }">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script>
		swal("${msgErr}", "","error");
     </script>
	</c:if>


	<header>
		<!-- 로그인/회원가입 팝업-->
		<div class="popup_section" style="display: none;"></div>
		<!-- header-start -->
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area">
				<div class="container-fluid ">
					<div class="header_bottom_border">
						<div class="row align-items-center">
							<div class="col-xl-3 col-lg-2">
								<div class="logo">
									<a href="index.jsp"> <img src="img/momologo-03.png" alt=""
										style="width: 30%;">
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-7">
								<div class="main-menu  d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="home.mo">MOMO</a></li>
											<li><a href="melist.mo">나랑팀할래? <i
													class="ti-angle-down"></i></a>
												<ul class="submenu">
													<li><a href="meCategoryList.mo?category=1">스터디 </a></li>
													<li><a href="meCategoryList.mo?category=2">공모전 </a></li>
													<li><a href="meCategoryList.mo?category=3">스포츠</a></li>
													<li><a href="meCategoryList.mo?category=4">취미</a></li>
													<li><a href="meCategoryList.mo?category=5">기타</a></li>
												</ul></li>
											<li><a href="welist.mo">우리팀할래? <i class="ti-angle-down"></i></a>
												<ul class="submenu">
													<li><a href="weCategoryList.mo?category=1">스터디 </a></li>
													<li><a href="weCategoryList.mo?category=2">공모전 </a></li>
													<li><a href="weCategoryList.mo?category=3">스포츠</a></li>
													<li><a href="weCategoryList.mo?category=4">취미</a></li>
													<li><a href="weCategoryList.mo?category=5">기타</a></li>
												</ul></li>
											<li><a href="plist.mo">어디서볼래? </a>
											<li><a href="nlist.mo">모모의이야기</a></li>
										</ul>
									</nav>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="main-menu d-none d-lg-block">
										<c:if test="${!empty loginUser}">
											<div class="col-lg-3"></div>
											<nav>
												<ul id="navigation">
													<li><a href="profile.mo?userId=${loginUser.userId }"><b
															style="color: white;">${loginUser.nickName }님</b>의 마이페이지
															<i class="ti-angle-down"></i></a>
														<ul class="submenu">
															<c:if test="${loginUser.userId ne 'admin' }">
																<li><a
																	href="profile.mo?userId=${loginUser.userId }">회원정보</a></li>
																<li><a href="notiList.mo?userId=${loginUser.userId }">알람</a></li>	
																<li><a href="msgList.mo?toId=${loginUser.userId }">쪽지함</a>
																<li><a href="prList.mo?userId=${loginUser.userId }">장소
																		대관 내역 </a></li>
																<li><a
																	href="svcWriterView.mo?userId=${loginUser.userId}">고객센터
																</a></li>
																<li><a href="logout.mo">로그아웃</a></li>
															</c:if>

															<c:if test="${loginUser.userId eq 'admin' }">
																<li><a
																	href="profile.mo?userId=${loginUser.userId }">회원정보</a></li>
																<li><a href="msgList.mo?toId=${loginUser.userId }">쪽지함</a>
																<li><a href="sclist.mo">고객센터 </a></li>
																<li><a href="blist.mo">블랙리스트 </a></li>
																<li><a href="mlist.mo">회원전체조회 </a></li>
																<li><a href="logout.mo">로그아웃</a></li>
															</c:if>
															<!--<a class="boxed-btn3" href="#"></a>-->
														</ul></li>
												</ul>
											</nav>
										</c:if>
										<c:if test="${empty loginUser }">
											<a class="boxed-btn3" href="javascript:popUp();">로그인/회원가입</a>
										</c:if>
									</div>
								</div>
							</div>

							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- header-end -->
		<!-- slider_area_start -->
		<div class="slider_area">
			<div class="single_slider  d-flex align-items-center slider_bg_1">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-7 col-md-6">
							<div class="slider_text">
								<h5 class="wow fadeInLeft" data-wow-duration="1s"
									data-wow-delay=".2s">모두모여</h5>
								<h3 class="wow fadeInLeft" data-wow-duration="1s"
									data-wow-delay=".3s">모모와 함께 하세요</h3>
								<p class="wow fadeInLeft" data-wow-duration="1s"
									data-wow-delay=".4s">
									공모전, 스터디부터 스포츠까지 <br>마음에 맞는 팀을 만들어 보세요.
								</p>
								<div class="sldier_btn wow fadeInLeft" data-wow-duration="1s"
									data-wow-delay=".5s">
									<a href="welist.mo" class="boxed-btn3">우리팀할래?</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="ilstration_img wow fadeInRight d-none d-lg-block text-right"
				data-wow-duration="1s" data-wow-delay=".2s">
				<img src="img/banner/illustration.png" alt=""
					style="width: 890px; height: 700px">
			</div>
		</div>
		<!-- slider_area_end -->
	</header>

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

	<!-- <script src="js/gijgo.min.js"></script> -->
	<script src="js/range.js"></script>

	<!--contact js-->
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>

	<script>
		/* 로그인/회원가입 팝업 창*/
		function popUp(){
			var width = 400, height = 420;
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
        </script>

</body>
</html>