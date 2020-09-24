<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>고객센터 관리</title>
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
.b-title {
	color: #4e4e4e;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />
	<!--테이블시작 -->
	<div class="section-top-border text-center">
		<div class="container box_1170">
			<h3 class="mb-30">
				<b class="b-title"></b>
			</h3>
			<div class="table-wrap">
				<table class="table" style="background-color: #F0F0F2" width="600px">
					<tr style="background: #4cd3e3; color: white;">
						<th>NO.</th>
						<th>알람 내역</th>
						<th>날짜</th>
					</tr>
					<c:if test="${notiList == null }">
						<tr>
							<td colspan="3">${notiMsg }</td>
						</tr>
					</c:if>
					<c:forEach var="noti" items="${notiList }">
						<tr>
							<td>${noti.notId}</td>
							<td><a href="notiDetail.mo?notId=${noti.notId }">${noti.notContent }</a></td>
							<td>${noti.notCreateDate }</td>
						</tr>
					</c:forEach>
				</table>

				<!-- 페이지네이션 -->
				<nav class="blog-pagination justify-content-center d-flex">
					<ul class="pagination">
						<!-- [이전] -->
						<c:if test="${pi.currentPage<=1}">
							<li class="page-item"><a class="page-link"
								aria-label="Previous"> <i class="ti-angle-left"></i>
							</a></li>
						</c:if>
						<c:if test="${pi.currentPage>1 }">
							<c:url var="before" value="welist.mo">
								<c:param name="page" value="${pi.currentPage -1 }" />
							</c:url>
							<li class="page-item"><a href="${before }" class="page-link"
								aria-label="Previous"> <i class="ti-angle-left"></i>
							</a></li>
						</c:if>

						<!-- 페이징 넘버링(누른페이지) -->
						<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
							<c:if test="${p eq pi.currentPage }">
								<li class="page-item"><a class="page-link"><font
										color="skyblue">${p }</font></a></li>
							</c:if>

							<!-- 페이지 넘버링 (안누른  페이지) -->
							<c:if test="${p ne pi.currentPage }">
								<c:url var="pagenation" value="welist.mo">
									<c:param name="page" value="${p }" />
								</c:url>
								<li class="page-item"><a href="${pagenation }"
									class="page-link">${p }</a></li>
							</c:if>
						</c:forEach>

						<!-- [다음] -->
						<c:if test="${pi.currentPage >= pi.maxPage }">
							<li class="page-item"><a class="page-link" aria-label="Next">
									<i class="ti-angle-right"></i>
							</a></li>
						</c:if>
						<c:if test="${pi.currentPage < pi.maxPage }">
							<c:url var="after" value="welist.mo">
								<c:param name="page" value="${pi.currentPage + 1 }" />
							</c:url>
							<li class="page-item"><a href="${after }" class="page-link"
								aria-label="Next"> <i class="ti-angle-right"></i>
							</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
