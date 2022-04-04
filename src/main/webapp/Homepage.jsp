<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HomePage</title>
<link href="./css/homepage.css" rel="stylesheet">
<link href="./css/responsive.css" rel="stylesheet">
<link href="./css/grid.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,400;1,500&amp;display=swap">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

<link rel="stylesheet"
	href="./fontcss/fontawesome-free-5.15.3-web/css/all.min.css">

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
						<div class="order-filter hide-on-mobile-tablet">
							<span class="order">sắp xếp theo</span>
							<button onclick="Popular()" class="btn">Phổ biến</button>
							<button onclick="newest()" class="btn">Mới nhất</button>
							<button onclick="bestSold()" class="btn">Bán chạy</button>
							<div class="select-input">
								<span class="select-input-lable">Giá</span> <i
									class="select-input-icon fas fa-angle-down"></i>
								<ul class="select-input-option">
									<li onclick="descesdingPrice()" class="select-input-item"><a
										class="select-input-item-link">Giá: Cao đến thấp</a></li>
									<li  onclick="ascendingPrice()" class="select-input-item"><a
										class="select-input-item-link">Giá: Thấp đến cao </a></li>
								</ul>

							</div>
							<div class="homepage-wrap">
								<span class="homepage-number"> <span class="current-page">1</span>/14
								</span>


								<div class="homepage-controler">
									<a href=""
										class="homepage-controler-btn homepage-controler-btn-disable">
										<i class="homepage-controler-icon fas fa-angle-left"></i>
									</a> <a href="" class=" homepage-controler-btn"> <i
										class="homepage-controler-icon fas fa-angle-right"></i>
									</a>

								</div>
							</div>
						</div>
						<nav class="mobile-category">
							<ul class="mobile-category-list">
								<c:forEach items="${listC}" var="o">
									<li class="mobile-category-item"><a
										href="category?cid=${o.cid}" class="mobile-category-item-link">${o.cname}</a></li>
								</c:forEach>

							</ul>
						</nav>
						<div class="home-product">
							<div id="content" class="row sm-gutter">
								<!--Product item-->

								<c:forEach items="${listP}" var="o">
									<div class="product col l-2-4 m-4 c-6">
										<a class="home-product-item" href="detail?pid=${o.id}">
											<div style="background-image: url(${o.image})"
												class="home-product-item-img"></div>



											<h4 class="home-product-item-name">${o.name}</h4>
											<div class="home-product-price">
												<span class="old-price">2.000.000đ</span> <span
													class="new-price">${o.price}</span>
											</div>
											<div class="home-product-item-action">
												<span class="home-product-item-like home-product-item-liked">
													<i class="home-product-item-like-empty far fa-heart"></i> <i
													class="home-product-item-like-fill  fas fa-heart"></i>
												</span>
												<div class="home-product-item-rate-star">
													<i class="golden-star fas fa-star"></i> <i
														class="golden-star fas fa-star"></i> <i
														class="golden-star fas fa-star"></i> <i
														class="fas fa-star"></i> <i class="fas fa-star"></i>
												</div>
												
												<span class="home-product-item-sold">80 đã bán</span>
												
											</div>

											<div class="home-product-item-orinal">
												<span class="home-product-item-brand">Fly</span> <span
													class="home-product-item-country">Trung Quốc </span>
											</div>
											<div class="home-product-item-favorite">
												<i class="home-product-item-favorite-icon fas fa-check"></i>
												<span>Yêu thích</span>
											</div>
											<div class="home-product-item-saleoff">
												<span class="home-product-item-saleoff-percent">10%</span> <span
													class="home-product-item-saleoff-label">GIẢM</span>
											</div>
										</a>
									</div>
								</c:forEach>
							</div>
							<jsp:include page="pagination.jsp"></jsp:include>

						</div>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                        function Popular() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/banhang/popular",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        
                        function newest() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/banhang/newproduct",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        
                        function bestSold() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/banhang/bestsold",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        
                        function descesdingPrice() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/banhang/htl",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        
                        function ascendingPrice() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/banhang/lth",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
        </script>  
</body>
</html>