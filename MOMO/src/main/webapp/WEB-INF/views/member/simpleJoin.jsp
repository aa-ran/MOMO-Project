<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>간편로그인</title>
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
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/slicknav.css">

<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
   height: 500px;
}

/* Set gray background color and 100% height */
.sidenav {
   /*background-color: #87d1f2;*/
   background-image: url('img/banner/mainBanner.jpg');
   height: 100%;
   width: 100%;
}

/* Set black background color, white text and some padding */
footer {
   background-color: #87d1f2;
   color: white;
   padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
   .sidenav {
      height: 560px;
      padding: 15px;
   }
   .row.content {
      height: auto;
   }
}

table {
   width: 100%;
   height: 100%;
   text-align: center;
}

#f-btn:hover {
   color: #ffffff;
   border: 1.5px solid #ffffff;
   font-weight: bold;
   background: transparent;
}

.white-b{
   color:white;
}
</style>
</head>
<body>
   <script type="text/javascript">
      window.onload = function() {
         if ($ {
               param.type
            } == 1) {
            receiveNoteBox();
         } else if ($ {
               param.type
            } == 2) {
            sendNoteBox();
         } else if ($ {
               param.type
            } == 3) {
            writeNote();
         }
      }
        
      function changeNavi(num) {
         if (num == 1) {
            $("#li1").addClass("active");
            $("#li2").removeClass("active");
            $("#li3").removeClass("active");
         } else if (num == 2) {
            $("#li1").removeClass("active");
            $("#li2").addClass("active");
            $("#li3").removeClass("active");
         } else if (num == 3) {
            $("#li1").removeClass("active");
            $("#li2").removeClass("active");
            $("#li3").addClass("active");
         }
      }

   </script>

   <div class="container-fluid" style="text-align: center;">
      <div class="row content">
         <div class="col-sm-3 sidenav">
            <br>
            <br>
            <br> <img src="img/momologo-03.png" alt="" style="width: 40%">
            <br> <br>
            <h2 class="bradcam_text" style="color: white;"><b class="white-b">로그인</b></h2>
            <br> <a href="#" onclick="closeSignInPopUp();"
               class="boxed-m-btn" style="width: 300px;" id="m-btn">모모 계정으로
               계속하기</a> <br> <br> <u><a href="findIdView.mo"
               style="color: white;">아이디/</a><a href="findPwdView.mo"
               style="color: white;">비밀번호</u>를 잊으셨나요?</a> <br> <br> <a
               style="color: white;">모모가 처음이신가요? </a><a href="signUp.mo"
               onclick="javascript:closeSignUpPopUp();" style="color: white;">회원가입</a>
         </div>
      </div>
   </div>

</body>
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
<!-- <script src="js/gijgo.min.js"></script> -->
<script src="js/range.js"></script>



<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>


<script src="js/main.js"></script>

<script>

   /* 팝업창 닫고 로그인 창 띄우기*/
   function closeSignInPopUp(){
      window.opener.location="signIn.mo";
      window.close();
   }
   
   /* 팝업창 닫고 회원가입 띄우기*/
   function closeSignUpPopUp(){
      window.opener.location="signUp.mo";
      window.close();
   }
   
</script>

</html>