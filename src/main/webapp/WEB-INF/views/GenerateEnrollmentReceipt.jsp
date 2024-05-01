<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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
<style type="text/css">
body{
background:#eee;
margin-top:20px;
}
.text-danger strong {
        	color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-center{
			text-align: center;
			font-size: 12px;
			
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
		hr{
			height:30px;
			border-style: inset;
  			border-width: 2px;
  			color:gray;
  			background-color:black;
		}

</style>

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

		
		<div class="col-md-12" >   
 <div class="row justify-content-center text-center">
		
        <div class="receipt-main col-xs-6 col-sm-6 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" id="invoice">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-12 col-sm-12 col-md-12 receipt-center">
						<div class="receipt-center">
						<h3 class="ml-3"> Department Of Computer Science , HNGU , Patan. </h3>
						<p><hr class="ml-3 w-auto h-50	"></p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 text-right">
						<div class="receipt-right">
							<h4 class="text-center font-weight-bold fs-3">Tuition Fee Receipt</h4>
							<p><hr class="l-3 w-50 h-50"></p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="reciept-right">
							<h6 class="font-weight-bold w-25 ml-2">PaymentId: ${payment.paymentId}</h6>
							<h6 class="font-weight-bold w-25 ml-2">AdmissionId: ${payment.admissionId}</h6>
							
							<h6 class="font-weight-bold w-50">Mr./Ms: ${admission.firstName} &nbsp; ${admission.middleName} &nbsp; ${admission.lastName}</h6>
							
						</div>
					</div>
				</div>
            </div>
			
			
			
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Description</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9">Tuition Fee</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i> ${payment.paymentCost}/-</td>
                        </tr>
                        <tr>
                            <td class="text-right">
                            <p>
                                <strong>Total Amount: </strong>
                            </p>
                            </td>
                            <td>
                            <p>
                                <strong><i class="fa fa-inr"></i> ${payment.paymentCost}/-</strong>
                            </p>
                            </td>
                        </tr>
                        <tr>
                           
                            <td class="text-right"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2 class="ml-4"><strong><i class="fa fa-inr"></i> ${payment.paymentCost}/-</strong></h2></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-12 col-sm-12 col-md-12 text-left">
						<div class="receipt-right">
							<p><b>${payment.date}</b></p>
						</div>
					</div>
					
				</div>
            </div>
            
         </div>
         
         
             
	</div>
	<div class="text-center">
			<button type="button" class="btn btn-primary" id="download"> download pdf</button>
    		<a href="studentdashboard" class="btn btn-outline-danger">Cancel</a>
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

 	 <script src="dist/js/pdf.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>



  <script src="dist/js/main.js"></script>

	

</body>

</html>