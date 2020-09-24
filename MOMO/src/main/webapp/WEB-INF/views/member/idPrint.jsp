<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기 결과</title>
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
.container-fluid {
	/*background-color: #87d1f2;*/
	width: 380px;
	height: 400px;
	background-image: url('img/banner/mainBanner.jpg');
}

h2 {
	color: white;
}

h4 {
	color: white;
}

b {
	color: white;
}
</style>
</head>
<body>
	<div class="container-fluid" style="text-align: center;">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<br> <img src="img/momologo-03.png" alt="" style="width: 35%">
				<br>
				<br>
				<h3>
					<b>아이디 찾기 결과</b>
				</h3>
				<br>
				<h4>
					귀하의 아이디는 <br> <b>${member.userId }</b>입니다.
				</h4>
				<button onclick="#" class="genric-btn success">로그인</button>
				<button onclick="javascript:findPwd();" class="genric-btn default-border">비밀번호 찾기</button>
			</div>
		</div>
	</div>

	<!-- 비밀번호 팝업창 -->
	<script>
		function findPwd() {
			var width = 430,
				height = 500;
			var popupX = (document.body.offsetWidth / 2) - (width / 2);
			//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
		
			var popupY = (window.screen.height / 2) - (height / 2);
			//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
			var url = "findPwdView.mo";
			/*var url = "/views/note/noteBox.jsp?type=1";*/
			var option = "width = " + width + ", height = " + height + ", " +
				"top = " + popupY + ", left = " + popupX + ", resizable=no, status=no, location=no";
			var title = "간편가입/로그인";
			window.open(url, title, option);
		};
	</script>
</body>
</html>