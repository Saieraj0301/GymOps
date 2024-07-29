<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("delete from member where id='" + id + "'");
		response.sendRedirect("viewMember.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>