<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String mobileNumber = request.getParameter("mobileNumber");
	String email = request.getParameter("email");
	String initamount = request.getParameter("initamount");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con
				.prepareStatement("update member set name=?,mobileNumber=?,email=?,initamount=? where id=?");
		ps.setString(1, name);
		ps.setString(2, mobileNumber);
		ps.setString(3, email);
		ps.setString(4, initamount);
		ps.setInt(5, id);
		ps.executeUpdate();
		response.sendRedirect("editMember.jsp?msg=valid");
	} catch (Exception e) {
		response.sendRedirect("editMember.jsp?msg=invalid");
	}
%>