<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title> COAT | New Merit</title>
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
							<h1 class="m-0 text-dark">New Merit</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
								<li class="breadcrumb-item active">Add Merit</li>
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
									<h3 class="card-title">Add Merit</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form class="form-horizontal" action="savemerit" method="post">
									<div class="card-body">
										<div class="form-group row">
																				
											<label for="roundTitle" class="col-sm-3 col-form-label">RoundTitle</label>
											<div class="col-sm-10">
												<!--<input type="text"  id="roundTitle"
													placeholder="Round Title" name="roundTitle" required="required">
													 -->
													<select name="roundTitle" class="form-control">
														<option value="-1">Select Round</option>
														<option value="First Round">First Round</option>
														<option value="Second Round">Second Round</option>
														<option value="Second Round">Third  Round</option>
													 </select>
											</div>
										</div>
										
										<div class="form-group row">
											<label for="year" class="col-sm-4 col-form-label">year</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="year"
													placeholder="Year" name="year" required="required">
											</div>
										</div>
										
										<div class="form-group row">
												<label for="generalCutoff" class="col-sm-3 col-form-label">GeneralCutoff</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="generalCutoff"
													 placeholder="GeneralCutoff" name="generalCutoff" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="obcCutoff" class="col-sm-3 col-form-label">ObcCutoff</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="ObcCutoff"
													 placeholder="ObcCutoff" name="obcCutoff" required="required">
											</div>
										</div>
										
										
										<div class="form-group row">
											<label for="stCutoff" class="col-sm-3 col-form-label">StCutoff</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="stCutoff"
													 placeholder="StCutoff" name="stCutoff" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="scCutoff" class="col-sm-3 col-form-label">ScCutoff</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="scCutoff"
													 placeholder="ScCutoff" name="scCutoff" required="required">
											</div>
										</div>
										
										<div class="form-group row">
												<label for="generalQuota" class="col-sm-3 col-form-label">GeneralQuota</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="generalQuota"
													 placeholder="GeneralQuota" name="generalQuota" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="obcQuota" class="col-sm-3 col-form-label">ObcQuota</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="ObcQuota"
													 placeholder="ObcQuota" name="obcQuota" required="required">
											</div>
										</div>
										
										
										<div class="form-group row">
											<label for="stQuota" class="col-sm-3 col-form-label">StQuota</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="stQuota"
													 placeholder="StQuota" name="stQuota" required="required">
											</div>
										</div>
										
										<div class="form-group row">
											<label for="scQuota" class="col-sm-3 col-form-label">ScQuota</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="scQuota"
													 placeholder="ScQuota" name="scQuota" required="required">
											</div>
										</div>
										
										
										<div class="form-group row">
											<label for="totalSeat" class="col-sm-3 col-form-label">TotalSeat</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="totalSeat"
													 placeholder="TotalSeat" name="totalSeat" required="required">
											</div>
										</div>
										
										
										
										<div class="form-group row">
																				
											<label for="roundTitle" class="col-sm-3 col-form-label">Select Course</label>
											<div class="col-sm-10">
												
													<select name="courseId" class="form-control">
														<option value="-1">Select Course</option>
														<c:forEach items="${courses}" var = "c">
													<option value = "${c.courseId}">${c.courseName}</option>		
													</c:forEach>
													 </select>
											</div>
										</div>
										
										
										
									</div>
									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" class="btn btn-info">Save Merit</button>
										<a href="listmerit" class="btn btn-default float-right">Cancel</a>

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
         
     