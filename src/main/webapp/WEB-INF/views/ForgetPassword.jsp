<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
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

<body>

	<div class="site-wrap">


  
    <!-- ======= Header ======= -->
	<jsp:include page="HomeHeader.jsp"></jsp:include>
	<!-- End Header -->

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('dist/images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">ForgetPassword</h2>
              <p></p>
	
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="/">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">ForgetPassword</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">
				
	<form action="sendotpforrecoverpassword" method="post">
            <div class="row justify-content-center">
                <div class="col-md-5">
                <span style="color: red;">${error}</span>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" class="form-control form-control-lg">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-6">
                            <input type="submit" value="Recover" class="btn btn-primary btn-lg">  
                        </div>
                        <div class="col-6">
                           	<a href="login" class="btn col-6 btn-danger btn-lg"> Cancel </a>
                        </div>
                           	 <a href="signup" class="nav-link">Register</a>
                    </div>
                </div>
            </div>
            
			</form>
          
        </div>
    </div>

    

    
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