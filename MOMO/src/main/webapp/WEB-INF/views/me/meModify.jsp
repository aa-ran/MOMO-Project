<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>나랑 팀 할래 수정</title>
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
</style>
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<jsp:include page="../common/header.jsp" />
	<!-- 이력사항 출력 -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-2 col-md-2"></div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">
							<b>나랑 팀할래</b> | 게시글 수정
						</h3>
						<form action="meupdate.mo" method="post">
							<input type="hidden" name="mId" value="${me.mId }">

							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 아이디
										</p>
									</div>
									<input type="text" name="mWriter"  value="${me.mWriter }" readonly
										class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i>제목
										</p>
									</div>
									<input type="text" name="mTitle" value="${me.mTitle }" class="single-input"
										placeholder="제목">
								</div>

								<div class="single-element-widget mt-30">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 카테고리
										</p>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<c:if test="${me.mCategory eq '스터디' }">
										<input type="radio" name="mCategory" value="스터디" checked>
										<p>스터디</p>
										<input type="radio" name="mCategory" value="공모전">
										<p>공모전</p>
										<input type="radio" name="mCategory" value="스포츠">
										<p>스포츠</p>
										<input type="radio" name="mCategory" value="취미">
										<p>취미</p>
										<input type="radio" name="mCategory" value="기타">
										<p>기타</p>
										</c:if>
										
										<c:if test="${me.mCategory eq '공모전' }">
										<input type="radio" name="mCategory" value="스터디" >
										<p>스터디</p>
										<input type="radio" name="mCategory" value="공모전" checked>
										<p>공모전</p>
										<input type="radio" name="mCategory" value="스포츠">
										<p>스포츠</p>
										<input type="radio" name="mCategory" value="취미">
										<p>취미</p>
										<input type="radio" name="mCategory" value="기타">
										<p>기타</p>
										</c:if>
										
										<c:if test="${me.mCategory eq '스포츠' }">
										<input type="radio" name="mCategory" value="스터디" >
										<p>스터디</p>
										<input type="radio" name="mCategory" value="공모전">
										<p>공모전</p>
										<input type="radio" name="mCategory" value="스포츠" checked>
										<p>스포츠</p>
										<input type="radio" name="mCategory" value="취미">
										<p>취미</p>
										<input type="radio" name="mCategory" value="기타">
										<p>기타</p>
										</c:if>
										
										<c:if test="${me.mCategory eq '취미' }">
										<input type="radio" name="mCategory" value="스터디" >
										<p>스터디</p>
										<input type="radio" name="mCategory" value="공모전">
										<p>공모전</p>
										<input type="radio" name="mCategory" value="스포츠">
										<p>스포츠</p>
										<input type="radio" name="mCategory" value="취미" checked>
										<p>취미</p>
										<input type="radio" name="mCategory" value="기타">
										<p>기타</p>
										</c:if>
										
										<c:if test="${me.mCategory eq '기타' }">
										<input type="radio" name="mCategory" value="스터디" >
										<p>스터디</p>
										<input type="radio" name="mCategory" value="공모전">
										<p>공모전</p>
										<input type="radio" name="mCategory" value="스포츠">
										<p>스포츠</p>
										<input type="radio" name="mCategory" value="취미">
										<p>취미</p>
										<input type="radio" name="mCategory" value="기타" checked>
										<p>기타</p>
										</c:if>
										
										
									</div>
								</div>


								<div class="input-group-icon mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 자기소개
										</p>
									</div>
									<textarea name="mContent" cols="80" rows="15"
										class="form-control">${me.mContent }</textarea>
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

	<jsp:include page="../common/footer.jsp" />
</body>
</html>