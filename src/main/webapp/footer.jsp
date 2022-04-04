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
	<footer class="footer">
		<div class="grid wide">
			<div class="row ">
				<div class="col l-2-4 m-4 c-6">
					<h3 class="footer-heading">Chăm sóc khách hàng</h3>
					<ul class="footer-list">
						<li class="footer-item"><a class="footer-item-link" href="#">Trung
								tâm trợ giúp</a></li>
						<li class="footer-item"><a class="footer-item-link" href="#">Shop
								mall</a></li>

						<li class="footer-item"><a class="footer-item-link" href="#">Trợ
								giúp mua hàng</a></li>

					</ul>
				</div>
				<div class="col l-2-4 m-4 c-6">
					<h3 class="footer-heading">Giới thiệu</h3>
					<ul class="footer-list">
						<li class="footer-item"><a class="footer-item-link" href="#">Giới
								thiệu</a></li>
						<li class="footer-item"><a class="footer-item-link" href="#">Tuyển
								dụng</a></li>
						<li class="footer-item"><a class="footer-item-link" href="#">Điều
								khoản</a></li>

					</ul>
				</div>
				<div class="col l-2-4 m-4 c-6">
					<h3 class="footer-heading">Danh mục</h3>
					<ul class="footer-list">
						<c:forEach items="${listC}" var="o">
							<li class="footer-item"><a class="footer-item-link" href="category?cid=${o.cid}">${o.cname}
									</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="col l-2-4 m-4 c-6">
					<h3 class="footer-heading">Theo dõi</h3>
					<ul class="footer-list">
						<a href="#" class="footer-item-link"> <i
							class="footer-item-icon fab fa-facebook"></i>Facebook

						</a>
						<a class="footer-item-link" href="#"> <i
							class="footer-item-icon fab fa-instagram ?*"></i>Instagram
						</a>

					</ul>
				</div>
				<div class="col l-2-4 m-4 c-6">
					<h3 class="footer-heading">Tải ứng dụng</h3>
					<div class="footer-img-list">
						<a href="" class="app-link"> <img alt=""
							src="./img/appstore.png" class="footer-img"></a> <a href=""
							class="app-link"><img alt="" src="./img/ggplay.jpg"
							class="footer-img"></a>
					</div>
				</div>
			</div>
		</div>


		<div class="footer-bottom">
			<div class="grid wide">
				<p class="footer-text">@2021 by BCD</p>
			</div>

		</div>


	</footer>
</body>
</html>