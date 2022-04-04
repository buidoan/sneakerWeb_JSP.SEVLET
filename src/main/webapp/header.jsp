<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header class="header">
		<div class="grid wide">
			<!--header navbar-->
			<nav class="navbar-header hide-on-mobile-tablet">
				<ul class="header-navbar-list">
					<li class="header-navbar-item header-navbar-item--seperate">Tải
						ứng dụng</li>
					<li class="header-navbar-item"><span class="no-pointer">
							Kết nối</span> <a href="" class="header-navbar-icon-link"> <i
							class=" header-navbar-icon  fab fa-facebook"></i></a> <a href=""
						class="header-navbar-icon-link"> <i
							class=" header-navbar-icon fab fa-instagram"></i></a></li>

				</ul>
				<ul class="header-navbar-list">
					<li class="header-navbar-item header-navbar-item--hover"><a
						href="" class="header-navbar-item-link"> <i
							class="header-navbar-icon fas fa-bell"></i></a> <a> Thông báo</a>
						<div class="header-notification">
							<header class="header-notification-header">
								<h3>Thông báo mới nhất</h3>
							</header>
							<ul class="header-notification-list">
								<li class="header-notification-item "><a href=""
									class="header-notification-link"> <img
										src="	https://cf.shopee.vn/file/e563dbc2e6a1686585e262c20d0faef0_tn"
										alt="" class="header-notification-image">
										<div class="header-notification-information">
											<span class="header-notification-name">Tên Sản Phẩm</span>
											<span class="header-notification-description">Mô tả
												sản phẩm</span>
										</div>
								</a></li>
								<li
									class="header-notification-item header-notification-item--unviewed">
									<a href="" class="header-notification-link"> <img
										src="	https://cf.shopee.vn/file/e563dbc2e6a1686585e262c20d0faef0_tn"
										alt="" class="header-notification-image">
										<div class="header-notification-information">
											<span class="header-notification-name">Tên Sản Phẩm</span>
											<span class="header-notification-description">Mô tả
												sản phẩm</span>
										</div>
								</a>
								</li>
								<li
									class="header-notification-item header-notification-item--unviewed">
									<a href="" class="header-notification-link"> <img
										src="	https://cf.shopee.vn/file/e563dbc2e6a1686585e262c20d0faef0_tn"
										alt="" class="header-notification-image">
										<div class="header-notification-information">
											<span class="header-notification-name">Tên Sản Phẩm</span>
											<span class="header-notification-description">Mô tả
												sản phẩm</span>
										</div>
								</a>
								</li>
								<li
									class="header-notification-item header-notification-item--unviewed">
									<a href="" class="header-notification-link"> <img
										src="	https://cf.shopee.vn/file/e563dbc2e6a1686585e262c20d0faef0_tn"
										alt="" class="header-notification-image">
										<div class="header-notification-information">
											<span class="header-notification-name">Tên Sản Phẩm</span>
											<span class="header-notification-description">Mô tả
												sản phẩm</span>
										</div>
								</a>
								</li>
							</ul>
							<footer class="header-notification-footer">
								<a href="" class="header-notification-footer-btn">Xem tất
									cả</a>
							</footer>
						</div></li>
					<li class="header-navbar-item"><a href=""
						class="header-navbar-item-link"> <i
							class="header-navbar-icon far fa-question-circle"></i> Hỗ trợ

					</a></li>
					<c:if test="${sessionScope.acc==null}">
						<li
							class="header-navbar-item header-navbar-item--strong header-navbar-item--seperate">
							<a class="header-navbar-item-link" href="Register.jsp">Đăng
								kí</a>
						</li>
						<li class="header-navbar-item header-navbar-item--strong"><a
							class="header-navbar-item-link" href="Login.jsp">Đăng nhập</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!=null}">
						<li class="header-navbar-item header-navbar-user"><img alt
							src="./img/avatar1.jpg" class="header-user-avatar"> <span
							class="header-user-name">${sessionScope.acc.username}</span>

							<ul class="header-user-info-list">
								<li class="header-user-info-item"><a href="" class="">Tài
										khoản của tôi</a></li>
								<li class="header-user-info-item"><a href="" class="">Địa
										chỉ của tôi</a></li>
								<li class="header-user-info-item"><a href="" class="">Đơn
										mua</a></li>
								<li class="header-user-info-item"><a href="logout" class="">Đăng
										xuất</a></li>
							</ul></li>
					</c:if>
				</ul>
			</nav>

			<!--header with search-->

			<div class="header-with-search">
				<label class="header-mobile-search"
					for="header-mobile-search-checkbox"> <i
					class="header-mobile-search-icon fas fa-search"></i>
				</label>
				<div class="header-logo hide-on-tablet">
					<a class="header-logo-link" href="home"> <svg id="Layer_1"
							style="width: 100px; display: block;"
							enable-background="new 0 0 511.998 511.998" height="512"
							viewBox="0 0 511.998 511.998" width="512"
							xmlns="http://www.w3.org/2000/svg">
                            <path class="face"
								style="fill-opacity: 0;
    stroke: #fff;
    stroke-width: 4px;
