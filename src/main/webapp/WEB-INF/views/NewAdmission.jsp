<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
</head>
<body>
<%--${courses.size()}--%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
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
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Admission Form</h2>
              <p></p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="studentdashboard">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Admissions</span>
      </div>
    </div>

      <div class="site-section">
        <div class="container">

	<div class="row justify-content-center text-center">
            <div class="col-lg-4">
              <h2 class="section-title-underline mb-5">
                <span>Admission Form</span>
              </h2>
            </div>
          </div>
	
	
			<form action="saveadmission" method = "post">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-6 form-group ">
                            <label for="firstName">FirstName</label>
                            <input type="text" id="firstName" name = "firstName" class="form-control form-control-lg">
                        </div>
                        <div class="col-md-6 form-group ">
                            <label for="middleName">MiddleName</label>
                            <input type="text" id="middleName" name = "middleName" class="form-control form-control-lg">
                        </div>
                         <div class="col-md-6 form-group ">
                            <label for="lastName">LastName</label>
                            <input type="text" id="lastName" name = "lastName"  class="form-control form-control-lg">
                        </div>

                        <div class="col-md-6 form-group">
                            <label for="contactNo">ContactNo</label>
                            <input type="text" id="contactNo" name="contactNo" class="form-control form-control-lg">                            
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name = "email" class="form-control form-control-lg">
                        </div>
                        <div class="col-md-6 form-group dropdown has-children">
                        Select  Category
                        <select class="dropdown-toggle ml-3" name="category">	
                        	 <option selected>--Select Category--</option>						
  							 <option value="general">GENERAL</option>
       						 <option value="obc">OBC</option>
       						 <option value="st">ST</option>
       						 <option value="sc">SC</option>
       						 <option value="open">OPEN</option>	 
       					</select>						
                        </div>
                        
										
                         <div class="col-md-6 form-group">
                            <label for="dob">Date Of Birth</label>
                            <input type="date" id="dob" name = "dob" class="form-control form-control-lg">
                        </div>
                        <div class="form-group col-md-6 row">
										<label for="gender" class="col-sm-2 col-form-label">Gender</label>
										
										<div class="form-check form-check-inline mt-3">
  												<input class="form-check-input" type="radio" name="gender" id="male" value="male">
  												<label class="form-check-label" for="male">Male</label>
										</div>
										<div class="form-check form-check-inline mt-3">
												  <input class="form-check-input" type="radio" name="gender" id="female" value="female">
												  <label class="form-check-label" for="female">Female</label>
										</div>
						</div>
						<div class="row">
               			 <div class="col-md-12 form-group ml-3">
                   				 <label for="address">Address</label>
                			    <textarea  id="address" name = "address" cols="45" rows="5" class="form-control"></textarea>
                		</div>
           			 </div>
           			 
           			 <div class="col-md-6 form-group dropdown has-children">
                        Select  City
                        <select class="dropdown-toggle ml-3" name="city">	
                        	 <option selected>--Select City--</option>						
  							 <option value="patan">Patan</option>
       						 <option value="ahmedabad">Ahmedabad</option>
       						 <option value="dessa">Dessa</option>
       						 <option value="palanpur">Palanpur</option>
       						 <option value="unjha">Unjha</option>	 
       					</select>						
                        </div>
                         <div class="col-md-6 form-group">
                            <label for="pincode">Pincode</label>
                            <input type="text" id="pincode" name="pinCode" class="form-control form-control-lg">                            
                        </div>
                        <div class="col-md-6 form-group dropdown has-children">
                        Select  State
                        <select class="dropdown-toggle ml-3" name="state">	
                        	 <option selected>--Select State--</option>						
  							 <option value="gujarat">Gujarat</option>
       						 <option value="rajasthan">Rajasthan</option>
       						 <option value="madhya pradesh">Madhya Pradesh</option>
       						 <option value="up">UP</option>
       						 <option value="Up">Delhi</option>	 
       					</select>						
                        </div>
                        <div class="col-md-6 form-group dropdown has-children">
                        Select Country
                        <select class="dropdown-toggle ml-3" name="country">	
                        	 <option selected>--Select Country--</option>						
  							 <option value="india">India</option>
       						 <option value="usa">Usa</option>
       						 <option value="japan">Japan</option>
       						 <option value="uk">Uk</option>
       						 <option value="canada">Canada</option>	 
       					</select>						
                        </div>
                         <div class="col-md-6 form-group">
                            <label for="perc10th">10<sup>th</sup> Marks </label>
                            <input type="text" id="perc10th" name = "perc_10th" class="form-control form-control-lg">
                        </div>
                         <div class="col-md-6 form-group">
                            <label for="perc12th">12<sup>th</sup> Marks </label>
                            <input type="text" id="perc12th" name = "perc_12th" class="form-control form-control-lg">
                        </div>
                        
                          <div class="col-md-6 form-group">
                            <label for="marksheet12th">12<sup>th</sup> MarkSheet</label>
                            <input type="file" id="marksheet12th" name = "marksheet_12th" class="form-control form-control-lg">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="marksheet10th">10<sup>th</sup> MarkSheet</label>
                            <input type="file" id="marksheet10th" name = "marksheet_10th" class="form-control form-control-lg">
                        </div>
                        
                        <div class="col-md-6 form-group dropdown has-children">
                        Select  Course
                        <select class="dropdown-toggle ml-3" name="courseName">	
                        	
						<option> ---Select Course--- </option>			
							<c:forEach items="${courseList}" var = "c">
									<option value = "${c.courseName}">${c.courseName}</option>		
							</c:forEach>
		
       					</select>						
                        </div>
                        
                        <div class="col-md-6 form-group">
                            <label for="photo">Passport Photo</label>
                            <input type="file" id="photo" name = "photo" class="form-control form-control-lg">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <input type="submit" value="Submit" class="btn btn-primary btn-lg px-5">
                        </div>
                        <div class="col-6">
                            <input type="reset" value="Reset" class="btn  btn-primary btn-lg px-5">
                        </div>
                        
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
