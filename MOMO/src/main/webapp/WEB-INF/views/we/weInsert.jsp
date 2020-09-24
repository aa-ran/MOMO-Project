 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>우리팀할래? 게시글 등록</title>
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
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/slicknav.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- <link rel="stylesheet" href="css/responsive.css"> -->
    <style>
        
        textarea{
            resize: none;
        }
        
    </style>
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

<jsp:include page="../common/header.jsp"/>

	<!-- 이력사항 출력 -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-2 col-md-2"></div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30"><b>우리팀할래</b> | 게시글 등록</h3>
						<form action="weInsert.mo" method="post" enctype="Multipart/form-data">
							<div class="section-top-border">
								<input type="hidden" name="wWriter" value="${loginUser.userId }">
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 게시글 제목</p>
									</div>
									<input type="text" name="wTitle" required class="single-input" placeholder="팀 제목">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 팀 이름</p>
									</div>
									<input type="text" name="wTeamName" required class="single-input" placeholder="팀 이름">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 현재 팀 인원</p>
									</div>
									<input type="text" name="teamMember" required class="single-input" placeholder="ex) 6">
								</div>

								<div class="single-element-widget mt-30">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 카테고리</p>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
									    <input type="radio" name="wCategory" checked value="스터디">
										<p>스터디</p>
										<input type="radio" name="wCategory" value="공모전">
										<p>공모전</p>
										<input type="radio" name="wCategory" value="여가">
										<p>여가</p>
										<input type="radio" name="wCategory" value="취미">
										<p>취미</p>
										<input type="radio" name="wCategory" value="기타">
										<p>기타</p>
									</div>
								</div>
								<div class="input-group-icon mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 팀 소개</p>
									</div>
									<textarea name="wContent" cols="80" rows="15" placeholder="자유롭게 팀 소개를 해주세요" class="form-control"></textarea>
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 데드라인</p>
									</div>
									<input type="date" name="wDeadline" required class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 팀 로고</p>
									</div>
									<input type="file" name="uploadFile" class="single-input">
								</div>
								<br>
								<div style="text-align:center;">
									<input type="submit" class="genric-btn success radius" value="등록">&nbsp;&nbsp;
									<input type="reset" class="genric-btn default radius" value="취소">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->
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
	<script>
		$('#datepicker').datepicker({
			iconsLibrary: 'fontawesome',
			icons: {
				rightIcon: '<span class="fa fa-caret-down"></span>'
			}
		});
		$('#datepicker2').datepicker({
			iconsLibrary: 'fontawesome',
			icons: {
				rightIcon: '<span class="fa fa-caret-down"></span>'
			}

		});
	</script>
	
	<jsp:include page="../common/footer.jsp"/>
</body></html>