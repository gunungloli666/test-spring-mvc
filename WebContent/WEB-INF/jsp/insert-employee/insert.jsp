<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<spring:url value="/resources/css/bootstrap.css" var="bootStrap"></spring:url>
<spring:url value="/resources/css/bootstrap.min.css" var="bootStrapMin"></spring:url>

<spring:url value="/resources/js/jquery.js" var="jqueryJs"></spring:url>
<spring:url value="/resources/js/bootstrap.min.js" var="boostrapMinJs"></spring:url>


<link rel="stylesheet" type="text/css" href="${bootStrap}" />
<link rel="stylesheet" type="text/css" href="${bootStrapMin}" />



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="min-height: 500px">
		
		<div class="starter-template">
	
			<form:form modelAttribute="employee" method="POST" class="form-horizontal" >
			
				<div class="row">
					<div class="form-group col-md-10">
						<label for="namaPertama"  class="col-sm-2 control-label" >Nama Pertama</label>
						
						<div class="col-sm-8">
							<form:input path="firstName" class="form-control input-sm"
							id="namaPertama" placeholder="First Name" />
						</div>
						
					</div>
				</div>
					
				<div class="row">
					<div class="form-group col-md-10">
						<label for="namaKedua" class="col-sm-2 control-label" >Nama Kedua</label>
						
						<div class="col-sm-8">
							<form:input path="lastName" class="form-control input-sm" id="namaKedua"
							placeholder="Last Name" />
						</div>
						
					</div>
				</div>
				
				
				<div class="row">
					<div class="form-group col-md-10">
						<label for="email"  class="col-sm-2 control-label">email</label>
						
						<div class="col-sm-8">
								<form:input path="email" class="form-control input-sm" id="email"
								placeholder="ex:mm@gmail.com" />
						</div>
						
					</div>		
					
				</div>	
				
				
				<div class="row">
					<div class="form-actions floatRight" >
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary btn-sm">Login</button>
						</div>
					</div>
				</div>
				
			</form:form>
			
		</div>
		
	</div>
	
<%-- 	<script type="text/javascript" src="${jqueryJs}"></script> --%>
<%-- 	<script type="text/javascript" src="${bootstrapMinJs}"></script> --%>
</body>
</html>