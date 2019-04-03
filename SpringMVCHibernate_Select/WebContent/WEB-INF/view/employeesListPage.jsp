<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
<h3>Employees List</h3>
<c:if test="${!empty listEmployees}">
	<table border="1">
	<tr>
		<th>Employee Id</th>
		<th>Employee Name</th>
		<th>Email Id</th>
		<th>Contact Number</th>
		<th>Password</th>
		<!-- <th width="60">Edit</th>
		<th width="60">Delete</th> -->
	</tr>
	<c:forEach items="${listEmployees}" var="e">
		<tr>
			
			<td><c:out value="${e.employeeId}"/></td>
			<td><c:out value="${e.employeeName}"/></td>
			<td><c:out value="${e.emailId}"/></td>
			<td><c:out value="${e.contactNumber}"/></td>
			<td><c:out value="${e.password}"/></td>
			<%-- <td><a href="<c:url value='/edit/${e.employeeId}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${e.employeeId}' />" >Delete</a></td> --%>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>