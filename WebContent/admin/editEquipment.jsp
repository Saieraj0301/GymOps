<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Equipment</title>
<%@include file="allCss.jsp"%><br>
</head>
<body>
	<%@include file="navbar.jsp"%><br>
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
		alert("Equipment has been Updated..");
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
		window.location.assign("editEquipment.jsp");
	</script>
	<%
		}
	%>


	<%
		String id = request.getParameter("id");
		String pname = "";
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from equipment where id=" + id + "");
			while (rs.next()) {
				pname = rs.getString(2);
	%>

	<h3 class="text-center text-danger">Edit Equipment Data</h3>
	<br>
	<div class="container">
		<h1 class="text-success text-center "></h1>
		<div class="col-lg-9 m-auto d-block">
			<div class="card">
				<div class="card-body">

					<form action="editEquipmentAction.jsp" method="post">

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Equipment
								Name</label>
							<div class="col-sm-10">
								<input type="text" name="ename" class="form-control"
									id="inputAddress" placeholder="Enter New Plan Name"
									style="width: 600px;" value="<%=rs.getString(2)%>" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Price</label>
							<div class="col-sm-10">
								<input type="number" name="price" class="form-control"
									id="inputAddress" placeholder="Enter Amount(In Rs.)"
									style="width: 600px;" value="<%=rs.getString(3)%>" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Unit</label>
							<div class="col-sm-10">
								<input type="number" name="unit" class="form-control"
									id="inputAddress" placeholder="Enter Duration(In Month)"
									style="width: 600px;" value="<%=rs.getString(4)%>" required>
							</div>
						</div>
						<hr>
						<input type="hidden" name="id" value="<%=rs.getString("id")%>">
						<div class="text-center">
							<button type="submit" class="btn btn-primary"
								style="width: 350px;">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%
		}
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>