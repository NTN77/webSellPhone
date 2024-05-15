<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
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
	<title>Hoang Kim: Checkout</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Site Icons -->
	<link rel="shortcut icon" href="https://hoangkimmobile.com/wp-content/uploads/2021/01/logo-Hoang-Kim-Mobile-retina-xam.png" type="image/x-icon">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- Site CSS -->
	<link rel="stylesheet" href="./css/style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="./css/responsive.css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="./css/custom.css">

	<!-- Font Awesome CSS links -->
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<style type="text/css">
	.a:hover {
		background-color: gold;
		transition: all 0.2s
	}
	</style>
</head>
<body>
	<!-- Start Main Top -->
	<%@include file="/WEB-INF/common/header/header.jsp"%>
	<!-- End Main Top -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-6 mb-3">
					<div class="checkout-address">
						<div class="title-left">
							<h3><fmt:message>checkout.bill</fmt:message></h3>
						</div>
						<form class="needs-validation" method="POST" id="form-order" 
						action="${pageContext.request.contextPath}/PayServlet">
							<div class="mb-3">
								<label for="customer-name">Email</label>
								<div>
									<input type="text" name="email" class="form-control"
										id="customer-name" placeholder="Email"
										onchange="changeNameBorderColor()" required="" value="${email }">
								</div>
							</div>
							<div class="mb-3">
								<label for="customer-name"><fmt:message>checkout.fullname</fmt:message></label>
								<div>
									<input type="text" name="name" class="form-control"
										id="customer-name" placeholder=""
										onchange="changeNameBorderColor()" value="${name }">
								</div>
							</div>
							<div class="mb-3">
								<label for="address"><fmt:message>register.address</fmt:message></label> 
								<input type="text"
									class="form-control" id="customer-address" name="address"
									placeholder="" onchange="changeAddressBorderColor()" required="" value="${address }">
							</div>
							<div class="mb-3">
								<label for="number-phone"><fmt:message>register.phone</fmt:message></label> 
								<input
									type="text" class="form-control" id="number-phone" name="phone"
									placeholder="" onchange="changeNumberphoneBorderColor()" required="" value="${phone }">
								<span id="error-phone"></span>
							</div>
							<div class="mb-3">
								<label for="discount-code"><fmt:message>checkout.code</fmt:message></label>
								<input
									type="email" class="form-control" id="discount-code"
									name="discount" placeholder="">
								<c:if test="${not empty error  }">
									<p style="color: red">${error }</p>
								</c:if> 
							</div>
							<div class="shopping-box">
								<button class="btn hvr-hover" type="submit"
									onclick="order(event)"><fmt:message>checkout.order</fmt:message></button>
								<span id="error"></span>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-12 col-lg-6 mb-3">
					<div class="row">
						<div class="col-md-12 col-lg-12">
							<div class="odr-box">
								<div class="title-left">
									<h3><fmt:message>checkout.cart</fmt:message></h3>
								</div>
								<c:set var="currency" value="$" />
								<c:forEach var="product" items="${cart.items}">
									<div class="rounded p-2 bg-light">
										<div class="media mb-2 border-bottom">
											<div class="media-body">
												${product.name}
												<div class="small text-muted">
													<fmt:message>cart.price</fmt:message>: ${currency}${product.price} <span class="mx-2">|</span>
													<fmt:message>cart.quantity</fmt:message>: ${product.number} <span class="mx-2">|</span>
													<fmt:message>checkout.subtotal</fmt:message>: ${currency}${product.amount}
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-md-12 col-lg-12">
							<div class="order-box">
								<div class="d-flex gr-total">
									<h5><fmt:message>order.total</fmt:message></h5>
									<div class="ml-auto h5">${currency}${cart.totalAmount}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Cart -->
	
	<!-- Start Footer  -->
	<%@include file="/WEB-INF/common/footer/footer.jsp"%>
	<!-- End Footer  -->

	<!-- ALL JS FILES -->
	<script>
		var placeholderText1 = "<fmt:message>checkout.fullname</fmt:message>";
		document.getElementById('customer-name').placeholder = placeholderText1;	
		var placeholderText4 = "<fmt:message>register.address</fmt:message>";
		document.getElementById('customer-address').placeholder = placeholderText4;
		var placeholderText5 = "<fmt:message>register.phone</fmt:message>";
		document.getElementById('number-phone').placeholder = placeholderText5;
		var placeholderText6 = "<fmt:message>checkout.code</fmt:message>";
		document.getElementById('discount-code').placeholder = placeholderText6;
	</script>
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
	<script src="./js/order.js"></script>
	<script src="./js/offer.js"></script>
</body>
</html>