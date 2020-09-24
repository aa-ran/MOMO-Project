<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>QNA 답장보내기</title>
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
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
<style>
.submit-bt {
	text-align: right;
}

.b-title {
	color: #4e4e4e;
}

#a-area{
	text-align:left;
	
}

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<h3>
						<b class="b-title">알람 | </b>QNA 답장보기
					</h3>
					<form action="qnaUpdate.mo" method="post">
						<div class="descript_wrap white-bg">
							<table border="1" class="table table-bordered">
								<tr>
									<th colspan="2">받은시간</th>
									<td colspan="2">${noti.notCreateDate }</td>
								</tr>
								<tr style="text-align: center;">
									<td colspan="4">
										<c:if test="${qna.q eq 1}">
											<input type="text" class="form-control" value="다음 중 보다 우선시 하는 인재상은?" name="q" readonly>
										</c:if>
										<c:if test="${qna.q eq 2}">
											<input type="text" class="form-control" value="팀원들과 SNS 공유할 수 있나요?" name="q" readonly>
										</c:if>
										<c:if test="${qna.q eq 3}">
											<input type="text" class="form-control" value="팀 회식 주기는 어떤 것이 적당할까요?" name="q" readonly>
										</c:if>
										<c:if test="${qna.q eq 4}">
											<input type="text" class="form-control" value="상주근무 VS 재택근무중 이상적인 근무환경은?" name="q" readonly>
										</c:if>
										<c:if test="${qna.q eq 5}">
											<input type="text" class="form-control" value="어떤리더가 좋은 리더일까요?" name="q"  readonly>
										</c:if>
									</td>
								</tr>
								<tr>
									<td id="a-area" colspan="4">
										<h4>
											<b class="b-title">${qna.aUserId }님의 답변</b>
										</h4>
										<input type="text" value="${qna.a }" class="form-control" readonly>
									</td>
								</tr>
							</table>
							<div class="submit-bt">
								<a href="${back }" class="genric-btn default-border radius">뒤로가기</a>
								<a href="notiList.mo?userId=${loginUser.userId }" class="genric-btn default-border radius">목록보기</a>
							</div>
						</div>
					</form>
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