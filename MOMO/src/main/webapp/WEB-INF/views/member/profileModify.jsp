<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
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
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-2 col-md-2"></div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">
							<b>회원정보 수정</b>
						</h3>
						<form action="mModify.mo" method="post">
							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 아이디
										</p>
									</div>
									<input type="text" name="userId" required class="single-input"
										placeholder="아이디" value="${loginUser.userId }" readonly>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 이름
										</p>
									</div>
									<input type="text" name="userName" required
										class="single-input" placeholder="이름"
										value="${loginUser.userName }" readonly>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 생년월일
										</p>
									</div>
									<input type="text" name="birth" required class="single-input"
										placeholder="ex)930503" value="${loginUser.birth }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 성별
										</p>
									</div>
								</div>
								<div class="single-element-widget mt-30">
									<c:if test="${loginUser.gender eq 'F' }">
										<div class="switch-wrap d-flex justify-content-between">
											<input type="radio" name="gender" value="F" checked>
											<p>여자</p>
											<input type="radio" name="gender" value="M">
											<p>남자</p>
										</div>
									</c:if>

									<c:if test="${loginUser.gender eq 'M' }">
										<div class="switch-wrap d-flex justify-content-between">
											<input type="radio" name="gender" value="F">
											<p>여자</p>
											<input type="radio" name="gender" value="M" checked>
											<p>남자</p>
										</div>
									</c:if>

								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 닉네임
										</p>
									</div>
									<input type="text" name="nickName" required
										class="single-input" placeholder="닉네임"
										value="${loginUser.nickName }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 전화번호
										</p>
									</div>
									<input type="text" name="phone" required class="single-input"
										placeholder="숫자만 입력" value="${loginUser.phone }">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 이메일
										</p>
									</div>
									<input type="text" name="email" required class="single-input"
										placeholder="user@email.com" value="${loginUser.email }">
								</div>

								<!-- 주소 입력 -->

								<c:forTokens var="address" items="${loginUser.address }"
								
									delims="," varStatus="status">
									<c:if test="${status.index == 0 }">
										<div class="mt-10">
											<div>
												<p>
													<i class="fa fa-thumb-tack" aria-hidden="true" ></i> 우편번호
												</p>
											</div>
											<input type="text" name="post" class="single-input"
												value="${address }" size="1" button type="button" id="postcodify_search_button"></button>

											
										</div>
									</c:if>


									<c:if test="${status.index == 1 }">
										<div class="mt-10">
											<div>
												<p>
													<i class="fa fa-thumb-tack" aria-hidden="true"></i> 도로명 주소
												</p>
											</div>
											<input type="text" name="address1" class="single-input"
												value="${address }">
										</div>
									</c:if>

									<c:if test="${status.index == 2 }">
										<div class="mt-10">
											<div>
												<p>
													<i class="fa fa-thumb-tack" aria-hidden="true"></i> 상세 주소
												</p>
											</div>
											<input type="text" name="address2"
												class="single-input" value="${address }">
										</div>
									</c:if>
								</c:forTokens>

								<!-- jQuery와 postcodify 를 로딩한다. -->
								<script	src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
								<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
								<!-- jQuery를 두번 적어놔서 오류 발생 -->
								<script>
									// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
									$(function() {
										$("#postcodify_search_button")
												.postcodifyPopUp();
									});
								</script>

								<!-- 주소 입력 종료 -->

								<br>
								<div style="text-align: center;">
									<input type="submit" class="genric-btn success radius"
										value="수정하기">&nbsp;&nbsp; <input type="reset"
										class="genric-btn default radius" value="취소하기">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- End Align Area -->
	<!-- JS here -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<!-- 	<script src="js/vendor/jquery-1.12.4.min.js"></script> -->
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
	</script>
</body>
</html>