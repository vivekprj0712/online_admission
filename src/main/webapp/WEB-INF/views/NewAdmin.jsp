<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Admin</title>
</head>
<body>
	<form action="saveadmin" method="post">
		FirstName:<input type="text" name = "firstName" required="required">
		<br>
		LastName:<input type="text" name = "lastName" required="required">
		<br>
		AdminEmail:<input type="email" name = "email" required="required">
		<br>
		Password:<input type="password" name = "password" required="required">
		<br>
		RoleId:<input type="text" name = "roleId">
		<input type="submit" value="Save Admin" required="required">
	</form>

</body>
</html>