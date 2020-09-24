<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
	charset="utf-8"></script>
<script async defer crossorigin="anonymous"
	src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v7.0&appId=640300356832420&autoLogAppEvents=1"
	nonce="buO6qjhc"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>간편로그인</title>
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
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 410px;
}

/* Set gray background color and 100% height */
.sidenav {
	/*background-color: #87d1f2;*/
	background-image: url('img/banner/mainBanner.jpg');
	height: 100%;
	width: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #87d1f2;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: 410px;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

table {
	width: 100%;
	height: 100%;
	text-align: center;
}

#f-btn:hover {
	color: #ffffff;
	border: 1.5px solid #ffffff;
	font-weight: bold;
	background: transparent;
}
</style>
</head>
<body>
	<script type="text/javascript">
		window.onload = function() {
			if ($ {
					param.type
				} == 1) {
				receiveNoteBox();
			} else if ($ {
					param.type
				} == 2) {
				sendNoteBox();
			} else if ($ {
					param.type
				} == 3) {
				writeNote();
			}
		}
        

		function changeNavi(num) {
			if (num == 1) {
				$("#li1").addClass("active");
				$("#li2").removeClass("active");
				$("#li3").removeClass("active");
			} else if (num == 2) {
				$("#li1").removeClass("active");
				$("#li2").addClass("active");
				$("#li3").removeClass("active");
			} else if (num == 3) {
				$("#li1").removeClass("active");
				$("#li2").removeClass("active");
				$("#li3").addClass("active");
			}
		}

	</script>

	<div class="container-fluid" style="text-align: center;">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<br> <img src="img/momologo-03.png" alt="" style="width: 40%">
				<br> <br>
				<h2 class="bradcam_text" style="color: white;">간편가입/로그인</h2>
				<br>

				<!-- 페이스북 시작 -->
				<script>
					var finished_rendering = function() {
					  console.log("finished rendering plugins");
					  var spinner = document.getElementById("spinner");
					  spinner.removeAttribute("style");
					  spinner.removeChild(spinner.childNodes[0]);
					}
					FB.Event.subscribe('xfbml.render', finished_rendering);
				</script>
					<div id="spinner"
					    style="
					    background: #4267b2;
					    border-radius: 5px;
					    color: white;
					    height: 40px;
					    text-align: center;
					    width: 250px;">
							<div class="fb-login-button"
							data-max-rows="1"
							data-size="large"
							data-button-type="continue_with"
							data-use-continue-as="true">
							</div>
					</div>
				<!-- 페이스북 간편 로그인 종료 -->


				<!-- 네이버 간편 로그인 -->
				<div id="naverIdLogin"></div>
				<!-- 네이버아디디로로그인 초기화 Script -->
				<script type="text/javascript">
					var naverLogin = new naver.LoginWithNaverId(
						{
							clientId: "dKFkZibN3yPnv_xvcDAA",
							callbackUrl: "http://localhost:8111/callback.jsp",
							isPopup: false, /* 팝업을 통한 연동처리 여부 */
							loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
						}
					);
					
					/* 설정정보를 초기화하고 연동을 준비 */
					naverLogin.init();
				</script>
				<!-- // 네이버아이디로로그인 초기화 Script -->
				<br> <br> <a href="#" onclick="javascript:popUp();"
					class="boxed-m-btn" style="width: 300px;" id="m-btn">모모 계정으로
					계속하기</a>
			</div>
		</div>
	</div>

</body>
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
			var width = 430, height = 415;
		    var popupX = (document.body.offsetWidth / 2) - (width / 2);
		    //&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
		
		    var popupY= (window.screen.height / 2) - (height / 2);
		    //&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		      
			var url="signIn.mo";
		    /*var url = "/views/note/noteBox.jsp?type=1";*/
		    var option    = "width = " + width + ", height = " + height +", "
		    			+ "top = "+ popupY + ", left = " + popupX + ", resizable=no, status=no, location=no";
		    var title = "간편가입/로그인";
			window.open(url, title, option);	
		};
</script>
</html>