<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	<h2>New User</h2>
 	 <form action="savestudent" method = "post">
 		FirstName:<input type = "text" name = "firstName">
 		<br>
 		LastName:<input type = "text" name = "lastName">
 		<br>
 		Email:<input type = "email" name = "email">
 		<br>
 		Password:<input type = "password" name = "password">
 		<br>
 		ContactNo:<input type = "number" name = "contactNo">
 		<br>
		Role:<select name="roleId">
			<option> ---Select Role--- </option>			
			<s:forEach items="${roleList}" var = "r">
				<option value = "${r.roleId}">${r.roleName}</option>		
			</s:forEach>
		</select>
 		<br> 		
 		<br> 		
 		<input type = "submit" value="Add New Student">	
 	 
 	 </form>
</body>
</html>

