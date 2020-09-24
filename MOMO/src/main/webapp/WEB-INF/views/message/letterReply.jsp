<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>답장 보내기</title>
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

#b-title {
	color: #4e4e4e;
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
						<b id="b-title">답장 보내기</b>
					</h3>
					<div class="descript_wrap white-bg">
						<form action="replyMessage.mo" method="post">
							<table border="1" class="table table-bordered">
								<tr>
									<th colspan="2">보낸사람</th>
									<td colspan="2">
										<input type="text" name="toId" value="${message.fromId }" class="form-control" readonly >
										<!-- 답장 = 보낸사람(from)이 받는 사람(to)으로 변경 -->
										<input type="hidden" name="fromId" value="${loginUser.userId }">
										<!-- 답장 = 보내는 사람은 loginUser -->
									</td>
								</tr>
								<tr style="text-align: center;">
									<td colspan="4">
										<textarea cols="70" rows="10"name="msContent" class="form-control">
										</textarea>
									</td>
								</tr>
							</table>
							<div class="submit-bt">
								<input type="submit" class="genric-btn success radius" value="보내기">
								<c:url var="back" value="${header.referer }" />
								<a href="${back }" class="genric-btn default-border radius">뒤로가기</a>
								<!--Web에서 패킷이 전송될 때 그 패킷의 구조를 보면 header와 body로 나누어져 있습니다 
	    header에 다양한 정보가 포함되어있는데 예를 들어 user-agent(브라우저) referer(이전페이지)들이 있습니다   -->
							</div>
						</form>
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