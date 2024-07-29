<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Enquiry</title>
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
		window.location.assign("viewMember.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("invalid".equals(msg)) {
	%>
	<script>
		alert("Something went wrong! Try Again..");
		window.location.assign("addMember.jsp");
	</script>
	<%
		}
	%>

	<h3 class="text-center text-danger">Add New Member</h3>
	<br>
	<div class="container">
		<h1 class="text-success text-center "></h1>
		<div class="col-lg-9 m-auto d-block">
			<div class="card">
				<div class="card-body">

					<form action="addMemberAction.jsp" method="post"
						onsubmit="return MobileValidate()">

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">
								Name</label>
							<div class="col-sm-10">
								<input type="text" name="name" class="form-control"
									id="inputAddress" placeholder="Enter Name"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Contact
								Number</label>
							<div class="col-sm-10">
								<input type="number" name="mobileNumber" class="form-control"
									id="inputMob" placeholder="Enter Contact Number"
									style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="exampleInputEmail1" class="col-sm-2 col-form-label">Email
								Input</label>
							<div class="col-sm-10">
								<input type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Email" style="width: 600px;" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Gender</label>
							<div class="col-sm-10">
								<input type="radio" name="gender" value="male"> Male <input
									type="radio" name="gender" value="female"> Female
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Plan</label>
							<div class="col-sm-10">
								<select class="custom-select my-1 mr-sm-2" name="mplan"
									id="inlineFormCustomSelectPref" style="width: 600px;" required>
									<option value="">--- Select Plan ---</option>

									<%
										try {
											Connection con = ConnectionProvider.getCon();
											Statement st = con.createStatement();
											ResultSet rs = st.executeQuery("select pname from plan");
											while (rs.next()) {
									%>
									<option value="<%=rs.getString("pname")%>"><%=rs.getString("pname")%></option>
									<%
										}
										}

										catch (Exception e) {
											System.out.println(e);
										}
									%>

								</select>

							</div>
						</div>

						<div class="form-group row">
							<label for="exampleFormControlInput1"
								class="col-sm-2 col-form-label">Joining Date</label>
							<div class="col-sm-10">
								<input type="date" id="entrydate" name="joindate"
									class="form-control form-control-sm" style="width: 600px;"
									required>
							</div>
						</div>

						<div class="form-group row">
							<label for="inputAddress" class="col-sm-2 col-form-label">Initial
								Amount</label>
							<div class="col-sm-10">
								<input type="number" name="initamount" class="form-control"
									id="inputAddress" placeholder="Enter Initial Amount(In Rs.)"
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

	<script type="text/javascript">
		function MobileValidate() {
			var mobileNumber = document.getElementById("inputMob").value;
			var mobileNumberTenDigit = /^\d{10}$/;
			if (mobileNumber != '') {
				if (mobileNumber.match(mobileNumberTenDigit)) {
					return true;
				} else {
					alert("Enter Ten Digit Number");
					return false;
				}
			}
		}
	</script>

</body>
</html>