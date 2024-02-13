<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>All List</h2>
	<c:forEach items="${users}" var="a">
		${a.userId}<br>
		${a.firstName}<br>
		${a.lastName}<br>
		${a.email}<br>
		${a.password}<br>
		${a.gender}<br>
		${a.contactNo}<br>
		${a.dateOfBirth}<br>
		${a.address}<br>
		${a.city}<br>
		${a.state}<br>
		${a.roleId}<br>
	</c:forEach>
	
	<table border="1">
		<tr>
			<td>UserId</td>
			<td>FirstName</td>
			<td>LastName</td>	
			<td>Email</td>
			<td>Password</td>
			<td>Gender</td>
			<td>ContactNo</td>
			<td>DateOfBirth</td>
			<td>Address</td>
			<td>City</td>
			<td>State</td>
			<td>RoleId</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${users}" var="a">
				<tr>
				<td>${a.userId}</td>
				<td>${a.firstName}</td>
				<td>${a.lastName}</td>
				<td>${a.email}</td>
				<td>${a.password}</td>
				<td>${a.gender}</td>
				<td>${a.contactNo}</td>
				<td>${a.dateOfBirth}</td>
				<td>${a.address}</td>
				<td>${a.city}</td>
				<td>${a.state}</td>
				<td>${a.roleId}</td>
				<td><a href="deleteuser?userId=${a.userId}">Delete</a>
					</td>				
				</tr>		
		</c:forEach>
	
	</table>
	
	${users.size()}
</body>
</html>