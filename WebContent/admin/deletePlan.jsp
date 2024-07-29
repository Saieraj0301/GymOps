<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("delete from plan where id='" + id + "'");
		response.sendRedirect("viewPlan.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>