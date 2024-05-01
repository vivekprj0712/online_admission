<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
  <title>Merit Round List</title>
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
	<jsp:include page="HomeHeader.jsp"></jsp:include>
	<!-- End Header -->
	
	
<div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('dist/images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Merits</h2>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="studentdashboard">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Merit</span>
      </div>
    </div>
    
     <div class="site-section">
        <div class="container">
          <div class="row justify-content-center text-center">
            <div class="col-lg-5">
              <h2 class="section-title-underline mb-5">
                <span>iMSc(CA&IT) Merits Rounds</span>
              </h2>
            </div>
          </div>
          <div class="row">
          
           <c:forEach items="${merits}" var="m">
          <div class="col-md-6">
          	<div class="border">
                  <div class="feature-1-content">
                  	
            <div class="row col-md-12 text-right">
         	    <div class="col-md-6 col-lg-6">
                   <label class="mr-1 font-weight-bold">RoundTitle:</label>${m.roundTitle}  
                </div>
                <div class="col-md-6 col-lg-6">
                    <label class="mr-1 font-weight-bold">Year:</label>${m.year}
               </div>
            </div>
            <div class="row col-md-12 text-right">
         	    <div class="col-md-6 col-lg-6">
                   <label class="mr-1 font-weight-bold">GeneralCutoff:</label>${m.generalCutoff}  
                </div>
                <div class="col-md-6 col-lg-6">
                    <label class="mr-1 font-weight-bold">ObcCutoff:</label>${m.obcCutoff}
               </div>
            </div>
            <div class="row col-md-12 text-right">
                <div class="col-md-6 col-lg-6">
                   <label class="mr-1 font-weight-bold">stCutoff:</label>${m.stCutoff}  
                </div>
                <div class="col-md-6 col-lg-6">
					<label class="mr-1 font-weight-bold">ScCutoff:</label>${m.scCutoff}
               </div>
            </div>
            <div class="row col-md-12 text-right">
                <div class="col-md-6 col-lg-6">
                   <label class="mr-1 font-weight-bold">GeneralQuota:</label>${m.generalQuota}  
                </div>
                <div class="col-md-6 col-lg-6">
                    <label class="mr-1 font-weight-bold">ObcQuota:</label>${m.obcQuota}
               </div>
            </div>
            <div class="row col-md-12 text-right">
                <div class="col-md-6 col-lg-6">
                   <label class="mr-1 font-weight-bold">stQuota:</label>${m.stQuota}  
                </div>
                <div class="col-md-6 col-lg-6">
					<label class="mr-1 font-weight-bold">ScQuota:</label>${m.scQuota}
               </div>
            </div>
            <div class="row col-md-12 text-right">
                <div class="col-md-6 col-lg-6">
                    <label class="mr-1 font-weight-bold">TotalSeats:</label>${m.totalSeat}
                </div>
                <div class="col-md-6 col-lg-6">
                    <p class="font-weight-bold"><a href="viewmerit?meritId=${m.meritId}" >Check Merit</a></p>
               </div>
            </div>
            
                </div>
              </div>
          </div>
    </c:forEach>

          </div>
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