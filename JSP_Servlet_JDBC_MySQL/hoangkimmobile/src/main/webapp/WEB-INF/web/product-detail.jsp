<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<!-- Basic -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Hoang Kim: Product-Detail</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="https://hoangkimmobile.com/wp-content/uploads/2021/01/logo-Hoang-Kim-Mobile-retina-xam.png"
	type="image/x-icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="./css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="./css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="./css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Font Awesome CSS links -->
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.a:hover {
	background-color: gold;
	transition: all 0.2s
}

.m {
	position: relative;
	display: inline-block;
	margin: 15px;
	padding: 10px 30px;
	text-align: center;
	font-size: 18px;
	letter-spacing: 1px;
	text-decoration: none;
	color: #725AC1;
	background: transparent;
	cursor: pointer;
	transition: ease-out 0.5s;
	border: 2px solid #725AC1;
	border-radius: 10px;
	box-shadow: inset 0 0 0 0 #725AC1;
}

.m:hover {
	color: white;
	box-shadow: inset 0 -100px 0 0 #725AC1;
}

.m:active {
	transform: scale(0.9);
}
</style>
</head>
<body>
	<!-- Start Main Top -->
	<%@include file="/WEB-INF/common/header/header.jsp"%>
	<!-- End Main Top -->

	<!-- Start Shop Detail  -->
	<sql:setDataSource var="ds" dataSource="jdbc/shoppingdb" />
	<sql:query dataSource="${ds}" var="results" sql="select * from products where product_id=?">
		<sql:param>${param.productID}</sql:param>
	</sql:query>
	<sql:query dataSource="${ds}" var="getSold"
		sql="select sum(amount_product) as total_amount from orders_detail where product_id=? group by product_id">
		<sql:param>${param.productID}</sql:param>
	</sql:query>
	<c:set scope="page" var="prod" value="${results.rows[0]}"></c:set>
	<c:set scope="page" var="sold" value="${getSold.rows[0].total_amount }"></c:set>
	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="image">
						<img src="${prod.product_img_source }" alt="First slide">
					</div>
				</div>
				<div class="col-xl-8 col-lg-8 col-md-6">
					<div class="single-product-details">
						<h2>${prod.product_name}</h2>
						<c:choose>
							<c:when test="${not empty sold}">
								<span><strong>${sold } Đã bán</strong></span>
							</c:when>
							<c:otherwise>
								<span><strong>0 Đã bán</strong></span>
							</c:otherwise>
						</c:choose>
						
						<h5>
							<c:set var="currency" value="$"></c:set>
							${currency}
							<fmt:formatNumber value="${prod.product_price}"
								maxFractionDigits="2" pattern="#,##0.00">
							</fmt:formatNumber>
						</h5>
						<h4>
							<fmt:message>product.description</fmt:message>
							:
						</h4>
						<p>${prod.product_des}</p>
						<br />
						<h4>
							<fmt:message>product.type</fmt:message>
							:
						</h4>
						<p>${prod.product_type }</p>
						<br />
						<h4>
							<fmt:message>product.brand</fmt:message>
							:
						</h4>
						<p>${prod.product_brand}</p>
						<br />
						<div class="price-box-bar">
							<c:url var="addToCartURL" value="/AddToCartServlet">
								<c:param name="action" value="add"></c:param>
								<c:param name="id" value="${param.productID}"></c:param>
							</c:url>
							<div class="price-box-bar">
								<div class="cart-and-bay-btn">
									<form method="POST" action="${addToCartURL}">
										<button class="btn hvr-hover" type="submit">
											<fmt:message>product.cart</fmt:message>
										</button>
									</form>
								</div>
							</div>
							<div class="cart-and-bay-btn"></div>
						</div>
					</div>
				</div>
				<div style="display: flex; align-items: center; gap: 10px">
					<div>
						<li><a class="m" style="margin-top: 13px" data-toggle="tab"
							href="#comment"><fmt:message>product.comment</fmt:message></a></li>
					</div>
					<!-- <div><i style="color: red" class="fa-solid fa-heart"></i>  Đã thích (3,3k)</div> -->
				</div>
				<div class="fb-comments"
					style="border: 1px solid #ccc; margin-top: 12px"
					data-href="product-detail.jsp?productID=${id }" data-width="1100"
					data-numposts="5"></div>
			</div>
		</div>
	</div>
	<!-- End Cart -->

	<!-- Start Footer  -->
	<%@include file="/WEB-INF/common/footer/footer.jsp"%>
	<!-- End Footer  -->

	<!-- ALL JS FILES -->
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0&appId=1072330460766904"
		nonce="tczl9AmJ"></script>
	<script src="./js/jquery-3.2.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="./js/jquery.superslides.min.js"></script>
	<script src="./js/bootstrap-select.js"></script>
	<script src="./js/inewsticker.js"></script>
	<script src="./js/bootsnav.js"></script>
	<script src="./js/images-loded.min.js"></script>
	<script src="./js/isotope.min.js"></script>
	<script src="./js/owl.carousel.min.js"></script>
	<script src="./js/baguetteBox.min.js"></script>
	<script src="./js/contact-form-script.js"></script>
	<script src="./js/custom.js"></script>
	<script src="./js/offer.js"></script>
</body>
</html>