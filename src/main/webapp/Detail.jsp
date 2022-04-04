<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>detail</title>
<link href="./css/homepage.css" rel="stylesheet">
<link href="./css/responsive.css" rel="stylesheet">
<link href="./css/grid.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,400;1,500&amp;display=swap">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

<link rel="stylesheet"
	href="./fontcss/fontawesome-free-5.15.3-web/css/all.min.css">
<style>
.gallery-wrap .img-big-wrap img {
	height: 450px;
	width: auto;
	display: inline-block;
	cursor: zoom-in;
}

.gallery-wrap .img-small-wrap .item-gallery {
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
	margin: 7px 2px;
	display: inline-block;
	overflow: hidden;
}

.gallery-wrap .img-small-wrap {
	text-align: center;
}

.gallery-wrap .img-small-wrap img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	border-radius: 4px;
	cursor: zoom-in;
}

.img-big-wrap img {
	width: 100% !important;
	height: auto !important;
}

.preview {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media screen and (max-width: 996px) {
	.preview {
		margin-bottom: 20px;
	}
}

.preview-pic {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.preview-thumbnail.nav-tabs {
	border: none;
	margin-top: 15px;
}

.preview-thumbnail.nav-tabs li {
	width: 18%;
	margin-right: 2.5%;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	display: block;
}

.preview-thumbnail.nav-tabs li a {
	padding: 0;
	margin: 0;
}

.preview-thumbnail.nav-tabs li:last-of-type {
	margin-right: 0;
}

.tab-content {
	overflow: hidden;
}

.tab-content img {
	width: 100%;
	-webkit-animation-name: opacity;
	animation-name: opacity;
	-webkit-animation-duration: .3s;
	animation-duration: .3s;
}

.card1 {
	/*background: #eee;*/
	padding: 3em;
	line-height: 1.5em;
}

@media screen and (min-width: 997px) {
	.wrapper {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
	}
}

.details {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

.colors {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.product-title, .price, .sizes, .colors {
	text-transform: UPPERCASE;
	font-weight: bold;
}

.checked, .price span {
	color: #ff9f1a;
}

.product-title, .rating, .product-description, .price, .vote, .sizes {
	margin-bottom: 15px;
}

.product-title {
	margin-top: 0;
}

.size {
	margin-right: 10px;
}

.size:first-of-type {
	margin-left: 40px;
}

.color {
	display: inline-block;
	vertical-align: middle;
	margin-right: 10px;
	height: 2em;
	width: 2em;
	border-radius: 2px;
}

.color:first-of-type {
	margin-left: 20px;
}

.add-to-cart, .like {
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	-webkit-transition: background .3s ease;
	transition: background .3s ease;
}

.add-to-cart:hover, .like:hover {
	background: #b36800;
	color: #fff;
}

.not-available {
	text-align: center;
	line-height: 2em;
}

.not-available:before {
	font-family: fontawesome;
	content: "\f00d";
	color: #fff;
}

.orange {
	background: #ff9f1a;
}

.green {
	background: #85ad00;
}

.blue {
	background: #0076ad;
}

.tooltip-inner {
	padding: 1.3em;
}

@
-webkit-keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}

100
%
{
opacity
:
1;
-webkit-transform
:
scale(
1
);
transform
:
scale(
1
);
}
}
@
keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}
100
%
{
opacity
:
1;
-webkit-transform
:
scale(
1
);
transform
:
scale(
1
);
}
}

/*# sourceMappingURL=style.css.map */
</style>
</head>
<body>
	<div class="homepage">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="container">
			<div class="grid wide">
				<div class="row sm-gutter content">
					<div class="col l-2 m-0 c-0">
						<!--category-->
						<nav class="category">
							<h3 class="category-heading">
								<i class="category-icon fas fa-list"></i> Danh mục
							</h3>
							<ul class="category-list">
								<c:forEach items="${listC}" var="o">
									<li class="category-item ${tag == o.cid ? "active":""}"><a
										href="category?cid=${o.cid}" class="category-item-link">${o.cname}</a></li>
								</c:forEach>

							</ul>
						</nav>
					</div>
					<div class="col l-10 m-12 c-12">
						<div class="card" style="padding-left: 10px">
							<div class="row">
								<aside class="col l-5 border-right">
									<article class="gallery-wrap">
										<div class="img-big-wrap">
											<div>
												<a href="#"><img src="${detail.image}"></a>
											</div>
										</div>
										<!-- slider-product.// -->
										<!--	<div class="img-small-wrap"></div>
										<!-- slider-nav.// -->
									</article>
									<!-- gallery-wrap .end// -->
								</aside>
								<aside class="col l-7">
									<article class="card-body p-5" style="padding-left: 10px">
										<h3 class="title mb-3">${detail.name}</h3>

										<p class="price-detail-wrap">
											<span class="price h3 text-warning"> <span
												class="currency">US $</span><span class="num">${detail.price}</span>
											</span>
										</p>
										<!-- price-detail-wrap .// -->
										<dl class="item-property ">
											<dt>Mô tả sản phẩm</dt>
											<dd>
												<p class="details">${detail.description}</p>
											</dd>
										</dl>

										<hr>
										<div class="row">
											<div class="col-sm-5">
												<dl class="param param-inline">
													<dt>Số lượng:</dt>
													<dd>
												
														<select class="form-control form-control-sm"
															style="width: 70px;" name="amount">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
														</select>
														
													</dd>
												</dl>
												<!-- item-property .// -->
											</div>
											<!-- col.// -->

										</div>
										<!-- row.// -->
										<hr>
										<a href="#" class="btn btn-lg btn-primary text-uppercase">
											Mua ngay </a> <a href="cart?id=${detail.id }"
											class="btn btn-lg btn-outline-primary text-uppercase"> <i
											class="fas fa-shopping-cart"></i>Thêm vào giỏ hàng
										</a>


									</article>
									<!-- card-body.// -->
								</aside>
								<!-- col.// -->
							</div>
							<!-- row.// -->
						</div>
						<!-- card.// -->
					</div>
				</div>
			</div>

		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>



</body>
</html>