"
								d="m97.097 297.684c-4.765-.61-8.572 2.685-9.111 6.899-.538 4.202 2.3 8.36 7.08 8.972 4.392.56 8.39-2.544 8.951-6.92.56-4.382-2.537-8.39-6.92-8.951z" />
                            <path class="man"
								style="fill-opacity: 0;
    stroke: #fff;
    stroke-width: 4px;
"
								d="m511.998 320.035c0-39.865-32.404-72.036-71.997-72.036-25.181 0-26.523-2.733-56.851-20.424 3.768-7.551-5.24-15.011-11.949-9.976l-2.254 1.691-26.068-15.207c4.444-7.491-4.69-15.729-11.678-10.484l-2.754 2.066-25.882-15.098c5.184-7.45-4.157-16.377-11.364-10.968l-3.254 2.44-55.276-32.244c-12.625-7.366-29.006-3.763-37.259 8.647l-2.733 4.109c-6.25 9.388-6.245 21.518.011 30.902l3.628 5.442-25.469 12.734c-15.934 7.967-35.51 2.954-45.541-12.095l-14.234-21.352c-15.155-22.729-49.077-21.213-62.154 2.757-18.038 33.07-17.909 32.674-20.302 37.699-11.539 22.737-17.572 55.203-12.863 86.435l-15.182 37.955c-1.482 3.705-.007 7.937 3.459 9.917 37.842 21.624 80.882 33.054 124.467 33.054h308.905c32.401 0 62.772-19.996 74.195-53.504.23-.699.395-1.611.399-2.46zm-16.275-5.468c-24.446 8.698-56.544 13.432-82.802 13.432-39.557 0-79.35-1.791-118.929-5.322l34.578-46.102c33.067 12.887 67.829 19.424 103.431 19.424 15.582 0 27.091-14.631 23.282-29.864 21.789 6.192 38.197 25.265 40.44 48.432zm-289.725-153.149c3.168-4.763 5.574-9.419 12.633-9.419 4.573 0 2.67-.313 55.424 30.459l-14.853 11.14c-3.535 2.651-4.251 7.666-1.601 11.2 2.647 3.529 7.663 4.254 11.2 1.601l20.254-15.19 25.5 14.875-15.354 11.515c-3.535 2.651-4.251 7.666-1.601 11.2 2.647 3.529 7.663 4.254 11.2 1.601l20.754-15.565 25.5 14.875-15.854 11.89c-3.535 2.651-4.251 7.666-1.601 11.2 2.647 3.529 7.663 4.254 11.2 1.601l21.254-15.94 26.97 15.732c11.319 6.602 24.386 9.808 34.976 9.808 4.436 0 8 3.564 8 8s-3.564 8-8 8c-56.442 0-110.497-17.676-155.276-49.286l-62.894-44.392-7.828-11.742c-2.663-3.999-2.665-9.165-.003-13.163zm-143.032 17.186c7.323-13.427 26.314-14.261 34.795-1.544l14.234 21.352c14.551 21.829 42.928 29.069 66.01 17.53l29.293-14.646c64.027 45.191 75.523 54.865 106.098 68.848l-38.063 50.748c-9.444-.976-18.869-2.061-28.275-3.235-2.607-14.403-10.414-26.593-20.799-34.893-14.779-11.829-31.305-21.109-49.114-27.582l-130.134-47.327zm374.439 181.395h-308.906c-38.486 0-76.522-9.521-110.446-27.589l11.063-27.657 34.037 4.546c4.394.585 8.405-2.505 8.988-6.871.585-4.379-2.491-8.403-6.871-8.988l-34.209-4.569c-2.726-22.536.413-45.556 8.984-66.524l131.635 47.872c16.168 5.876 31.168 14.3 44.588 25.041 6.236 4.983 11.223 11.961 13.809 20.172-.103-.014-102.218-13.692-103.145-13.692-4.418 0-7.995 3.582-7.995 8 0 4.098 3.086 7.476 7.058 7.944 108.195 14.437 178.281 26.315 286.928 26.315 24.091 0 51.872-3.697 75.276-10.277-11.441 16.198-30.202 26.277-50.794 26.277z" />
                            </svg>
					</a>
				</div>
				<input type="checkbox" hidden id="header-mobile-search-checkbox"
					class="header-search-checkbox">
				<form action="search" method='post' class="header-search">

					<div class="header-search-input-wrap">
						<input value="${txts}" name="txt" class="header-search-input"
							type="text" placeholder="Tìm kiếm ">
						<!--header search history-->

					</div>

					<button class=" header-search-btn ">
						<i class="header-search-btn-icon fas fa-search "></i>
					</button>

				</form>


				<!--header cart-->
				<div class="header-cart ">
					<div class="header-cart-wrap">
						<i class="header-cart-icon fas fa-shopping-cart "></i> <span
							class="header-cart-notice">${listS.size()}</span>


						<div class="header-cart-list ">

							<!--cart no list: header-cart-no-list-->
							<c:if test="${listS.size()==0 }">
								<div class="header-cart-no-list">
									<img src="./img/no.png" alt="" class="no-cart-img"> <span
										class="header-cart-no-list-mess">Chưa có sản phẩm</span>
								</div>
							</c:if>

							<!--cart has list: header-cart-has-list-->

							<c:if test="${listS.size()!=0 }">
								<div class="header-cart-has-list">
									<h4 class="header-cart-has-list-heading">Sản phẩm đã
										chọn</h4>
									<ul class="header-cart--list">
										<c:forEach items="${listS}" var="o">
											<li class="header-cart--item"><img
												class="header-cart--item-img " src="${o.image}" alt="">
												<div class="header-cart--item-information">
													<div class="header-cart--item-head">
														<h5 class="header-cart--item-name">${o.name}</h5>
														<div class="header-cart--item-wrap">
															<span class="header-cart--item-price">${o.price}</span> <span
																class="header-cart--item-multiple">x</span> <span
																class="header-cart--item-quantity">${o.amount}</span>
														</div>
													</div>
													<div class="header-cart--item-body">
														<span class="header-cart--item-info">Phân loại
															sản phẩm : bạc</span> <span class="header-cart--item-remove"><a 
															class="header-cart--item-remove-link" href="remove?id=${o.id }">Xóa</a></span>
													</div>
												</div></li>


										</c:forEach>
									</ul>
									<a href="print"
										class="header-cart-checkall header-cart-view-all"
										style="text-decoration: none">Xem tất cả</a>
								</div>
							</c:if>

						</div>
					</div>
				</div>
			</div>



			<ul class="header-sort-list">
				<li class="header-sort-list-item header-sort-list-item--active">
					<a onclick="newest()" class="header-sort-list-item-link">Mới nhất</a>
				</li>
				<li class="header-sort-list-item"><a onclick="Popular()"
					class="header-sort-list-item-link">Bán chạy</a></li>
				<li class="header-sort-list-item"><a onclick="newest()"
					class="header-sort-list-item-link">Liên quan</a></li>
				<li class="header-sort-list-item"><a onclick="descesdingPrice()"
					class="header-sort-list-item-link">Giá</a></li>
			</ul>
		</div>
	</header>
</body>
</html>