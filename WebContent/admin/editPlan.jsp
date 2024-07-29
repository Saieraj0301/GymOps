<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Plan</title>
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
		alert("Plan has been Updated..");
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
		window.location.assign("editPlan.jsp");
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
			ResultSet rs = st.executeQuery("select * from plan where id=" + id + "");
			while (rs.next()) {
				pname = rs.getString(2);
	%>

	<h3 class="text-center text-danger">Edit Plan Data</h3>
	<br>
	<div class="container">
		<h1 class="text-success text-center "></h1>
		<div class="col-lg-9 m-auto d-block">
			<div class="card">
				<div class="card-body">

					<form action="editPlanAction.jsp" method="post">

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">
								Plan Name</label>
							<div class="col-sm-10">
								<input type="text" name="pname" class="form-control"
									id="inputAddress" placeholder="Enter Name"
									style="width: 600px;" value="<%=rs.getString(2)%>" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Amount
							</label>
							<div class="col-sm-10">
								<input type="number" name="amount" class="form-control"
									id="inputAddress" placeholder="Enter Contact Number"
									style="width: 600px;" value="<%=rs.getString(3)%>" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Duration</label>
							<div class="col-sm-10">
								<input type="number" name="duration" class="form-control"
									id="inputAddress" placeholder="Enter Age" style="width: 600px;"
									value="<%=rs.getString(4)%>" required>
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