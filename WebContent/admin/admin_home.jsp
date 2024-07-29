<%@ page import="com.gym.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<%@include file="allCss.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>

</head>

<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%><br>
	<br>

	<span style="color: red"><h4 style="margin-top: 10px">Welcome
		</span>:
	<span style="color: blue"> Admin
		</h4>
	</span>
	<br>
	<br>
	<br>
	<br>


	<!--  Total Enquiry -->
	<div class="container-fluid"
		style="display: inline-flex; text-align: center;">

		<%
			try {
				int count = 0;
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from enquiry");
				while (rs.next()) {
					count++;
				}
		%>

		<div class="col-lg-3 col-md-2">
			<div class="card">
				<div class="card-body">
					<div class="stat-widget-five">
						<div class="stat-icon dib flat-color-1">
							<i class="pe-7s-car"></i>
						</div>
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-text">
									<span class="count"> <%
 	out.println(count);
 %>
									</span>
								</div>
								<div class="stat-heading">
									<i class="fas fa-people-arrows"
										style="font-size: 50px; color: blue;"></i><b
										style="vertical-align: top;"><a href="viewEnquiry.jsp">
											Total Enquiries</b></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%
			
		%>
		<div class="col-lg-3 col-md-2">

			<!--  plan -->

			<%
				int count1 = 0;
					ResultSet rs1 = st.executeQuery("select * from plan");
					while (rs1.next()) {
						count1++;
					}
			%>
			<div class="card">
				<div class="card-body">
					<div class="stat-widget-five">
						<div class="stat-icon dib flat-color-2">
							<i class="pe-7s-car"></i>
						</div>
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-text">
									<span class="count"> <%
 	out.println(count1);
 %>
									</span>
								</div>
								<div class="stat-heading">
									<i class="fas fa-building"
										style="font-size: 50px; color: blue;"></i><b
										style="vertical-align: top; padding-left: 19px;"><a
										href="viewPlan.jsp"> Plans</b></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-2">
			<!-- Equipment -->

			<%
				int count2 = 0;
					ResultSet rs2 = st.executeQuery("select * from equipment");
					while (rs2.next()) {
						count2++;
					}
			%>

			<div class="card">
				<div class="card-body">
					<div class="stat-widget-five">
						<div class="stat-icon dib flat-color-3">
							<i class="pe-7s-car"></i>
						</div>
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-text">
									<span class="count"> <%
 	out.println(count2);
 %>
									</span>
								</div>
								<div class="stat-heading">
									<i class="fab fa-trade-federation"
										style="font-size: 50px; color: blue;"></i><b
										style="vertical-align: top; padding-left: 19px;"> <a
										href="viewEquipment.jsp">Equipments</b></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-2">

			<!-- Total Vehicle Entries  -->
			<%
				int count3 = 0;
					ResultSet rs3 = st.executeQuery("select * from member");
					while (rs3.next()) {
						count3++;
					}
			%>

			<div class="card">
				<div class="card-body">
					<div class="stat-widget-five">
						<div class="stat-icon dib flat-color-4">
							<i class="pe-7s-car"></i>
						</div>
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-text">
									<span class="count"> <%
 	out.println(count3);
 %>
									</span>
								</div>
								<div class="stat-heading">
									<i class="fas fa-users" style="font-size: 50px; color: blue;"></i>
									<b style="vertical-align: top; padding-left: 19px;"><a
										href="viewMember.jsp">Members</b>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>