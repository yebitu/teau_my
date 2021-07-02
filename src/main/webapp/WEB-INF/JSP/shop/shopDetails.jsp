<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<% String teaId = request.getParameter("teaId"); %>

<!doctype html>
<html lang="en">

<!-- Ajax  -->
<script>

function removeCheck(){
	let removeCheck = confirm("정말로 삭제하시겠습니까?");
	if(removeCheck) {
	alert("삭제되었습니다");
	location.href= "deleteShop.do?teaId=${tea.teaId }";
		
	}
	else alert("삭제가 취소되었습니다");
}

</script>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>shop_details</title>
	<link rel="shortcut icon" href="assets/images/feature/11.jpg">

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
	<link rel="stylesheet" type="text/css" href="assets/css/teau.css">

</head>

<body>

<jsp:include page="../header.jsp"/>

			<!-- breadcrumb_section - start
				================================================== -->
			<section class="breadcrumb_section0919 text-uppercase"
				style="background-image: url(./assets/images/logo/shop_details2.png);">
				<div class="container">
					<h1 class="page_title text-black wow fadeInUp" data-wow-delay=".1s">상품 상세보기</h1>
					<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
						<li><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
						<li>상품 상세보기</li>
					</ul>
				</div>
				<div class="breadcrumb_icon_wrap">
					<div class="container">
						<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
							<img src="assets/images/feature/icon_01.png" alt="icon_not_found">
							<span class="bg_shape"></span>
						</div>
					</div>
				</div>
			</section>

			<!-- breadcrumb_section - end
				================================================== -->

			<!-- details_section - start
        ================================================== -->
			<section class="details_section shop_details sec_ptb_120 bg_default_gray" style="padding-top: 50px;">
				<div class="col-lg-2"></div>
				<div class="col-lg-10" style="text-align: right; margin-bottom: 50px;">
<!-- 					<a class="btn btn_primary text-uppercase" href="updateShopView.do?teaId=${tea.teaId }">상품 수정</a>&nbsp;&nbsp;&nbsp;&nbsp; -->
					<a class="btn btn_primary text-uppercase" id="update" onclick="updateJson();">상품 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn_primary text-uppercase" id="removefrm" onclick='removeCheck()'>상품 삭제</a>
				</div>
				<div class="col-lg-2"></div>
				<div class="container">
				<form method="POST">
				<input type="hidden" id="teaId" name="teaId" value="${tea.teaId}" >
					<div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">
						<div class="col-lg-6 col-md-7">
							<div class="details_image_wrap wow fadeInUp" data-wow-delay=".1s">
								<div class="details_image_carousel">
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_00.png" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_01.png" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_02.png" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_03.png" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_00.png" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId }_01.png" alt="image_not_found">
									</div>

								</div>

								<div class="details_image_carousel_nav">
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_0.jpg" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_1.jpg" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_2.jpg" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_3.jpg" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_0.jpg" alt="image_not_found">
									</div>
									<div class="slider_item">
										<img src="assets/images/shop/${tea.teaId}_1.jpg" alt="image_not_found">
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-7">
							<div class="details_content wow fadeInUp" data-wow-delay=".2s">
							
								<div class="details_flex_title">
									<h2 class="details_title text-uppercase">${tea.teaName}</h2>
								</div>
								<p>
									${tea.teaInfo}
								</p>
								<div class="details_price">
								<input type="hidden" id="teaPrice" name="teaPrice" class="price_text" value="${tea.teaPrice}" readonly/>
									<strong class="price_text">${tea.teaPrice}원</strong>
								</div>
								<div>

								</div>
								</form>
								<ul class="btns_group ul_li">
									<li>
										<div class="quantity_input quantity_boxed">
											<h4 class="quantity_title text-uppercase">수량</h4>
											<form action="#">
												<button type="button" class="input_number_decrement">–</button>
												<input class="input_number" type="text" value="1">
												<button type="button" class="input_number_increment">+</button>
											</form>
										</div>
									</li>
								</ul>
								<ul class="btns_group ul_li">
									<li><a class="btn btn_secondary text-uppercase" href="#!">Add To Cart</a></li>
									<li><a class="btn btn_secondary text-uppercase" href="#!">Direct Buy</a></li>
								</ul>
								<div class="details_wishlist_btn">
									<a href="#!"><i class="fas mr-1"></i></a>
								</div>
								<div class="details_share_links">
									<h4 class="list_title"><i class="fas fa-share mr-1"></i> Share(로그인유저가 되어야 가능...)
									</h4>
									<ul class="social_links social_icons ul_li">
										<li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
										<li><a href="#!"><i class="fab fa-twitter"></i></a></li>
										<li><a href="#!"><i class="fab fa-instagram"></i></a></li>
										<li><a href="#!"><i class="fab fa-youtube"></i></a></li>
										<li><a href="#!"><i class="fab fa-behance"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="product_description_wrap wow fadeInUp" data-wow-delay=".3s">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-10 col-md-10 col-sm-10">
									<img src="./assets/images/logo/drinkingtea.png">
								</div>
							</div>
						</div>
					</div>
					
					<!-- 추천 상품 : 알고리즘 필요? -->
