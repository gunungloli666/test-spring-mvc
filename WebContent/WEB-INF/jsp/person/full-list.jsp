<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>List of person</h1>
		<table class="table table-stripped">
<!-- 			<tr> -->
<!-- 				<th>S.No</th> -->
<!-- 				<th>Name</th> -->
<!-- 				<th>Age</th> -->
<!-- 			</tr> -->
			<tr>
				<td>Number of count:</td>
				<td>${count} people</td>
			</tr>
			<c:forEach items="${persons}" var="person" varStatus="itr">
				<tr>
					<td>${person.name}</td>
					<td>${person.age}</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>