<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Enquiry</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<span style="color: red"><h4 style="margin-top: 10px">Welcome
		</span>:
	<span style="color: blue"> Admin
		</h4>
	</span>
	<br>

	<%
		String msg = request.getParameter("msg");
		if ("deleted".equals(msg)) {
	%>
	<script>
		alert("Deleted Successfully..");
		window.location.assign("viewEnquiry.jsp");
	</script>
	<%
		}
	%>



	<div class="container mt-5">
		<h1 class="text-success text-center"></h1>


		<h4 class="text-center text-danger">View Enquiry</h4>
		<br>
		<table class="table table-bordered" id="example">
			<thead style="background-color: #d7ccc8">
				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Contact Number</th>
					<th>Email ID</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					try {
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from enquiry");
						int i = 0;
						while (rs.next()) {
							i++;
				%>
				<td><%=i%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("mobileNumber")%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("age")%></td>
				<td><%=rs.getString("gender")%></td>
				<td><a href="editEnquiry.jsp?id=<%=rs.getString("id")%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a> <a
					href="deleteEnquiry.jsp?id=<%=rs.getString("id")%>"
					class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a></td>
				</tr>
				<%
					}
					} catch (Exception e) {
						System.out.println(e);
					}
				%>
			</tbody>
		</table>

	</div>

</body>
</html>