<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>나랑 팀할래?</title>
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
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="featured_candidates_area candidate_page_padding">
		<form action="meSearch.mo" method="get">
			<div class="catagory_area" style="height: 30px">
				<div class="container">
					<div class="row cat_search">
						<!-- <div class="col-lg-3 col-md-4">
						<div class="single_input">
							<select class="wide">
								<option data-display="분류">분류</option>
								<option value="0">스터디</option>
								<option value="1">공모전</option>
								<option value="2">스포츠</option>
								<option value="3">취미</option>
								<option value="4">기타</option>

							</select>
						</div>
					</div> -->
						<div class="col-lg-3 col-md-5">
							<div class="single_input">
								<select class="wide" name="searchCondition">
									<option value="title">제목</option>
									<option value="content">내용</option>
									<option value="writer">작성자</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3 col-md-5">
							<div class="single_input">
								<input type="text" placeholder="검색할 단어" name="searchValue">
							</div>
						</div>
						<div class="col-lg-3 col-md-12">
							<div class="job_btn">
								<button type="submit"
									class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn">검색</button>
							</div>
						</div>
						<div class="col-lg-3 col-md-5">
							<div class="job_btn">
								<a href="meWriterView.mo" class="boxed-btn3"
									style="background-color: skyblue;">나랑 팀할래? 글작성</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<br>
		<br>
		<div class="container">
			<c:forEach var="me" items="${list }">
				<div class="row" style="align: center">
					<div class="col-md-1 col-lg-11">
						<div class="single_candidates text-center">
							<div class="thumb">
								<c:if test="${me.mCategory eq '스터디'}">
									<img src="img/candiateds/스터디.png" alt="">
								</c:if>
								<c:if test="${me.mCategory eq '공모전'}">

									<img src="img/candiateds/공모전.png" alt="">
								</c:if>
								<c:if test="${me.mCategory eq '취미'}">

									<img src="img/candiateds/취미.png" alt="">
								</c:if>
								<c:if test="${me.mCategory eq '여가'}">

									<img src="img/candiateds/여가.png" alt="">
								</c:if>
								<c:if test="${me.mCategory eq '기타'}">

									<img src="img/candiateds/기타.png" alt="">
								</c:if>
							</div>
							<h4>${me.mWriter }</h4>
							<c:url var="medetail" value="medetail.mo">
								<c:param name="mId" value="${me.mId }" />
							</c:url>

							<p>
								<a href=${medetail }>${me.mTitle }</a>
							</p>
							<p>조회수 ${me.meCount }</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

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
					<c:url var="before" value="melist.mo">
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
						<c:url var="pagenation" value="melist.mo">
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
					<c:url var="after" value="melist.mo">
						<c:param name="page" value="${pi.currentPage + 1 }" />
					</c:url>
					<li class="page-item"><a href="${after }" class="page-link"
						aria-label="Next"> <i class="ti-angle-right"></i>
					</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>