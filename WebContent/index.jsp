<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visitor :Index</title>
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-10 m-auto d-block">
				<div class="card">
					<div class="card-body">
						<br>

						<h3 class="text-center text-danger">Admin Login</h3>

						<%
							String msg = request.getParameter("msg");
							if ("exist".equals(msg)) {
						%>
						<script>
							alert("Login Successfull");
							window.location.assign("admin/admin_home.jsp");
						</script>
						<%
							}
						%>
						<%
							if ("notexist".equals(msg)) {
						%>
						<script>
							alert("Incorrect Username or Password");
							window.location.assign("index.jsp");
						</script>
						<%
							}
						%>

						<form action="loginAction.jsp" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Username</label> <input
									type="text" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Admin Name" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" name="password" class="form-control"
									id="exampleInputPassword1" placeholder="Enter Password"
									required="required">
							</div>
							<hr>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="image/gym1.jpg" alt="First slide"
					width="100" height="575">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/gym2.jpg" alt="Second slide"
					width="100" height="575">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/gym5.jpg" alt="Third slide"
					width="100" height="575">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/gym4.jpg" alt="four slide"
					width="100" height="575">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/gym3.jpg" alt="five slide"
					width="100" height="575">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="container-fluid back-img"></div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>