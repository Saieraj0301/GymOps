<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String pname = request.getParameter("pname");
	String amount = request.getParameter("amount");
	String duration = request.getParameter("duration");

	try {
		Connection con = ConnectionProvider.getCon();
		String sql = "insert into plan(pname,amount,duration) values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, pname);
		ps.setString(2, amount);
		ps.setString(3, duration);
		ps.executeUpdate();
		response.sendRedirect("addPlan.jsp?msg=valid");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("addPlan.jsp?msg=invalid");
	}
%>