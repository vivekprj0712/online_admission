<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COAT | Edit Merit</title>
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
							<h1 class="m-0 text-dark">Edit Merit</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
								<li class="breadcrumb-item active">Edit Merit</li>
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
									<h3 class="card-title">Edit Merit</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form class="form-horizontal" action="savemerit" method="post">
									<div class="card-body">

										<div class="form-group row">
											<label for="RoundTitle" class="col-sm-2 col-form-label">RoundTitle</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="RoundTitle"
													placeholder="RoundTitle" name="roundTitle" value="${editMerit.roundTitle}">
											</div>
										</div>

                                       <div class="form-group row">
											<label for="Year" class="col-sm-2 col-form-label">Year</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="Year"
													placeholder="Year" name="year" value="${editMerit.year}">
											</div>
										</div>
										<div class="form-group row">
											<label for="GeneralCutoff" class="col-sm-2 col-form-label">GeneralCutoff</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="GeneralCutoff"
													placeholder="GeneralCutoff" name="generalCutoff" value="${editMerit.generalCutoff}">
											</div>
										</div>
										<div class="form-group row">
											<label for="ObcCutoff" class="col-sm-2 col-form-label">ObcCutoff</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="ObcCutoff"
													placeholder="ObcCutoff" name="obcCutoff" value="${editMerit.obcCutoff}">
											</div>
										</div>
										<div class="form-group row">
											<label for="StCutoff" class="col-sm-2 col-form-label">StCutoff</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="StCutoff"
													placeholder="StCutoff" name="stCutoff" value="${editMerit.stCutoff}">
											</div>
										</div>
										<div class="form-group row">
											<label for="ScCutoff" class="col-sm-2 col-form-label">ScCutoff</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="ScCutoff"
													placeholder="ScCutoff" name="scCutoff" value="${editMerit.scCutoff}">
											</div>
										</div>
										<div class="form-group row">
											<label for="GeneralQuota" class="col-sm-2 col-form-label">GeneralQuota</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="ScCutoff"
													placeholder="generalQuota" name="generalQuota" value="${editMerit.generalQuota}">
											</div>
										</div>
										<div class="form-group row">
											<label for="ObcQuota" class="col-sm-2 col-form-label">ObcQuota</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="ObcQuota"
													placeholder="ObcQuota" name="obcQuota" value="${editMerit.obcQuota}">
											</div>
										</div>
										<div class="form-group row">
											<label for="StQuota" class="col-sm-2 col-form-label">StQuota</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="StQuota"
													placeholder="StQuota" name="stQuota" value="${editMerit.stQuota}">
											</div>
										</div>
										<div class="form-group row">
											<label for="ScQuota" class="col-sm-2 col-form-label">ScQuota</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="ScQuota"
													placeholder="ScQuota" name="scQuota" value="${editMerit.scQuota}">
											</div>
										</div>
										<div class="form-group row">
											<label for="TotalSeats" class="col-sm-2 col-form-label">TotalSeats</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="StQuota"
													placeholder="TotalSeats" name="totalSeat" value="${editMerit.totalSeat}">
											</div>
										</div>
										<div class="form-group row">
											<label for="CourseId" class="col-sm-2 col-form-label">CourseId</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="CourseName"
													placeholder="CourseId" name="courseId" value="${editMerit.courseId}">
											</div>
										</div>
										


										
										
										 
										 <input type="hidden" name="meritId" value="${editMerit.meritId}"/>


									</div>



									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" class="btn btn-info">Update Role</button>
										<a href="listmerit" class="btn btn-default float-right">Cancel</a>
										

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