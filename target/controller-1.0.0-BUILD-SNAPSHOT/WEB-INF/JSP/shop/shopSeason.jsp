<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<% 
	String teaId=request.getParameter("teaId"); 

%>

<!doctype html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>Our Shop - Cafenod HTML5 Template</title>
	<link rel="shortcut icon" href="assets/images/logo/favourite_icon.png">

	<!-- fraimwork - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

	<!-- icon font - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

	<!-- animation - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

	<!-- carousel - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
	<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

	<!-- popup - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

	<!-- jquery-ui - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

	<!-- custom - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>



<body>

<jsp:include page="../header.jsp"/>

			<!-- breadcrumb_section - start
            ================================================== -->
			<section class="breadcrumb_section0919 text-uppercase"
				style="background-position: 70% 40%; background-image: url(./assets/images/breadcrumb/magazine.jpg);">
				<div class="container">
					<h1 class="page_title wow text-white fadeInUp" data-wow-delay=".1s">#계절별 차</h1>
					<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
						<li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
						<li>Our Shop</li>
					</ul>
				</div>
				<div class="breadcrumb_icon_wrap">
					<div class="container">
						<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
							<img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
							<span class="bg_shape"></span>
						</div>
					</div>
				</div>
			</section>
			<!-- breadcrumb_section - end
            ==================================================

          gallery_section - start
        ================================================== -->
			<section class="gallery_section sec_ptb_120 bg_default_gray">
				<div class="container" style="max-width:1300px; margin-top: 5%;">
					<!-- 탭-태그 -->
					<ul class="filters-button-group style_4 ul_li_center wow fadeInUp" data-wow-delay=".1s"
						style="margin: 0;">
						<li><button class="button text-uppercase active" data-filter="*">all</button></li>
						<li><button class="button text-uppercase" data-filter=".spring">봄</button></li>
						<li><button class="button text-uppercase" data-filter=".summer">여름</button></li>
						<li><button class="button text-uppercase" data-filter=".fall">가을</button></li>
						<li><button class="button text-uppercase" data-filter=".winter">겨울</button></li>
					</ul>
					<!-- 관리자 로그인 시에만 보임 -->
					<%-- <c:if test="${member.memberRole == 1}"> --%>
					<div style="display: flex; align-items: center; margin-top: 20px;">
						<div class="col-md-5 col-lg-5">
						</div>
						<div class="col-md-2 col-lg-2" style="text-align: center;">
							<a class="btn btn_primary text-uppercase" href="shopCreateMove.do">상품 추가</a>
						</div>
						<div class="col-md-5 col-lg-5">
						</div>
					</div>
					<%-- </c:if> --%>
					<!--상품추가버튼 여기까지-->




					<!-- 상품목록 -->
					<div class="wrap" style="padding: 1%; ">
						<div class="related_products" >
							
							<div class="row" data-cat=".spring">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Spring</h4>

							<c:forEach items="${shopList }" var="tea">
							<c:set var = "season" value="${tea.tagSeason }"/>
							<c:if test="${fn:contains(season, '봄')}"> 
								<div class="col-lg-3 col-md-6 col-sm-6" ">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
											<img src="assets/images/shop/${tea.teaImg}_0.png alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase" style="text-align:right">
												<a href="shopDetails.do?teaId=${tea.teaId }">${tea.teaName}
											</h3>
											<h5>${tea.tagSeason }</h5>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">${tea.teaPrice}원</p></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
							</c:forEach>
								
							</div>
						</div>

						<!-- 2번째 -->
 						<div class="related_products">
							<div class="row" data-cat=".summer">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Summer</h4>

						<c:forEach items="${shopList }" var="tea">
							<c:set var = "season" value="${tea.tagSeason }"/>
							<c:if test="${fn:contains(season, '여름')}"> 
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
											<img src="assets/images/shop/${tea.teaImg}_0.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase" style="text-align:right">
												<a href="shopDetails.do?teaId=${tea.teaId }">${tea.teaName}
											</h3>
											<h5>${tea.tagSeason }</h5>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">${tea.teaPrice}원</p></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
								
							</div>
						</div>
						
						<!-- 3번째 -->
 						<div class="related_products">
							<div class="row" data-cat=".fall">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Fall</h4>

						<c:forEach items="${shopList }" var="tea">
							<c:set var = "season" value="${tea.tagSeason }"/>
							<c:if test="${fn:contains(season, '가을')}"> 
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
											<img src="assets/images/shop/${tea.teaImg}_0.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase" style="text-align:right">
												<a href="shopDetails.do?teaId=${tea.teaId }">${tea.teaName}
											</h3>
											<h5>${tea.tagSeason }</h5>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">${tea.teaPrice}원</p></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
								
							</div>
						</div>
						
						<!-- 4번째 -->
 						<div class="related_products">
							<div class="row" data-cat=".winter">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Winter</h4>

						<c:forEach items="${shopList }" var="tea">
							<c:set var = "season" value="${tea.tagSeason }"/>
							<c:if test="${fn:contains(season, '겨울')}"> 
							
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
											<img src="assets/images/shop/${tea.teaImg}_0.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase" style="text-align:right">
												<a href="shopDetails.do?teaId=${tea.teaId }">${tea.teaName}
											</h3>
											<h5>${tea.tagSeason }</h5>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">${tea.teaPrice}원</p></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
								
							</div>
						</div>





				<!-- 페이징 -->	
				<div>
				
				</div>
				
				<!-- 페이징 종료 -->
				
					</div>

			</section>
			<!-- gallery_section - end
                  ================================================== -->

		</main>
		<!-- main body - end
            ================================================== -->

		<!-- footer_section - start
         ================================================== -->
<jsp:include page="../footer.jsp"/>

</body>

</html>