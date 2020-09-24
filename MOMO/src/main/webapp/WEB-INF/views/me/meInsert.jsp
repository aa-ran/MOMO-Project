<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>나랑 팀 할래 등록</title>
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

<jsp:include page="../common/header.jsp"/>
	<!-- 이력사항 출력 -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-2 col-md-2"></div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30"><b>나랑 팀할래</b> | 등록</h3>
						<form action="meinsert.mo">
							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 아이디 </p>
									</div>
									<input type="text" name="mWriter" value="${loginUser.userId }" readonly class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i>제목 </p>
									</div>
									<input type="text" name="mTitle" required class="single-input" placeholder="제목">
								</div>
							
									<div class="single-element-widget mt-30">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 카테고리</p>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<input type="radio" name="mCategory" value="스터디" checked><p>스터디</p>
										<input type="radio" name="mCategory" value="공모전"><p>공모전</p>
										<input type="radio" name="mCategory" value="여가"><p>여가</p>
										<input type="radio" name="mCategory" value="취미"><p>취미</p>
										<input type="radio" name="mCategory" value="기타"><p>기타</p>
									</div>
								</div>
                             
                                
								<div class="input-group-icon mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 자기소개</p>
									</div>
									<textarea name="mContent" cols="80" rows="15" class="form-control" placeholder="자유롭게 자기 소개를 작성해보세요"></textarea>
								</div>
							
								<br>
								<div style="text-align:center;">
								<a href="melist.mo" class="genric-btn warning radius">목록</a>
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
	
<jsp:include page="../common/footer.jsp"/>
</body></html>