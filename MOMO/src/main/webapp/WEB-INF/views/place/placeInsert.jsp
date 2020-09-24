<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>어디서 만날래? 게시글 등록</title>
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

   <!-- 어디서볼래 게시글 입 -->
   <div class="whole-wrap">
      <div class="container box_1170">
         <div class="section-top-border">
            <div class="row">
               <div class="col-lg-2 col-md-2"></div>
               <div class="col-lg-8 col-md-8">
                  <h3 class="mb-30"><strong>어디서 만날래</strong> | 게시글 등록</h3>
                  <form action="pinsert.mo" method="post" enctype="Multipart/form-data">
							<div class="section-top-border">
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 장소 이름</p>
									</div>
									<input type="text" name="pName" required class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 주소</p>
									</div>
									<input type="text" name="pAddress" required class="single-input">
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 최대 수용 인원</p>
									</div>
										<select class="wide" id="pAcceptNum" name="pAcceptNum">
											<option data-display="인원">인원</option>
											<option value=3>최대인원 3명</option>
											<option value=5>최대인원 5명</option>
											<option value=7>최대인원 7명</option>
											<option value=8>8명 이상</option>
										</select>
								</div>
								<br><br>
								<div class="mt-10">
									<div>
										<p>
											<i class="fa fa-thumb-tack" aria-hidden="true"></i> 가격
										</p>
									</div>
									<input type="text" name="pPrice" required class="single-input"
										placeholder="ex) 30000">
									</div>

								<div class="single-element-widget mt-30">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 시간</p>
									</div>
									<div class="default-select" id="default-select"  >
										<select id="pTime" name="pTime">
										<option data-display="시간" selected>시간</option>
												<option value="10:00~12:00">10:00~12:00</option>
												<option value="12:00~14:00">12:00~14:00</option>
												<option value="14:00~16:00">14:00~16:00</option>
												<option value="16:00~18:00">16:00~18:00</option>
												<option value="18:00~20:00">18:00~20:00</option>
												<option value="20:00~22:00">20:00~22:00</option>
										</select>
									</div>
								</div>
								<div class="input-group-icon mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 옵션</p>
									</div>
									<textarea name="pOption" cols="80" rows="15" class="form-control"></textarea>
								</div>
								<div class="mt-10">
									<div>
										<p><i class="fa fa-thumb-tack" aria-hidden="true"></i> 사진</p>
									</div>
									<input type="file" name="uploadFile" class="single-input">
								</div>
								<br>
								<div style="text-align:center;">
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
      $("#pTime option:selected").val();
      $("#pAcceptNum option:selected").val();
   </script>
</body></html>