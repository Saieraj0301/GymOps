<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String pname = request.getParameter("pname");
	String amount = request.getParameter("amount");
	String duration = request.getParameter("duration");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("update plan set pname=?,amount=?,duration=? where id=?");
		ps.setString(1, pname);
		ps.setString(2, amount);
		ps.setString(3, duration);
		ps.setInt(4, id);
		ps.executeUpdate();
		response.sendRedirect("editPlan.jsp?msg=valid");
	} catch (Exception e) {
		response.sendRedirect("editPlan.jsp?msg=invalid");
	}
%>