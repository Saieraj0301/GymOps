<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Plan</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<span style="color: red"><h4 style="margin-top: 10px">Welcome
		</span>:
	<span style="color: blue"> Admin
		</h4>
	</span>
	<br>
	<br>
	<br>
	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<script>
		alert("Data Added Successfully..");
		window.location.assign("viewPlan.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("invalid".equals(msg)) {
	%>
	<script>
		alert("Something went wrong! Try Again..");
		window.location.assign("addPlan.jsp");
	</script>
	<%
		}
	%>

	<h3 class="text-center text-danger">Add New Plan</h3>
	<br>
	<br>
	<div class="container">
		<h1 class="text-success text-center "></h1>
		<div class="col-lg-9 m-auto d-block">
			<div class="card">
				<div class="card-body">

					<form action="addPlanAction.jsp" method="post">

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Plan
								Name</label>
							<div class="col-sm-10">
								<input type="text" name="pname" class="form-control"
									id="inputAddress" placeholder="Enter Plan Name"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Amount</label>
							<div class="col-sm-10">
								<input type="number" name="amount" class="form-control"
									id="inputAddress" placeholder="Enter Amount(In Rs.)"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Duration</label>
							<div class="col-sm-10">
								<input type="number" name="duration" class="form-control"
									id="inputAddress" placeholder="Enter Duration(In Month)"
									style="width: 600px;" required>
							</div>
						</div>
						<hr>
						<div class="text-center">
							<button type="submit" class="btn btn-primary"
								style="width: 350px;">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>