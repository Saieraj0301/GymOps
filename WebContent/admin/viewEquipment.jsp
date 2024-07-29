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


		<h4 class="text-center text-danger">View Equipment</h4>
		<br> <br>
		<table class="table table-bordered" id="example">
			<thead style="background-color: #d7ccc8">
				<tr>
					<th>S.No</th>
					<th>Equipment Name</th>
					<th>Price</th>
					<th>Unit</th>
					<th>Purchase Date</th>
					<th>Description</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					try {
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from equipment");
						int i = 0;
						while (rs.next()) {
							i++;
				%>
				<td><%=i%></td>
				<td><%=rs.getString("ename")%></td>
				<td><%=rs.getString("price")%></td>
				<td><%=rs.getString("unit")%></td>
				<td><%=rs.getString("purchasedate")%></td>
				<td><%=rs.getString("description")%></td>
				<td><a href="editEquipment.jsp?id=<%=rs.getString("id")%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a> <a
					href="deleteEquipment.jsp?id=<%=rs.getString("id")%>"
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