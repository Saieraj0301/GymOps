<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us Page</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.zoom {
	transition: transform .1s; /* Animation */
	width: 100px;
	height: 100px;
	margin: 0 auto;
}

.zoom:hover {
	transform: scale(1.2); /* (150% zoom)*/
}
</style>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<br>
	<h1 class="text-center p-3 text-danger">Contact Us</h1>
	<br>
	<br>
	<div class="container">
		<div class="row">

			<div class="col-md-3 zoom">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<h3>
							<i class="fas fa-phone"></i> Contact
						</h3>
						<h5 class="text-danger">8602768216</h5>
					</div>
				</div>
			</div>


			<div class="col-md-3 zoom">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<h3>
							<i class="fas fa-envelope-open-text"></i> Send Mail
						</h3>
						<h5 class="text-danger">panjwaniinfo@gmail.com</h5>
					</div>
				</div>
			</div>

			<div class="col-md-3 zoom">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<h3>
							<i class="fas fa-map-marker-alt"></i>Office Address
						</h3>
						<h5 class="text-danger">Indrapuri,Bhopal</h5>
					</div>
				</div>
			</div>

			<div class="col-md-3 zoom">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<h3>
							<i class="fas fa-business-time"></i> Office Hours
						</h3>
						<h5 class="text-danger">09:00 Am to 07:00 Pm</h5>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>