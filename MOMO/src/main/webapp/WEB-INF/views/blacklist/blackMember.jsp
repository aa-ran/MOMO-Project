<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>블랙리스트 관리</title>
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
<jsp:include page="../common/header.jsp"/>

    <!--테이블시작 -->
    <div class="section-top-border text-center">
       <div class="container box_1170">
        <h3 class="mb-30"><b>블랙리스트 관리</b></h3>
        <div class="table-wrap">
            <table class="table" style="background-color:#F0F0F2">
                <tr style="background:#4cd3e3; color:white;">
                    
                    <th>아이디</th>
                    <th>사유</th>
                    <th>블랙리스트 삭제</th>
                   
                </tr>
                
                
               
                <c:forEach var="b" items="${list }">
                <tr>
                    <td>${b.userId }</td>
                    <td>${b.reason }</td>
                    
                    <td width="300px">
                        <!--블랙리스트 버튼활성화 -->
                        <form action="bdelete.mo" id="target" method="post">  
                        <input type="hidden" name="userId" id="userId"> 
							<button type="button" class="genric-btn success"
									onclick="return deleteBlacklist(this);">삭제</button>
                        </form>
                        
                    </td>
                </tr>
                </c:forEach>
                               
                
            </table>
        </div>
    </div>
        <!--페이지-->
    
    <script>
				function deleteBlacklist(obj) {
					console.log($(obj));
					var userId = $(obj).parent().parent().siblings().eq(0)
							.text();
						$("#userId").val(userId);
						$("#target").submit();

				};
			</script>

	<jsp:include page="../common/footer.jsp"/>

</body></html>
