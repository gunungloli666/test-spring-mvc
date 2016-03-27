<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<spring:url value="/resources/css/bootstrap.css" var="bootStrap"></spring:url>
<spring:url value="/resources/css/bootstrap.min.css" var="bootStrapMin"></spring:url>

<spring:url value="/resources/js/jquery.js" var="jqueryJs"></spring:url>
<spring:url value="/resources/js/bootstrap.min.js" var="boostrapMinJs"></spring:url>


<link rel="stylesheet" type="text/css" href="${bootStrap}" />
<link rel="stylesheet" type="text/css" href="${bootStrapMin}" />


</head>
<body>

	<div>
		<div><h2>Daftar employee</h2></div> 
	</div>
	
	<div class="form-group col-md-3">
		<div  class="col-sm-5">
			<a href="<c:url value="/employee/insert" />"> 
				<button type="submit"   class="btn btn-primary btn-sm" >INSERT USER</button>
			</a>
		</div>
		
		<div class="col-sm-5">
			<button type="submit"   class="btn btn-primary btn-sm" >CLEAR USER</button>
		</div>
		
	</div>
	
	<table class="table table-stripped">

	
		<c:forEach items="${employees}" var="emps">
			<tr>
				<td>${emps.firstName}</td>
				<td>${emps.lastName}</td>
				<td>${emps.email}</td>
			</tr>
		</c:forEach>
		
		
	</table>
	
	
		<script type="text/javascript" src="${jqueryJs}"></script>
	<script type="text/javascript" src="${bootstrapMinJs}"></script>
</body>
</html>