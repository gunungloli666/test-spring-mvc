<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Daftar employee</h2>
	<table>
		<c:forEach items="${employees}" var="emps">
			<tr>
<%-- 				<td>${emps.id}</td> --%>
				<td>${emps.firstName}</td>
				<td>${emps.lastName}</td>
				<td>${emps.email}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>