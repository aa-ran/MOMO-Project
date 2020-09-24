<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보</title>
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
		#title_b {
			color:#4e4e4e;
		}
		b {
			text-align:left;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section class="sample-text-area">
		<div class="container box_1170">
			<div>
                <h3><b id="title_b">회원정보</b></h3>${loginUser.userName } / ${loginUser.interest }
            </div>
			<p class="sample-text"></p>
            <div>
            	<c:url var="mModifyView" value="mModifyView.mo">
            		<c:param name="userId" value="${loginUser.userId }"/>
            	</c:url>
				<c:url var="mDeleteView" value="mDeleteView.mo">
					<c:param name="userId" value="${loginUser.userId }"/>
				</c:url>
                <a href="${mModifyView}" class="genric-btn success radius">회원정보수정</a>
                <a href="${mDeleteView}" class="genric-btn danger-border radius">회원탈퇴</a>
            </div>
		</div>
	</section>
	<!-- End Sample Area -->

	<!-- 이력사항 출력 -->
	<div class="whole-wrap">
		<div class="container box_1170">
		
			<c:if test="${career == null }">
				<h3><b id="title_b">등록된 경력 사항이 없습니다.</b></h3>
				<a href="cInsertView.mo" class="genric-btn success radius">경력 사항 추가</a>
				<br><br>
			</c:if>
			
			<c:if test="${career != null }">
				<div class="section-top-border">
				<h3><b>커리어</b></h3>
					<c:url var="cModifyView" value="cModifyView.mo">
		            	<c:param name="userId" value="${loginUser.userId }"/>
		            </c:url>
					<a href="${cModifyView}" class="genric-btn success radius">커리어 수정</a>
					<div class="row">
						<div class="col-lg-12">
							<br>
							<h4 class="mb-30">경력사항</h4>
							<blockquote class="generic-blockquote">
								<textarea class="form-control" rows="5" readonly>${career.career }
									<c:if test="${career == null }">${msgP }
									</c:if>
								</textarea>
							</blockquote>
						</div>
					</div>
				</div>
				<div class="section-top-border">
					<h4 class="mb-30">수상내역</h4>
					<div class="row">
						<div class="col-lg-12">
							<blockquote class="generic-blockquote" >
								<textarea class="form-control" rows="5" readonly>${career.awards }
									<c:if test="${career == null }">${msgP }
									</c:if>
								</textarea>
							</blockquote>
						</div>
					</div>
				</div>
		        <div class="section-top-border">
					<h4 class="mb-30">포트폴리오</h4>
					<div class="row">
						<div class="col-lg-12">
							<blockquote class="generic-blockquote">
								<textarea name="portfolio" class="form-control" rows="5" required placeholder="포트폴리오 내용을 입력하세요." readonly>${career.portfolio }
								</textarea>
								<br>
								<a href="${contextPath }/resources/cuploadFiles/${career.cFileName }"download>
									${career.cFileName }
								</a>
							</blockquote>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>		
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
</body>
</html>