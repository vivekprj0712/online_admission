<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	<h2>New User</h2>
 	 <form action="saveuser" method = "post">
 		FirstName:<input type = "text" name = "firstName">
 		<br>
 		LastName:<input type = "text" name = "lastName">
 		<br>
 		Email:<input type = "email" name = "email">
 		<br>
 		Password:<input type = "password" name = "password">
 		<br>
 		Gender:&nbsp;Male<input type = "radio" name = "gender">
 		FemalMale<input type = "radio" name = "gender">
 		<br>
 		ContactNo:<input type = "number" name = "contactNo">
 		<br>
 		DateOfBirth:<input type = "date" name = "dateOfBirth">
 		<br>
 		 Address:<textarea name="address"
                      rows="5" cols="20">
          </textarea>
 		<br>
 		City:<input type = "text" name = "city">
 		<br>
 		State:<input type = "text" name = "state">
 		<br>
 		OTP:<input type = "number" name = "otp">
 		<br>
		RoleId:<input type = "number" name = "roleId">
 		<br> 		
 		<br> 		
 		<input type = "submit" value="Add New User">	
 	 
 	 </form>
</body>
</html>

