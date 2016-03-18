<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

.error {
	color: #ff0000;
}

.commonerrorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
}
</style>

<spring:url value="/resources/css/hello.css" var="coreCss" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />

<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />


</head>

<body>

<div class="container" style="min-height: 500px">

	<div class="starter-template">

	<form:form method="post" action="processCountry" commandName="db" class="form-horizontal">
		<form:errors path="*" element="div" cssClass="commonerrorblock" />
<!-- 		<table> -->
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label">Country</label>
				<div class="col-sm-10"> 
					<form:select path="country" class="form-control"  >
						<form:option value="" label="...."  />
						<form:options items="${countryList}" />
					</form:select>
				</div>
				<div><form:errors path="country" cssClass="error" /></div>
			</div>
			
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<form:select path="name" class="form-control">
						<form:option value="" label="...."  />
						<form:options items="${nameList}"  />
					</form:select>
				</div>
				<div><form:errors path="name" cssClass="error" /></div>
			</div>
			
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<form:input path="ID" class="form-control"/>
				</div>
			</div>
				
			<div class="form-group" >
				<div class="col-sm-offset-2 col-sm-10"></div>
				<div>
					<input type="submit" class="btn btn-primary btn-lg" ></input>
				</div>
			</div>
<!-- 		</table> -->
	</form:form>
	</div>
</div>
</body>
</html>