<%-- 					<div class="related_products">
						<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">추천상품</h4>
						<div class="row">
						
						<c:forEach items="${}" var=""></c:forEach>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="shop_card wow fadeInUp" data-wow-delay=".2s">
									<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
									<a class="item_image" href="shop_details.html">
										<img src="assets/images/shop/img_01.png" alt="image_not_found">
									</a>
									<div class="item_content">
										<h3 class="item_title text-uppercase">
											<a href="shop_details.html">${shop.teaName}</a>
										</h3>
										<div class="btns_group">
											<span class="item_price bg_default_brown">${shop.teaPrice}</span>
											<a class="btn btn_border border_black text-uppercase" href="#!">Add To
												Cart</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="shop_card wow fadeInUp" data-wow-delay=".3s">
									<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
									<a class="item_image" href="shop_details.html">
										<img src="assets/images/shop/img_02.png" alt="image_not_found">
									</a>
									<div class="item_content">
										<h3 class="item_title text-uppercase">
											<a href="shop_details.html">DB티 이름</a>
										</h3>
										<div class="btns_group">
											<span class="item_price bg_default_brown">DB티 가격</span>
											<a class="btn btn_border border_black text-uppercase" href="#!">Add To
												Cart</a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
									<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
									<a class="item_image" href="shop_details.html">
										<img src="assets/images/shop/img_03.png" alt="image_not_found">
									</a>
									<div class="item_content">
										<h3 class="item_title text-uppercase">
											<a href="shop_details.html">DB티 이름</a>
										</h3>
										<div class="btns_group">
											<span class="item_price bg_default_brown">DB티 가격</span>
											<a class="btn btn_border border_black text-uppercase" href="#!">Add To
												Cart</a>
										</div>
									</div>
								</div>
							</div> --%>
						</div>
					</div>

				</div>
			</section>
			<!-- details_section - end
        ================================================== -->

		</main>
		<!-- main body - end
			================================================== -->

		<!-- footer_section - start
         ================================================== -->
<jsp:include page="../footer.jsp"/>
<script type="text/javascript">

	function updateJson(){
		let teaId = $('#teaId').val();
		/* let teaId = ${tea.teaId}; */
		
		$.ajax({	
		type: 'POST',
		url: 'updateLoad.do', //데이터를 보낼 주소
		dataType: 'text',
		data: {'teaId' : teaId}, //보낼 데이터
		
		success: function(data){
			console.log(data);
			//컨트롤러가 보내준 data(유저의 선택 정보=json)을  URL로 테우기 위해 문자열(스트링)로 변환한다
			window.location.href=("updateShopView.do?data="+encodeURIComponent(JSON.stringify(data)));
		},
		error: function(e){
			console.log(e);
		}
		});
		
	}
	
</script>

</body>

</html>