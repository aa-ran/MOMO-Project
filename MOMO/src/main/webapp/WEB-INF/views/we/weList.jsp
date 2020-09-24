<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>우리 팀할래 전체리스트 페이지</title>
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

    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <h3><b>우리 팀할래</b> | 전체리스트</h3>
                    <br>
                    <div class="blog_left_sidebar">
                    	<c:forEach var = "we" items="${list}">
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="${contextPath}/resources/wuploadFiles/${we.wFileName}" alt="">
                                <a class="blog_item_date">
                                    <h3>${we.wTeamName }</h3>
                                </a>
                            </div>

                            <div class="blog_details">
                            	<c:url var="wedetail" value="wedetail.mo">
                            		<c:param name="wId" value="${we.wId}"/>
                            		<c:param name="page" value="${pi.currentPage }"/>
                            	</c:url>
                                <a class="d-inline-block" href="${wedetail}">
                                    <h2>${we.wTitle}</h2>
                                </a>
                                <p>${we.wContent}</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i> ${we.wWriter}</a></li>
                                    <li><a href="#"><i class="fa fa-comments"></i> ${we.wCategory }</a></li>
                                </ul>
                            </div>
                        </article>
                        </c:forEach>
                        

						<!-- 페이지네이션 -->
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                            <!-- [이전] -->
                            <c:if test="${pi.currentPage<=1}">
                            	<li class="page-item">
                                    <a class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${pi.currentPage>1 }"> 
                            	<c:url var="before" value="welist.mo">
									<c:param name="page" value="${pi.currentPage -1 }"/>
								</c:url>
                            	<li class="page-item">
                                    <a href="${before }" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                            </c:if>
                            
                            <!-- 페이징 넘버링(누른페이지) -->
                            <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
								<c:if test="${p eq pi.currentPage }">
									<li class="page-item">
                                    	<a class="page-link" ><font color="skyblue">${p }</font></a>
                                	</li>
								</c:if>
								
								<!-- 페이지 넘버링 (안누른  페이지) -->
								<c:if test="${p ne pi.currentPage }">
									<c:url var="pagenation" value="welist.mo">
										<c:param name="page" value="${p }" />
									</c:url>
									<li class="page-item">
                                    	<a href="${pagenation }" class="page-link">${p }</a>
                                	</li>
                                </c:if>
							</c:forEach>
                                
                              <!-- [다음] -->
                            <c:if test="${pi.currentPage >= pi.maxPage }">
                            	<li class="page-item">
                                    <a  class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${pi.currentPage < pi.maxPage }">
                            	<c:url var="after" value="welist.mo">
									<c:param name="page" value="${pi.currentPage + 1 }"/>
								</c:url>
                            	<li class="page-item">
                                    <a href="${after }" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- 팀 목록 -->
                
                <!-- aside -->
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                       <aside class="single_sidebar_widget newsletter_widget">
                            <h4 class="widget_title"><b>팀 만들기</b></h4>
                            <form action="weInsertForm.mo">
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">우리 팀할래?</button>
                            </form>
                        </aside>
                        <aside class="single_sidebar_widget search_widget">
                            <form action="weSearch.mo" method="get"  accept-charset="utf-8">
                                <div class="form-group">
                                    <div class="input-group mb-3">
										<select class="wide" name="searchCondition">
											<option value="content"
												<c:if test="${search.searchCondition=='content'}">selected</c:if>>내용</option>
											<option value="title"
												<c:if test="${search.searchCondition=='title'}">selected</c:if>>제목</option>
											<option value="writer"
												<c:if test="${search.searchCondition=='writer'}">selected</c:if>>작성자</option>
										</select>
                                        <input type="search" class="form-control" placeholder='검색할 단어 입력'
                                        	name="searchValue"
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = '검색할 단어 입력'"
                                            value="${search.searchValue }">
                                        <div class="input-group-append">
                                            <button class="btn" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">검색</button>
                            </form>
                        </aside>

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title"><b>카테고리</b></h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="weCategoryList.mo?category=1" class="d-flex">
                                        <p>스터디</p> &nbsp;
                                        <p style="font-size:12px;">(${studyCount })</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="weCategoryList.mo?category=2" class="d-flex">
                                        <p>공모전</p>&nbsp;
                                        <p style="font-size:12px;">(${contestCount })</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="weCategoryList.mo?category=3" class="d-flex">
                                        <p>스포츠</p>&nbsp;
                                        <p style="font-size:12px;">(${sportCount })</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="weCategoryList.mo?category=4" class="d-flex">
                                        <p>취미</p>&nbsp;
                                        <p style="font-size:12px;">(${hobbyCount })</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="weCategoryList.mo?category=5" class="d-flex">
                                        <p>기타</p>&nbsp;
                                        <p style="font-size:12px;">(${etcCount })</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>

                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title"><b>기대되는 팀 리스트</b></h3>
                            <c:forEach var="list" items="${hList }">
	                            <div class="media post_item">
	                                <img src="/resources/wuploadFiles/${list.wFileName }" style="width:80px;"alt="post">
	                                <div class="media-body">
	                                    <a href="wedetail.mo?wId=${list.wId }">
	                                        <h3>${list.wTeamName }</h3>
	                                    </a>
	                                    <p>By ${list.wWriter } </p>
	                                </div>
	                            </div>
                            </c:forEach>
                        </aside>
                        
                    </div>
                </div>
                <!-- aside -->
                
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->


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
<!--     <script src="js/nice-select.min.js"></script> -->
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
    
    	<jsp:include page="../common/footer.jsp"/>
</body>
</html>