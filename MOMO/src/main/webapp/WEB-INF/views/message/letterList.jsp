<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>받은 메세지함</title>
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

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<style>
table {
	text-align: center;
}

.submit-bt {
	text-align: right;
}

tr {
	margin: 0 auto;
	line-height: 40px;
	text-align: center;
}

#left_letter {
	padding-top: 0;
	padding-bottom: 0;
	text-align: center;
}

#b-title{
	color: #4e4e4e;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-10">
					<h3>
						<b id="b-title">쪽지함</b> | 받은 쪽지함
					</h3>
					<br>
				</div>
				<div class="col-lg-2">
					<div class="descript_wrap white-bg" id="left_letter">
						<table>
							<tr>
								<th><a href="msgList.mo?toId=${loginUser.userId }">받은 쪽지</a></th>
							</tr>
							<tr>
								<th><a href="msgSendList.mo?fromId=${loginUser.userId }">보낸 쪽지</a></th>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="descript_wrap white-bg">
						<table border="1" class="table table-bordered">
							<tr style="background: #4cd3e3; color: white;">
							<th>No.</th>
							
								<th>보낸사람</th>
								<th>내용</th>
								<th>날짜</th>
								<th>삭제</th>
							</tr>
							<c:forEach var="msg" items="${list }">
								<tr>
								<td>${msg.rowNum }</td>

									<td>${msg.fromId }</td>
									<td>
										<c:url var="msgdetail" value="msgDetail.mo">
											<c:param name="msId" value="${msg.msId }" />
										</c:url>
										<a href="${msgdetail }">${msg.msContent }</a>
									</td>
									<td>${msg.msCreateDate }</td>
									<td>
									  <c:url var="msgdelete" value="msgDel.mo">
									<c:param name="msId" value="${msg.msId }" />
								</c:url>
                                  <a href="${msgdelete }" class="genric-btn danger-border radius">쪽지삭제</a>
										
							<!-- 		<button class="genric-btn danger-border radius" id="deleteMsg">쪽지삭제</button> -->
							</td>
								</tr>

							</c:forEach>

						</table>
						<div class="submit-bt">
							<a href="sendMessageView.mo" class="genric-btn success radius">쪽지보내기</a>
		 
				
<!-- 				      <script>
        $(document).ready(function(){
    //체크박스 전체 선탣&해제
    $('#checkAll').click(function(){
         if($("#checkAll").prop("checked")){
            $("input[type=checkbox]").prop("checked",true); 
        }else{
            $("input[type=checkbox]").prop("checked",false); 
        }
    });
 
    $('#deleteMsg').click(function(){
        if(confirm("삭제하시겠습니까?")){
            $("input[name=checkRow]:checked").each(function(){
                var tr_value =$(this).val();
                var tr=$("tr[data-tr_value='"+tr_value+"']");
                tr.remove();
            });
        }else{
            return false;
        }
    });
 
});
        
        
        

</script> -->
                            						
						</div>
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


    
</body>
</html>