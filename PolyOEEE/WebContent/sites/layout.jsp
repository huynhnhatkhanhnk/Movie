<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">

<head>
<title>${page.title }</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<base href="/PolyOEEE/" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
.pl-5 {
	background-color: white;
}
/* Footer */
@import
	url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')
	;

section {
	padding: 60px 0;
}

section .section-title {
	text-align: center;
	color: #007b5e;
	margin-bottom: 50px;
	text-transform: uppercase;
}

#footer {
	background: #007b5e !important;
}

#footer h5 {
	padding-left: 10px;
	border-left: 3px solid #eeeeee;
	padding-bottom: 6px;
	margin-bottom: 20px;
	color: #ffffff;
}

#footer a {
	color: #ffffff;
	text-decoration: none !important;
	background-color: transparent;
	-webkit-text-decoration-skip: objects;
}

#footer ul.social li {
	padding: 3px 0;
}

#footer ul.social li a i {
	margin-right: 5px;
	font-size: 25px;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	transition: .5s all ease;
}

#footer ul.social li:hover a i {
	font-size: 30px;
	margin-top: -10px;
}

#footer ul.social li a, #footer ul.quick-links li a {
	color: #ffffff;
}

#footer ul.social li a:hover {
	color: #eeeeee;
}

#footer ul.quick-links li {
	padding: 3px 0;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	transition: .5s all ease;
}

#footer ul.quick-links li:hover {
	padding: 3px 0;
	margin-left: 5px;
	font-weight: 700;
}

#footer ul.quick-links li a i {
	margin-right: 5px;
}

#footer ul.quick-links li:hover a i {
	font-weight: 700;
}

@media ( max-width :767px) {
	#footer h5 {
		padding-left: 0;
		border-left: transparent;
		padding-bottom: 0px;
		margin-bottom: 10px;
	}
}
</style>
<body>
	<main class="contaier" style="background-color: Black">
		<header class="row">

			<img alt="" src="./images/bia.jpg" style="width: 2000px"
				height="500px">

		</header>
		<nav class="row pl-3">
			<nav class=" col navbar navbar-expand-sm navbar-grey bg-grey">
				<a class="navbar-brand" href="#">Hậu Film</a>
				<button class="navbar-toggler d-lg-none" type="button"
					data-toggle="collapse" data-target="#collapsibleNavId"
					aria-controls="collapsibleNavId" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavId">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link" href="#">
								<i class="fa fa-home" aria-hidden="true"></i> <span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="Homepage">
								<i class="fa fa-id-info" aria-hidden="true"></i> Home
						</a></li>
						<li class="nav-item"><a class="nav-link" href="Homepage">
								<i class="fa fa-id-info" aria-hidden="true"></i> About Us
						</a></li>
						<li class="nav-item"><a class="nav-link" href="Homepage">
								<i class="fa fa-id-card" aria-hidden="true"></i> Contact Us
						</a></li>
						<li class="nav-item"><a class="nav-link" href="Favorite">
								<i class="fa fa-comments" aria-hidden="true"></i> My Favorites
						</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdownId"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-user" aria-hidden="true"></i> My Account
						</a>
							<div class="dropdown-menu" aria-labelledby="dropdownId">
								<c:if test="${ ! isLogin }">
									<a class="dropdown-item" href="Login">Login</a>
									<a class="dropdown-item" href="Forgotpassword">Forgot
										Passwork</a>
									<a class="dropdown-item" href="Registration">Registration</a>
								</c:if>
								<c:if test="${isLogin }">
									<a class="dropdown-item" href="Logoff">Logoff</a>
									<a class="dropdown-item" href="ChangePasswordServlet">Change
										Passwork</a>
									<a class="dropdown-item" href="EditProfileServlet">Edit
										Profile</a>
								</c:if>
							</div></li>
					</ul>
					<%-- <form class="form-inline my-2 my-lg-0">
					<fmt:setLocale value="${param.lang }" scope="request" />
						<a href="?lang=vi"><img alt="" width="70px" height="40px" src="./images/vn.png"></a>
					    <a href="?lang=en"><img alt="" width="70px" height="40px" src="./images/en.png"></a>	
					</form> --%>
				</div>
			</nav>
		</nav>
		<div class="row pl-5">
			<jsp:include page="${page.contentUrl }"></jsp:include>
		</div>
		<div class="col text-center boder-top">
			<footer class="bg-light text-center text-lg-start">
				<section id="footer">
					<div class="container">
						<div
							class="row text-center text-xs-center text-sm-left text-md-left">
							<div class="col-xs-12 col-sm-4 col-md-4">
								<h5>Quick links</h5>
								<ul class="list-unstyled quick-links">
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Home</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>About</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>FAQ</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Get Started</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Videos</a></li>
								</ul>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4">
								<h5>Quick links</h5>
								<ul class="list-unstyled quick-links">
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Home</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>About</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>FAQ</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Get Started</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Videos</a></li>
								</ul>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4">
								<h5>Quick links</h5>
								<ul class="list-unstyled quick-links">
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Home</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>About</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>FAQ</a></li>
									<li><a href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-angle-double-right"></i>Get Started</a></li>
									<li><a href="https://wwwe.sunlimetech.com"
										title="Design and developed by"><i
											class="fa fa-angle-double-right"></i>Imprint</a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
								<ul class="list-unstyled list-inline social text-center">
									<li class="list-inline-item"><a
										href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-facebook"></i></a></li>
									<li class="list-inline-item"><a
										href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-twitter"></i></a></li>
									<li class="list-inline-item"><a
										href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-instagram"></i></a></li>
									<li class="list-inline-item"><a
										href="https://www.fiverr.com/share/qb8D02"><i
											class="fa fa-google-plus"></i></a></li>
									<li class="list-inline-item"><a
										href="https://www.fiverr.com/share/qb8D02" target="_blank"><i
											class="fa fa-envelope"></i></a></li>
								</ul>
							</div>
							<hr>
						</div>
						<div class="row">
							<div
								class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
								<p>
									<u><a href="https://www.nationaltransaction.com/">National
											Transaction Corporation</a></u> is a Registered MSP/ISO of Elavon,
									Inc. Georgia [a wholly owned subsidiary of U.S. Bancorp,
									Minneapolis, MN]
								</p>
								<p class="h6">
									© All right Reversed.<a class="text-green ml-2"
										href="https://www.sunlimetech.com" target="_blank">Sunlimetech</a>
								</p>
							</div>
							<hr>
						</div>
					</div>
				</section>
			</footer>

		</div>

	</main>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<c:if test="${not empty page.scriptUrl}">
		<jsp:include page="${page.sciptUrl }"></jsp:include>
	</c:if>
</body>

</html>