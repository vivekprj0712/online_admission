<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<h1 class="m-0 text-dark">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
								<li class="breadcrumb-item active">List Merit</li>
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
					<!-- Small boxes (Stat box) -->
					<div class="row">

						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>
										${merits.size()}
									</h3>

									<p>Merits</p>
								</div>
								<div class="icon">
									<i class="ion ion-ios-book"></i>
								</div>
								
							</div>
						</div>
						<!-- ./col -->
											</div>
					<!-- /.row -->
					<!-- Main row -->
					 
					<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								 					<div class="card-header">
								 								<a href="newmerit">Add New Merit</a></div>			
								<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap text-center">
										<thead>
											<tr>
												<th>MeritId</th>
												<th>RoundTitle</th>	
												<th>Year</th>
												<th>GeneralCutoff</th>
												<th>ObcCutoff</th>
												<th>StCutoff</th>
												<th>ScCutoff</th>
												<th>GeneralQuota</th>
												<th>ObcQuota</th>
												<th>StQuota</th>
												<th>ScQuota</th>
												<th>TotalSeats</th>
												<th>CourseId</th>
												<th>Action</th>

											</tr>
										</thead>

										<tbody>
											<c:forEach items="${merits}" var="m">
													<tr>
													<td>${m.meritId}</td>
													<td>${m.roundTitle}</td>
													<td>${m.year}</td>
													<td>${m.generalCutoff}</td>
													<td>${m.obcCutoff}</td>
													<td>${m.stCutoff}</td>
													<td>${m.scCutoff}</td>
													<td>${m.generalQuota}</td>
													<td>${m.obcQuota}</td>
													<td>${m.stQuota}</td>
													<td>${m.scQuota}</td>
													<td>${m.totalSeat}</td>
													<td>${m.courseId}</td>
														
													
									
								<td><a href="deletemerit?merittId=${m.meritId}"><i class="ion ion-ios-trash fa-2x text-danger"></i></a>
								<a href="editmerit?meritId=${m.meritId}"><i class="ion ion-ios-compose fa-2x ml-2 text-success"></i></a>
								<a href="viewmerit?meritId=${m.meritId}"><i class="ion ion-ios-eye fa-2x  ml-2 text-primary"></i></a>
								<a href="rejectedmerit?meritId=${m.meritId}"><i class="fa fa-regular fa-ban fa-2x ml-2 text-muted" aria-hidden="true"></i></a>
								<a href="pendingmerit?meritId=${m.meritId}"><i class="fa fa-clock fa-2x ml-2 text-warning" aria-hidden="true" ></i></a></td>
																		
													</tr>		
											</c:forEach>
	
										</tbody>
									</table>
									

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
					
					 
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
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