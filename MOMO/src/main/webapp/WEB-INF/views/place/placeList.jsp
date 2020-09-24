<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>어디서볼래?</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- job_listing_area_start  -->
	<div class="job_listing_area plus_padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-9"></div>
				<div class="col-lg-9 col-md-9">
					<h3>
						<strong>어디서 만날래</strong> | 목록보기
					</h3>
				</div>
				<div class="col-lg-3">
			<form action="psearch.mo" method="get" name="searchForm">
					<div class="job_filter white-bg">
						<div class="form_inner white-bg">
							<h3>상세 검색</h3>
								<div class="row">
									<div class="col-lg-12">
										<!-- <div class="single_field">
											<input type="date" placeholder="날짜" id="pRegDate" name="pRegDate">
										</div> -->
									</div>
									<div class="col-lg-12">
									<div class="single_field">
											<select class="wide" id="pTime" name="pTime">
												<option value="null" selected>전체시간</option>
												<option value="10:00~12:00"<c:if test="${pSearch.pTime=='10:00~12:00' }">selected</c:if>>10:00~12:00</option>
												<option value="12:00~14:00"<c:if test="${pSearch.pTime=='12:00~14:00' }">selected</c:if>>12:00~14:00</option>
												<option value="14:00~16:00" <c:if test="${pSearch.pTime=='14:00~16:00' }">selected</c:if>>14:00~16:00</option>
												<option value="16:00~18:00" <c:if test="${pSearch.pTime=='16:00~18:00' }">selected</c:if>>16:00~18:00</option>
												<option value="18:00~20:00" <c:if test="${pSearch.pTime=='18:00~20:00' }">selected</c:if>>18:00~20:00</option>
												<option value="20:00~22:00" <c:if test="${pSearch.pTime=='20:00~22:00' }">selected</c:if>>20:00~22:00</option>
											</select>
                                        </div>
									</div>
									<div class="col-lg-12">
										<div class="single_field">
											<select class="wide" id="pAcceptNum" name="pAcceptNum">
												<option value=0 selected>전체인원</option>
												<option value=3 <c:if test="${pSearch.pAcceptNum==3 }">selected</c:if>>최대인원 3명</option>
												<option value=5 <c:if test="${pSearch.pAcceptNum==5 }">selected</c:if>>최대인원 5명</option>
												<option value=7 <c:if test="${pSearch.pAcceptNum==7 }">selected</c:if>>최대인원 7명</option>
												<option value=8 <c:if test="${pSearch.pAcceptNum==8 }">selected</c:if>>8명 이상</option>
											</select>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="single_field">
											<input type="text" placeholder="최대금액 ex)" id="pPrice" name="pPrice" required>
										</div>
									</div>
                            </div>
						<div class="reset_btn">
							<button class="boxed-btn3 w-100" type="submit">검색하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
				<div class="col-lg-9">
					<div class="recent_joblist_wrap">
						<div class="recent_joblist white-bg ">
							<div class="row align-items-center">
								<div class="col-md-6">
									<h4>장소 등록하기</h4>
								</div>
								<div class="col-md-6">
									<div class="serch_cat d-flex justify-content-end">
										<a href="pwrite.mo" class="boxed-btn3">장소 등록 </a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="job_lists m-0">
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<c:forEach var="p" items="${list }">
									<div
										class="single_jobs white-bg d-flex justify-content-between">
										<div class="jobs_left d-flex align-items-center">
											<div class="jobs_conetent">
												<img src="resources/puploadFiles/${p.pFileName }" style="width: 100%;"
													alt="img">
											</div>
										</div>
										<div class="jobs_right">

											<div class="jobs_conetent">
												<c:url var="pdetail" value="pdetail.mo">
													<c:param name="pNo" value="${p.pNo }" />
												</c:url>
												<a href="${pdetail }">
													<h1>${p.pName }</h1>
												</a>
												<div class="links_locat d-flex align-items-center">
													<div class="location">
														<p>
															<i class="fa fa-map-marker"></i>${p.pAddress }</p>
														<p>
															<i class="fa fa-clock-o"></i> ${p.pTime }
														</p>
													</div>
												</div>
												<div class="apply_now">
													<a class="heart_mark" href="#"> <i class="fa fa-heart"></i>
													</a> <a href="job_details.html" class="boxed-btn3">대관하기</a>
												</div>
												<div class="date">
													<p>${p.pRegDate }</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
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
				</div>
			</div>
		</div>
	</div>
	<!-- job_listing_area_end  -->
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
	<!-- <script src="js/nice-select.min.js"></script> -->
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/plugins.js"></script>
	<!-- <script src="js/gijgo.min.js"></script> -->
	<!-- <script src="js/range.js"></script> -->



	<!--contact js-->
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>


	<script src="js/main.js"></script>


	<script>
		/* $(function() {
			$("#slider-range").slider(
					{
						range : true,
						min : 0,
						max : 100000,
						values : [ 1000, 24600 ],
						slide : function(event, ui) {
							$("#amount").val(
									"$" + ui.values[0] + " - $" + ui.values[1]
											+ "/ Year");
						}
					});
			$("#amount")
					.val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1)
									+ "/ Year");
		}); */
	</script>
</body>
</html>