<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="saveadmin" method="post">
		FirstName:<input type="text" name = "firstName">
		<br>
		LastName:<input type="text" name = "lastName">
		<br>
		AdminEmail:<input type="email" name = "email">
		<br>
		Password:<input type="password" name = "password">
		<br>
		RoleId:<input type="text" name = "roleId">
		<input type="submit" value="Save Admin">
	</form>

</body>
</html>