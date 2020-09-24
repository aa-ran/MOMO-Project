<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>어디서볼래? 수정페이지</title>
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
</head>
<body>
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-2 col-md-2"></div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">
							<b>어디서 만날래</b> | 게시글 수정
						</h3>
						<form action="pupdate.mo" method="post"
							enctype="Multipart/form-data">
							<input type="hidden" name="pNo" value="${place.pNo }"> <input
								type="hidden" name="pFilePath" value="${place.pFilePath }">
							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 장소 이름
										</p>
									</div>
									<input type="text" name="pName" required class="single-input"
										value="${place.pName }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 주소
										</p>
									</div>
									<input type="text" name="pAddress" required
										class="single-input" value="${place.pAddress }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 최대 수용 인원
										</p>
									</div>
									<input type="text" name="pAcceptNum" required
										class="single-input" placeholder="ex) 6"
										value="${place.pAcceptNum }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 가격
										</p>
									</div>
									<input type="text" name="pPrice" required class="single-input"
										placeholder="ex) 30000" value="${place.pPrice }">
								</div>

								<div class="single-element-widget mt-30">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 시간
										</p>
									</div>
									<div class="default-select" id="default-select">
										<select id="pTime" name="pTime">
											<option value="10:00-12:00">10시~12시</option>
											<option value="13:00-15:00">1시~3시</option>
											<option value="15:00-17:00">3시~5시</option>
											<option value="17:00-19:00">5시~7시</option>
										</select>
									</div>
								</div>
								<div class="input-group-icon mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 옵션
										</p>
									</div>
									<textarea name="pOption" cols="80" rows="15"
										class="form-control">${place.pOption }</textarea>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 첨부파일
										</p>
									</div>
									<input type="file" name="reloadFile" class="single-input">
									<%-- <c:if test="${ !empty place.pFilePath }">
										<a
											href="${contextPath }/resources/puploadFiles/${place.pFilePath }">
											${place.pFilePath } </a>
									</c:if> --%>
								</div>
								<br>
								<div style="text-align: center;">
									<input type="submit" class="genric-btn success radius"
										value="수정">&nbsp;&nbsp; <input type="reset"
										class="genric-btn default radius" value="취소">
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
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
		$("#pTime option:selected").val();
	</script>
</body>
</html>