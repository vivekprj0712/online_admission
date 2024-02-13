<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>All List</h2>
	<c:forEach items="${roles}" var="a">
		${a.roleName}</br>
	</c:forEach>
	${roles.size()}
	</br>
	</br>
	</br>
	
	<table border="1">
	<tr>
		<td>RoleId</td>
		<td>RoleName</td>
		<td>Action</td>
	</tr>
	<c:forEach items="${roles}" var="a">
		<tr>
			<td>${a.roleId}</td>
			<td>${a.roleName}</td>
			<td><a href="deleterole?roleId=${a.roleId}">Delete</a></td>
			</tr>
	</c:forEach>
	</table>
</body>
</html>