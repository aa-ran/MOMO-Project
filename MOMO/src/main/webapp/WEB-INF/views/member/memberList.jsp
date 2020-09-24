<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>회원 관리</title>
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
	<jsp:include page="../common/header.jsp" />


	<div class="section-top-border text-center">
		<div class="container box_1170">
			<h3 class="mb-30">
				<b>회원 관리</b>
			</h3>
			<div class="table-wrap">

				<table class="table" style="background-color: #F0F0F2">
					<tr style="background: #4cd3e3; color: white;">

						<th>아이디</th>
						<th>이름</th>
						<th>주소</th>
						<th>휴대폰번호</th>
						<th>블랙리스트 추가</th>

					</tr>
					<c:forEach var="m" items="${list }">

						<!--테이블시작 -->
						
						<tr>
							<td>${m.userId }</td>
							<td>${m.userName}</td>
							<td>${m.address }</td>
							<td>${m.phone }</td>


							<td width="300px">
								<form action="binsert.mo" id="target" method="post">
							<input type="hidden" name="userId" id="userId"> 
							<input type="hidden" name="reason" id="reason">
							<button type="button" class="genric-btn success"
									onclick="return inputReason(this);">추가</button>
							</form>

							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!--페이지-->
		<div class="row">
			<div class="col-lg-12">
				<div class="pagination_wrap">
					<ul>
						<li><a href="#"> <i class="ti-angle-left"></i>
						</a></li>
						<li><a href="#"><span>01</span></a></li>
						<li><a href="#"><span>02</span></a></li>
						<li><a href="#"> <i class="ti-angle-right"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<script>
				function inputReason(obj) {
					console.log($(obj));
					var userId = $(obj).parent().parent().siblings().eq(0)
							.text();
					var reason = prompt("이유를 입력해주세요 : " + "");
					if (reason == "") {
						alert("블랙리스트 추가에 실패했습니다.");
						return false;
					} else {
						alert("블랙리스트에 추가되었습니다.");
						$("#userId").val(userId);
						$("#reason").val(reason);
						$("#target").submit();
					}

				};
			</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>
