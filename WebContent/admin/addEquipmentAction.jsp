<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String ename = request.getParameter("ename");
	String price = request.getParameter("price");
	String unit = request.getParameter("unit");
	String purchasedate = request.getParameter("purchasedate");
	String description = request.getParameter("description");

	try {
		Connection con = ConnectionProvider.getCon();
		String sql = "insert into equipment(ename,price,unit,purchasedate,description) values(?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, ename);
		ps.setString(2, price);
		ps.setString(3, unit);
		ps.setString(4, purchasedate);
		ps.setString(5, description);
		ps.executeUpdate();
		response.sendRedirect("addEquipment.jsp?msg=valid");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("addEquipment.jsp?msg=invalid");
	}
%>