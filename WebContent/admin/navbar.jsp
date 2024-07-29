<!-- datatable start -->
<script>
	$(document).ready(function() {
		$('#example').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'copyHtml5', 'excelHtml5', 'csvHtml5', 'pdfHtml5' ]
		});
	});
</script>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.html5.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css">
<!-- datatable end -->


<div class="container-fluid"
	style="height: 15px; background-color: #455a64"></div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom "
	style="margin-left: 0px">
	<a class="navbar-brand" href="admin_home.jsp" style="margin-left: 3%">Gym
		Management System</a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent"
		style="margin-left: 30%">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link active"
				aria-current="page" href="admin_home.jsp"><i
					class="fas fa-tachometer-alt"></i> Dashboard</a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Enquiry </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="addEnquiry.jsp">Add Enquiry</a> <a
						class="dropdown-item" href="viewEnquiry.jsp">View Enquiry</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Plan </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="addPlan.jsp">Add plan</a> <a
						class="dropdown-item" href="viewPlan.jsp">View plan</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Equipment </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="addEquipment.jsp">Add Equipment</a>
					<a class="dropdown-item" href="viewEquipment.jsp">View
						Equipment</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Member </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="addMember.jsp">Add Member</a> <a
						class="dropdown-item" href="viewMember.jsp">View Member</a>
				</div></li>

			<li class="nav-item active"><a class="nav-link"
				href="logout.jsp"> Logout</a></li>
				
			 <li class="nav-item active"><a class="nav-link"
				href="changePassword.jsp"> Change Password</a></li>

		</ul>
	</div>
</nav>