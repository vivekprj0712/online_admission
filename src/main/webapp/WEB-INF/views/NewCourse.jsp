
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title> COAT | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">


 
	<%@include file="AdminHeader.jsp" %>

		<jsp:include page="AdminSidebar.jsp"></jsp:include>
		
		
		
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">New Course</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
								<li class="breadcrumb-item active">New Course</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">

							<div class="card card-info">
								<div class="card-header">
									<h3 class="card-title">Add Course</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form class="form-horizontal" action="savecourse" method="post">
									<div class="card-body">
										<div class="form-group row">
																				
											<label for="courseName" class="col-sm-3 col-form-label">CourseName</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="courseName"
													placeholder="Course Name" name="courseName" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="minimumQualification" class="col-sm-4 col-form-label">MinimumQualification</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="minimumQualification"
													placeholder="MinimumQualification" name="minimumQualification" required="required">
											</div>
										</div>
										
								
										
										<div class="form-group row">
										<label for="courseName" class="col-sm-2 col-form-label">Active</label>
										
										<div class="form-check form-check-inline">
  												<input class="form-check-input" type="radio" name="active" id="activeYes" value="Yes" required="required">
  												<label class="form-check-label" for="activeYes">Yes</label>
										</div>
										<div class="form-check form-check-inline">
												  <input class="form-check-input" type="radio" name="active" id="activeNo" value="No" required="required">
												  <label class="form-check-label" for="activeNo">No</label>
										</div>
										</div>
										<div class="form-group row">
											<label for="academicCycle" class="col-sm-3	 col-form-label">AcademicCycle</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputEmail3"
													placeholder="AcademicCycle" name="academicCycle" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="totalSeats" class="col-sm-3 col-form-label">Total Seats</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="totalSeats"
													placeholder="Total Seats" name="totalSeats" required="required">
											</div>
										</div>
										<div class="form-group row">
											<label for="duration" class="col-sm-3 col-form-label">Duration</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="duration"
													placeholder="Duration" name="duration" required="required">
											</div>
										</div>
										<div class="form-group row">
											<label for="developmentCost" class="col-sm-3 col-form-label">DevelopmentCost</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="developmentCost"
													placeholder="DevelopmentCost" name="developmentCost" required="required">
											</div>
										</div>
										
									</div>
									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" class="btn btn-info">Save Course</button>
										<a href="listrole" class="btn btn-default float-right">Cancel</a>

									</div>
									<!-- /.card-footer -->
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="AdminFooter.jsp"></jsp:include>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="plugins/moment/moment.min.js"></script>
	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
</body>
</html>
