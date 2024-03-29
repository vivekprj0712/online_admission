<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<h2>Add New Enrollment</h2>
	<form action="saveenrollment" method = "post">
	UserId:<input type="number" name="userId">
	<br>
	Date:<input type="date" name="date">
	<br>
	Amount:<input type="number" name = "amount">
	<br>
	Remarks:<input type="text" name="remakrs">
	<br>
	TransactionId:<input type = "number" name="transactionId">
	<br>
	<br>
	<input type = "submit" value="Add New Enrollmet">
	
	</form>
</body>
</html>