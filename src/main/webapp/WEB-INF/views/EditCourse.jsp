<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COAT | Edit Course</title>
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

		<jsp:include page="AdminHeader.jsp"></jsp:include>

		<jsp:include page="AdminSidebar.jsp"></jsp:include>



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-md-6">
							<h1 class="m-0 text-dark">Edit Course</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
								<li class="breadcrumb-item active">Edit Course</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content-header -->

			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">

							<div class="card card-info">
								<div class="card-header">
									<h3 class="card-title">Edit Course</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form class="form-horizontal" action="savecourse" method="post">
									<div class="card-body">

										<div class="form-group row">
											<label for="courseName" class="col-sm-2 col-form-label">Course Name</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="courseName"
													placeholder="Course Name" name="courseName" value="${editCourse.courseName}">
											</div>
										</div>

                                       <div class="form-group row">
											<label for="MinimumQualification" class="col-sm-2 col-form-label">MinimumQualification</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="MinimumQualification"
													placeholder="MinimumQualification" name="minimumQualification" value="${editCourse.minimumQualification}">
											</div>
										</div>
										<div class="form-group row">
											<label for="Active" class="col-sm-2 col-form-label">Active</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="Active"
													placeholder="Active" name="active" value="${editCourse.active}">
											</div>
										</div>
										<div class="form-group row">
											<label for="TotalSeats" class="col-sm-2 col-form-label">TotalSeats</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="TotalSeats"
													placeholder="TotalSeats" name="totalSeats" value="${editCourse.totalSeats}">
											</div>
										</div>
										<div class="form-group row">
											<label for="AcademicCycle" class="col-sm-2 col-form-label">AcademicCycle</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="AcademicCycle"
													placeholder="AcademicCycle" name="academicCycle" value="${editCourse.academicCycle}">
											</div>
										</div>
										<div class="form-group row">
											<label for="Duration" class="col-sm-2 col-form-label">Duration</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="Duration"
													placeholder="Duration" name="duration" value="${editCourse.duration}">
											</div>
										</div>
										<div class="form-group row">
											<label for="DevelopmentCost" class="col-sm-2 col-form-label">DevelopmentCost	</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="DevelopmentCost"
													placeholder="DevelopmentCost" name="developmentCost" value="${editCourse.developmentCost}">
											</div>
										</div>
										


										
										
										 
										 <input type="hidden" name="courseId" value="${editCourse.courseId}"/>


									</div>



									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" class="btn btn-info">Update Role</button>
										<a href="listcourse" class="btn btn-default float-right">Cancel</a>
										

									</div>
									<!-- /.card-footer -->
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
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