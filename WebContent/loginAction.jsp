<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");

	int z = 0;
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(
				"select * from admin where email='" + email + "' and password='" + password + "'");
		while (rs.next()) {
			z = 1;
			session.setAttribute("email", email);
			response.sendRedirect("index.jsp?msg=exist");
		}
		if (z == 0)
			response.sendRedirect("index.jsp?msg=notexist");
	} catch (Exception e) {
		System.out.println(e);
	}
%>