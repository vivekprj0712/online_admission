<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Course</title>
</head>
<body>


<h2>New User</h2>
 	 <form action="/savecourse" method = "post">
 		
 		CourseName:<input type = "text" name = "name">
 		<br>
 		
 		Active:&nbsp;True<input type = "radio" name = "active">
 		False<input type = "radio" name = "active">
 		<br>
 		
 		
 		MinimumQualification:<input type = "text" name = "minimumQualification">
 		<br>
 		
 		AcademicCycle:<input type = "text" name = "academicCycle">
 		<br>
 		
 		TotalSeats:<input type = "number" name = "totalSeats">
 		<br>
 		
		PaidSeats:<input type = "number" name = "paidSeats">
 		<br> 	
 			
 		DevelopmentCost:<input type = "number" name = "developmentCost">
 		<br> 		
 		<br> 		
 		<input type = "submit" value="Add New Course">	
 	 
 	 </form>
</body>
</html>

