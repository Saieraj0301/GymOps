<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String mobileNumber = request.getParameter("mobileNumber");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String mplan = request.getParameter("mplan");
	String joindate = request.getParameter("joindate");
	String initamount = request.getParameter("initamount");

	try {
		Connection con = ConnectionProvider.getCon();
		String sql = "insert into member(name,mobileNumber,email,gender,mplan,joindate,initamount) values(?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, name);
		ps.setString(2, mobileNumber);
		ps.setString(3, email);
		ps.setString(4, gender);
		ps.setString(5, mplan);
		ps.setString(6, joindate);
		ps.setString(7, initamount);
		ps.executeUpdate();
		response.sendRedirect("addMember.jsp?msg=valid");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("addMember.jsp?msg=invalid");
	}
%>