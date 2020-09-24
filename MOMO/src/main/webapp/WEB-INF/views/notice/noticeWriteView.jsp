<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
            text-align:right;
            
        }
        table{
            text-align: center;
            width: 100%;
            border-left: 1px solid #ffffff;
            border-right: 1px solid #ffffff;
            border-spacing: 1px;
            text-align: left;
            line-height: 2.1;
            border-top: 1px solid #ccc;
            margin-bottom: 20px;
        }
        
        table th {
            text-align: center;
            width: 150px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            border-bottom: 1px solid #ccc;
        }
        table td {
            text-align: center;
            padding: 10px;
            vertical-align: top;
            border-bottom: 1px solid #ccc;
        }
        textarea {
            resize : none;
        }
        .btnArea {
            margin: 10px;
        }
    </style>
    
<title>공지사항 작성 페이지</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <h3><b>공지사항</b> | 작성</h3>
                    <br>
                    <div class="descript_wrap white-bg" style="text-align:center;">
                        <form action="ninsert.mo" method="post" enctype="Multipart/form-data">
                            <table border="1">
                                <tr>
                                    <th>제목</th>
                                    <th colspan="4">
                                         <input type="text" class="form-control" placeholder="공지사항 제목을 입력하세요" name="nTitle">
                                    </th>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <textarea cols="70" rows="15" class="form-control" placeholder="공지사항 내용을 입력하세요" name="nContent"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-bottom:1px solid #ffffff;">
                                        <div class="btnArea" style="text-align:right;">
                                            <input type="submit" class="genric-btn success radius" value="작성"> &nbsp;
                                            <input type="reset" class="genric-btn default radius" value="취소">
                                        </div>
                                    </td>
                                </tr>
                            </table>
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