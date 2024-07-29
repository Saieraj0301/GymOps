<%@page import="com.gym.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String ename = request.getParameter("ename");
	String price = request.getParameter("price");
	String unit = request.getParameter("unit");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("update equipment set ename=?,price=?,unit=? where id=?");
		ps.setString(1, ename);
		ps.setString(2, price);
		ps.setString(3, unit);
		ps.setInt(4, id);
		ps.executeUpdate();
		response.sendRedirect("editEquipment.jsp?msg=valid");
	} catch (Exception e) {
		response.sendRedirect("editEquipment.jsp?msg=invalid");
	}
%>