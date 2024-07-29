<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Equipment</title>
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
	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<script>
		alert("Data Added Successfully..");
		window.location.assign("viewEquipment.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("invalid".equals(msg)) {
	%>
	<script>
		alert("Something went wrong! Try Again..");
		window.location.assign("addEquipment.jsp");
	</script>
	<%
		}
	%>

	<h3 class="text-center text-danger">Add Equipment</h3>
	<br>
	<br>
	<div class="container">
		<h1 class="text-success text-center "></h1>
		<div class="col-lg-9 m-auto d-block">
			<div class="card">
				<div class="card-body">

					<form action="addEquipmentAction.jsp" method="post">

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Equipment
								Name</label>
							<div class="col-sm-10">
								<input type="text" name="ename" class="form-control"
									id="inputAddress" placeholder="Enter Equipment Name"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Price</label>
							<div class="col-sm-10">
								<input type="number" name="price" class="form-control"
									id="inputAddress" placeholder="Enter Price(In Rs.)"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Unit</label>
							<div class="col-sm-10">
								<input type="number" name="unit" class="form-control"
									id="inputAddress" placeholder="Enter Unit"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="exampleFormControlInput1"
								class="col-sm-2 col-form-label">Purchase Date</label>
							<div class="col-sm-10">
								<input type="date" id="purchasedate" name="purchasedate"
									class="form-control form-control-sm" style="width: 600px;"
									required>
							</div>
						</div>

						<div class="form-group row">
							<label for="exampleFormControlInput1"
								class="col-sm-2 col-form-label">Description</label>
							<div class="col-sm-10">
								<textarea name="description"
									placeholder="Describe About Equipment" rows="8" cols="14"
									class="form-control" style="width: 600px;" required="true"></textarea>
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