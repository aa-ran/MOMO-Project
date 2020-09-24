<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>이력사항 수정 페이지</title>
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
        /* imaged preview */
        .filebox .upload-display { /* 이미지가 표시될 지역 */
            margin-bottom: 5px;
        }
        
        @media(min-width: 768px){
            .filebox .upload-display{
                display: inline-block;
                margin-right: 5px;
                margin-bottom: 0;
            }
        }
        .filebox .upload-thumb-wrap { /* 추가될 이미지를 감싸는 요소 */
            display: inline-block;
            width: 54px;
            padding: 2px;
            vertical-align: middle;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }
        .filebox .upload-display img { /* 추가될 이미지 */
            display: block;
            max-width: 100%;
            width: 100% \9;
            height: auto;
        }
        #title-b {
        	color:#4e4e4e;
        }
    </style>
</head>

<body>
	<jsp:include page="../common/header.jsp"/>
    <div class="job_details_area">
        <div class="whole-wrap">
            <div class="container box_1170 white-bg">
                <div class="section-top-border">
                    <div class="row">
                        <div class="col-lg-2 col-md-2"></div>
                        <div class="col-lg-8 col-md-8 text-left">
                            <h3 class="mb-30"><b id="title-b">이력사항</b> | 등록</h3>
                            <form action="cInsert.mo" method="post" enctype="Multipart/form-data">
                            	<input type="hidden" name="userId" value="${loginUser.userId }">
                                <div class="section-top-border">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="career-area">
                                                <h4>경력사항</h4>
                                                <textarea name="career" class="form-control" cols="20" placeholder="이력사항을 입력하세요." required></textarea>
                                            </div>
                                            <br>
                                            <div id="awards-area">
                                                <h4>수상내역</h4>
                                                <textarea name="awards" class="form-control" cols="20" placeholder="수상내역을 입력하세요." required></textarea>
                                            </div>
                                            <br>
                                            <!-- 포트폴리오 -->
                                            <div id="portfolio-area">
	                                            <h4>포트폴리오</h4>
	                                            <textarea name="portfolio" class="form-control" cols="20" required placeholder="포트폴리오 내용을 입력하세요."></textarea>
	                                            <br>
	                                            <div class="filebox preview-image col-lg-12">
	                                                <input class="upload-name" disabled="disabled">
	                                                <label for="input-file"></label>
	                                                <input type="file" id="input-file" class="upload-hidden" name="uploadFile">
	                                            </div>
											</div>
                                            <br><br>
                                            <div style="text-align:center;">
                                                    <input type="submit" class="genric-btn success radius" value="작성완료" >&nbsp;&nbsp;
                                                    <c:url var="back" value="${header.referer }"/>
                                                    <a class="genric-btn default radius" href="${back}">취소</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
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
    </script>
    <!-- 사진 미리보기 jQuery-->
    <script>
        var imgTarget = $('.preview-image .upload-hidden');
        imgTarget.on('change', function(){
            var parent = $(this).parent();
            parent.children('.upload-display').remove();

            if(window.FileReader){ //image 파일만
                if (!$(this)[0].files[0].type.match(/image\//)) return;
                var reader = new FileReader();
                reader.onload = function(e){
                    var src = e.target.result;
                    parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
                }
                reader.readAsDataURL($(this)[0].files[0]);
            }else {
                $(this)[0].select();
                $(this)[0].blur();
                var imgSrc = document.selection.createRange().text; parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>')
                var img = $(this).siblings('.upload-display').find('img');
                img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
            }
        });
    </script>
    
</body>
</html>