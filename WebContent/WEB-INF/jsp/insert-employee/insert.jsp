<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form modelAttribute="employee" method="POST" >
		<table>
			<tr>
				<td>Nama Pertama</td>
				<td><form:input path="firstName" />
				</td>
			</tr>
			
			<tr>
			<td>Nama Terakhir </td>
				<td><form:input path="lastName" />
				</td>			
			</tr>
			
			<tr>
				<td>email</td>
				<td><form:input path="email" />
				</td>	
			</tr>
			
			<tr>
				<td> 
					<input type="submit"  value="INSERT" />
				</td>
				<td></td>
			</tr>
			
		</table>
	</form:form>

</body>
</html>