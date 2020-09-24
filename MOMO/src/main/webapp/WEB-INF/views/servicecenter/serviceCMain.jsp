<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>고객센터 관리</title>
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
    
</head>

<body>
    
    <jsp:include page="../common/header.jsp"/>
    <!--테이블시작 -->
    <div class="section-top-border text-center">
        <div class="container box_1170">
            <h3 class="mb-30"><b>고객센터 관리</b></h3>
            <div class="table-wrap">
                <table class="table" style="background-color:#F0F0F2" width="600px">
                    <tr style="background:#4cd3e3; color:white;">
                        <th>NO. </th>
                        <th>아이디</th>
                        <th>제목</th>
                        <th>상세보기/삭제</th>
                        
                    </tr>
                     <c:forEach var="sc" items="${list }">
                    <tr>
                        <td>${sc.sId}</td>
                        <td>${sc.userId }</td>
                        <td>${sc.sTitle }</td>
                        <!-- 버튼활성화 -->
                        <td width="300px" >
                        
                        <c:url var="scdetail" value="scdetail.mo" >
						<c:param name="sId" value="${sc.sId }" />
						</c:url>
                            <a href="${scdetail }" class="genric-btn success">상세보기</a>
                            <c:url var="scdelete" value="scdelete.mo">
									<c:param name="sId" value="${sc.sId }" />
								</c:url>
                          <a href="${scdelete }" class="genric-btn danger radius">삭제</a>
                            &nbsp;
                    </tr>
                    </c:forEach>
                </table>
            <!--페이지-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="pagination_wrap">
                        <ul>
                            <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                            <li><a href="#"><span>01</span></a></li>
                            <li><a href="#"><span>02</span></a></li>
                            <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>

<jsp:include page="../common/footer.jsp"/>    
</body>
</html>
