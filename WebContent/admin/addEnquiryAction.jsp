<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String mobileNumber = request.getParameter("mobileNumber");
	String email = request.getParameter("email");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");

	try {
		Connection con = ConnectionProvider.getCon();
		String sql = "insert into enquiry(name,mobileNumber,email,age,gender) values(?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, name);
		ps.setString(2, mobileNumber);
		ps.setString(3, email);
		ps.setString(4, age);
		ps.setString(5, gender);
		ps.executeUpdate();
		response.sendRedirect("addEnquiry.jsp?msg=valid");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("addEnquiry.jsp?msg=invalid");
	}
%>