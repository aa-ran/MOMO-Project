<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>회원가입</title>
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
span.guide{
		display : none;
		font-size : 12px;
		top : 12px;
		right: 10px;
	}	
	
	span.ok{color:green}
	span.error{color:red}
	
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
							<b>회원가입</b>
						</h3>
						<form action="minsert.mo" method="post"	enctype="Multipart/form-data" id="join">
							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 아이디
										</p>
									</div>
									<input type="text" name="userId" id="userId" required class="single-input" placeholder="아이디">
									
									 <span class="guide ok">이 아이디는 사용 가능합니다.</span> 
									 <span class="guide error">이 아이디는 사용할 수 없습니다.</span>
									  <input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">

								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 비밀번호
										</p>
									</div>
									<input type="password" name="password" required class="single-input" placeholder="비밀번호">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 비밀번호 확인
										</p>
									</div>
									<input type="password" name="passwordRe" required
										class="single-input" placeholder="비밀번호 확인">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 이름
										</p>
									</div>
									<input type="text" name="userName" required
										class="single-input" placeholder="닉네임">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 닉네임
										</p>
									</div>
									<input type="text" name="nickName" required
										class="single-input" placeholder="닉네임">
								</div>
								<div class="single-element-widget mt-30">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 성별
										</p>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>여성</p>
										<input type="radio" name="gender" value="F" checked>
										<p>남성</p>
										<input type="radio" name="gender" value="M">
									</div>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 생년월일
										</p>
									</div>
									<input type="date" name="birth" required class="single-input">
								</div>
								<div class="mt-10" style="float: left;">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 우편번호
										</p>
									</div>
									<div>
										<input type="text" id="postcode" name="post" required
											class="single-input" style="width: 50%; float: left;"
											readonly>
									</div>
									<div style="float: left;">
										&nbsp;
										<button type="button" class="genric-btn success radius"
											onClick="openDaumZipAddress();">검색</button>
									</div>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 도로명 주소
										</p>
									</div>
									<input type="text" id="address1" name="address1" required
										class="single-input" style="width: 60%;" readonly>
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 상세 주소
										</p>
									</div>
									<input type="text" id="address2" name="address2" required
										class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 핸드폰번호
										</p>
									</div>
									<input type="text" name="phone" required class="single-input"
										placeholder="ex) 010-1111-1111">
								</div>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 이메일
										</p>
									</div>
									<input type="email" name="email" required class="single-input"
										placeholder="이메일@email.com">
								</div>
								<div class="single-element-widget mt-30">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 관심분야
										</p>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>스터디</p>
										<input type="radio" name="interest" checked value="스터디">
										<p>공모전</p>
										<input type="radio" name="interest" value="공모전">
										<p>스포츠</p>
										<input type="radio" name="interest" value="스포츠">
										<p>취미</p>
										<input type="radio" name="interest" value="취미">
										<p>기타</p>
										<input type="radio" name="interest" value="기타">
									</div>
								</div>
								<br>
								<h3>
									<b>이력서</b>
								</h3>
								<input type="button" id="careerAdd" value="추가"
									class="genric-btn success radius" onClick="addCareer();">
								<input type="button" id="careerMin" value="취소"
									class="genric-btn success radius" onClick="minCareer();"
									style="display: none;">
								<div class="section-top-border" id="careerDiv"
									style="display: none;">
									<div class="mt-10">
										<input type="hidden" id="careerVal" name="careerCheck"
											value="F">
										<div>
											<p>
												<i class="fa fa-thumb-tack" aria-hidden="true"></i> 경력사항
											</p>
										</div>
										<textarea name="career" cols="80" rows="5"
											class="form-control"></textarea>
									</div>
									<div class="mt-10">
										<div>
											<p>
												<i class="fa fa-thumb-tack" aria-hidden="true"></i> 수상이력
											</p>
										</div>
										<textarea name="awards" cols="80" rows="5"
											class="form-control"></textarea>
									</div>
									<div class="mt-10">
										<div>
											<p>
												<i class="fa fa-thumb-tack" aria-hidden="true"></i> 포트폴리오
											</p>
										</div>
										<textarea name="portfolio" cols="80" rows="10"
											class="form-control"></textarea>
									</div>
									<div class="mt-10">
										<div>
											<p>
												<i class="fa fa-thumb-tack" aria-hidden="true"></i> 파일 첨부
											</p>
										</div>
										<input type="file" name="uploadFile" class="single-input">
									</div>
									<br>
								</div>
							</div>
							<div style="text-align: center;">
								<input type="submit" onclick="return validate(e);" class="genric-btn success radius"
									value="가입">&nbsp;&nbsp; <input type="reset" class="genric-btn default radius" value="취소">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->



	<jsp:include page="../common/footer.jsp" />


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
	<script type="text/JavaScript"
		src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		/* 다음 주소 API */
		function openDaumZipAddress() {
			new daum.Postcode({

				oncomplete : function(data) {
					jQuery("#postcode").val(data.zonecode);
					jQuery("#address1").val(data.address);
					jQuery("#address2").focus();
				}

			}).open();

		}

		/* 이력서 추가 */
		function addCareer() {
			$("#careerDiv").css("display", "block"); // 이력서입력칸 보여주기
			$("#careerAdd").css("display", "none"); // 버튼 사라지기
			$("#careerMin").css("display", "block");
			$("#careerVal").val("T"); // 이력서 있다고 val 바꾸기 
		}

		/* 이력서 취소 */
		function minCareer() {
			$("#careerDiv").css("display", "none"); // 이력서입력칸 보여주기
			$("#careerAdd").css("display", "block"); // 버튼 사라지기
			$("#careerMin").css("display", "none");
			$("#careerVal").val("F"); // 이력서 있다고 val 바꾸기 
		}
		
</script>

<script>

//아이디중복검사 
function validate(){ 
	if($("#idDuplicateCheck").val() == 0){
		alert("사용 가능한 아이디를 입력해주세요.");
		$("#userId").focus();
		return false;
	} else{
		return true;
	}
	
	
}


		
		$("#userId").on("blur", function(){
			
			var userId = $(this).val().trim();
			
			// 아이디가 4글자 미만인 경우
			if(userId.length < 4){
				$(".guide").hide();
				$("#idDuplicateCheck").val(0);
				
				return;
			}
			
			// 아이디 중복 검사(ajax)
			$.ajax({
				url : "dupid.mo",
				data : {'userId' : userId},
				success:function(result){
					$("input[name=password]")
				console.log(result);
					if(result == "true"){
						$(".guide.error").hide();
						$(".guide.ok").show();
						$("#idDuplicateCheck").val(1);
					}else{
						$(".guide.error").show();
						$(".guide.ok").hide();
						$("#idDuplicateCheck").val(0);
					}
					
				}
			});
			
		});
	

	
	</script>



</body>
</html>