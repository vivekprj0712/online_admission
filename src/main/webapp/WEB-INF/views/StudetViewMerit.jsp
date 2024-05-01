<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DCS MeritList</title>


<link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="dist/fonts/icomoon/style.css">

  <link rel="stylesheet" href="dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/jquery-ui.css">
  <link rel="stylesheet" href="dist/css/owl.carousel.min.css">
  <link rel="stylesheet" href="dist/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="dist/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="dist/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="dist/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="dist/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="dist/css/aos.css">
  <link href="dist/css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="dist/css/style.css">
  <link rel="stylesheet" href="dist/css/Page.css">

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
		<div class="col-md-12" >   
 <div class="row justify-content-center text-center">
		
        <div class="receipt-main col-xs-8 col-sm-8 col-md-8 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-12 col-sm-12 col-md-12 receipt-center">
						<div class="receipt-center">
						<img  alt="" src="dist/images/hngu-logo.png" class="mr-5 w-auto">
						<h5 class="justify-content-center text-center d-inline"> Department Of Computer Science , HNGU , Patan. </h5>
						<img  alt="" src="dist/images/hngu-logo.png" class="ml-5 w-auto">
						<h4 class="text-center font-weight-bold fs-3 d-inline-block">Integrated MSc(CA & IT) First Year </h4>
						<p><hr class=" w-auto h-50 md-5"></p>
						
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="container mb-2">
 							 <div class="row font-weight-bold">
   								 <div class="col-sm">${merits.roundTitle} Merit	</div>
    							 <div class="col-sm">Admissions:${merits.year}</div>
   								 <div class="col-sm">Date : ${date}</div>
  							</div>
						</div>
					</div>
				</div>
            </div>
			
			<div>
			
			
            
            <table border = "1" align="center">
            	<tr>
            	<th>SN</th>
            	<th>AdmissionId</th>
            	<th>Name of Student</th>
            	<th>Category</th>            	
            	<th>12<sup>th</sup> Percentage</th>
            	<th>Action</th>
            	</tr>
            	
            	
            	<% int i = 1;%>
            	<c:forEach items="${finalmeritStudents}" var="f" >
            		<tr>
            		<td><%=i%></td>
            		<td>${f.admissionId}</td>
            		<td>${f.lastName} ${f.firstName} ${f.middleName} </td>
            		<td>${f.category}</td>
            		<td>${f.perc_12th}</td>
            		<td class="font-weight-bold"><a href="enrollment?admissionId=${f.admissionId}&meritId=${merits.meritId}" >Enrollment</a></td>
					</tr>
					<% i = i+1; %>
            	</c:forEach>
            	
            </table>
            
            </div>
         
         
		<div class="text-center ">
             <a href="studentdashboard" class="btn btn-outline-danger btn-center mt-3">Cancel</a>
		</div>
			
         </div>
	</div>
</div>
<div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="dist/js/jquery-3.3.1.min.js"></script>
  <script src="dist/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="dist/js/jquery-ui.js"></script>
  <script src="dist/js/popper.min.js"></script>
  <script src="dist/js/bootstrap.min.js"></script>
  <script src="dist/js/owl.carousel.min.js"></script>
  <script src="dist/js/jquery.stellar.min.js"></script>
  <script src="dist/js/jquery.countdown.min.js"></script>
  <script src="dist/js/bootstrap-datepicker.min.js"></script>
  <script src="dist/js/jquery.easing.1.3.js"></script>
  <script src="dist/js/aos.js"></script>
  <script src="dist/js/jquery.fancybox.min.js"></script>
  <script src="dist/js/jquery.sticky.js"></script>
  <script src="dist/js/jquery.mb.YTPlayer.min.js"></script>


  <script src="dist/js/main.js"></script>

		
</body>

</html>