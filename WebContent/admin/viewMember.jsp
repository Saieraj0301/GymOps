<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Equipment</title>
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


		<h4 class="text-center text-danger">View Member</h4>
		<br> <br>
		<table class="table table-bordered" id="example">
			<thead style="background-color: #d7ccc8">
				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Contact Number</th>
					<th>Email ID</th>
					<th>Gender</th>
					<th>Plan</th>
					<th>Joining Date</th>
					<th>Initial Amount</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					try {
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from member");
						int i = 0;
						while (rs.next()) {
							i++;
				%>
				<td><%=i%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("mobileNumber")%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("gender")%></td>
				<td><%=rs.getString("mplan")%></td>
				<td><%=rs.getString("joindate")%></td>
				<td><%=rs.getString("initamount")%></td>
				<td><a href="editMember.jsp?id=<%=rs.getString("id")%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a> <a
					href="deleteMember.jsp?id=<%=rs.getString("id")%>"
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