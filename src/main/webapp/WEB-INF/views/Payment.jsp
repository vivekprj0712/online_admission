<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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




</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


  <div class="site-wrap">


	<!-- ======= Header ======= -->
	<jsp:include page="StudentHeader.jsp"></jsp:include>
	<!-- End Header -->

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('dist/images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Payment</h2>
              <p></p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="studentdashboard">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Payment</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container  mr-3">
        <form action="generatereceipt"  method = "post">
            <div class="row">
                <div class="col-md-6 form-group">
                    <label class="text-black">Form Fees</label>
                     <input type="number" name="payment" class="form-control form-control-lg" value="300" readonly="readonly">
                    </div>
                    </div>
                    		<input type="hidden" id="admissionId" name = "admissionId" class="form-control form-control-lg" value="${admissions.admissionId}">
                            <input type="hidden" id="firstName" name = "firstName" class="form-control form-control-lg" value="${admissions.firstName}">
                            <input type="hidden" id="middleName" name = "middleName" class="form-control form-control-lg" value="${admissions.middleName}">
                            <input type="hidden" id="lastName" name = "lastName"  class="form-control form-control-lg" value="${admissions.lastName}">
                            <input type="hidden" id="contactNo" name="contactNo" class="form-control form-control-lg" value="${admissions.contactNo}">                            
                            <input type="hidden" id="email" name = "email" class="form-control form-control-lg" value="${admissions.email}">
                         	<input type="hidden" id="category" name = "category" class="form-control form-control-lg" value="${admissions.category}">
                            <input type="hidden" id="dob" name = "dob" class="form-control form-control-lg" value="${admissions.dob}">
                        	<input type="hidden" id="gender" name = "gender" class="form-control form-control-lg" value="${admissions.gender}">
                        	<input type="hidden" id="address" name = "address" class="form-control form-control-lg" value="${admissions.address}">
                			<input type="hidden" id="city" name = "city" class="form-control form-control-lg" value="${admissions.city}">
                            <input type="hidden" id="pincode" name="pinCode" class="form-control form-control-lg" value="${admissions.pinCode}">                            
                            <input type="hidden" id="state" name = "state" class="form-control form-control-lg" value="${admissions.state}">
                        	<input type="hidden" id="country" name = "country" class="form-control form-control-lg" value="${admissions.country}">
                            <input type="hidden" id="perc10th" name = "perc_10th" class="form-control form-control-lg" value="${admissions.perc_10th}">
                            <input type="hidden" id="perc12th" name = "perc_12th" class="form-control form-control-lg" value="${admissions.perc_12th}">
                            <input type="hidden" id="marksheet10th" name = "marksheet_10th" class="form-control form-control-lg" value="${admissions.marksheet_10th}">
                            <input type="hidden" id="marksheet12th" name = "marksheet_12th" class="form-control form-control-lg" value="${admissions.marksheet_12th}">
                       	 	<input type="hidden" id="courseId" name = "courseId" class="form-control form-control-lg" value="${admissions.courseId}">
                        	<input type="hidden" id="photo" name = "photo" class="form-control form-control-lg" value="${admissions.photo}">
                        
            <div class="row">
                <div class="col-6">
                    <input type="submit" value="Pay" class="btn btn-primary btn-lg px-5 btn-center">
                </div>
            </div>
            </form>
      </div>       
	</div>
    <!-- Contact 3 - Bootstrap Brain Component -->

   <!-- ======= Footer ======= -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- End Footer -->     

  </div>
  <!-- .site-wrap -->

  <!-- loader -->
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