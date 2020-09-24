<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>공지사항 상세페이지</title>
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
table {
	text-align: center;
}

.submit-bt {
	text-align: right;
}

.back-bt {
	text-align: left;
}

table {
	text-align: center;
	width: 100%;
	border-left: 1px solid #ffffff;
	border-right: 1px solid #ffffff;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin-bottom: 20px;
}

table th {
	text-align: center;
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table td {
	text-align: center;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

textarea {
	resize: none;
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
						<b>공지사항</b> | 상세보기
					</h3>
					<br>
					<div class="descript_wrap white-bg" style="text-align: center;">
						<table border="1">
							<tr>


								<%-- <tr>
                            <td>제목</td>
                            <td>${notice.nTitle }</td>
                            </tr>
                            
                             <tr>
                            <td>작성자</td>
                            <td>${notice.nWriter }</td>
                            </tr>
                            
                             <tr>
                            <td>내용</td>
                            <td>${notice.nContent}</td>
                            </tr>
                            
                              <tr>
                            <td>조회수</td>
                            <td>${notice.nCount}</td>
                            </tr> --%>

								<th colspan="5">
									<h6>${notice.nId }</h6>
									<h4>
										<b>${notice.nTitle }</b>
									</h4>
									<h6>${notice.nCreateDate }</h6>
									<div style="text-align: right;">
										<i class="fa fa-eye"> 조회수 ${notice.nCount }</i>
									</div>
								</th>
							<tr>
								<td colspan="5"><textarea cols="70" rows="15"
										class="form-control" readonly>${notice.nContent }</textarea></td>
							</tr>
						</table>
						<div class="menu-bt">
							<div class="back-bt col-lg-4"></div>
							<div class="submit-bt col-lg-13">
								<a href="nlist.mo" class="genric-btn warning radius">목록</a>
								<c:url var="nupdate" value="nupView.mo">
									<c:param name="nId" value="${notice.nId }"></c:param>
									<!-- 쿼리스트링(nId넘겨주기) -->
								</c:url>
								<c:if test="${!empty loginUser}"> 
                        			<c:if test="${loginUser.userId eq 'admin' }">
										<a href="${nupdate }" class="genric-btn success radius">수정</a>
										<c:url var="ndelete" value="ndelete.mo">
											<c:param name="nId" value="${notice.nId }" />
										</c:url>
										<a href="${ndelete }" class="genric-btn danger radius">삭제</a>
									</c:if>
								</c:if>
							</div>
						</div>
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