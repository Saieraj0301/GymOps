<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String mobileNumber = request.getParameter("mobileNumber");
	String email = request.getParameter("email");
	String age = request.getParameter("age");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con
				.prepareStatement("update enquiry set name=?,mobileNumber=?,email=?,age=? where id=?");
		ps.setString(1, name);
		ps.setString(2, mobileNumber);
		ps.setString(3, email);
		ps.setString(4, age);
		ps.setInt(5, id);
		ps.executeUpdate();
		response.sendRedirect("editEnquiry.jsp?msg=valid");
	} catch (Exception e) {
		response.sendRedirect("editEnquiry.jsp?msg=invalid");
	}
%>