<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<c:url var="findProfuctForCategory" value="/daftar-kategori/products_ajax" />
<spring:url value="/resources/js/jquery.1.10.2.min.js"
	var="jqueryJs" />
	
<script src="${jqueryJs}"></script>


<%-- <spring:url value="/resources/css/bootstrap.css" var="bootStrap"></spring:url> --%>
<%-- <spring:url value="/resources/css/bootstrap.min.css" var="bootStrapMin"></spring:url> --%>
<%-- <spring:url value="/resources/css/font-awesome.min.css" var="fontAwesome"></spring:url> --%>

<%-- <spring:url value="/resources/js/jquery.js" var="jqueryJs"></spring:url> --%>
<%-- <spring:url value="/resources/js/bootstrap.min.js" var="boostrapMinJs"></spring:url> --%>


<%-- <link rel="stylesheet" type="text/css" href="${bootStrap}" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="${bootStrapMin}" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="${fontAwesome}" /> --%>

<title>Contoh Dropdown Ajax</title>
</head>
<body>

	<table>
		<tr>
			<td>
				Daftar Kategori
			</td>
		
			<td><select class="select-width" id="category_list_d">
					<option value="">Select Category</option>
					<c:forEach var="catList" items="${category_list}">
						<option value="${catList.id}">${catList.name}</option>
					</c:forEach>
			</select>
			</td>
			
		</tr>
		
		
		<tr>	
			<td>Daftar Produk</td> 

			<td><select class="select-width" id="product_list_d">
					<option value="">Select Product</option>
			</select></td>
		</tr>
	</table>
	
	
	
	<script type="text/javascript">
	$().ready(
			 function() {
			  $('#category_list_d').change(
			    function() {
			     $.getJSON('${findProfuctForCategory}', {
			      id : $(this).val(),
			      ajax : 'true'
			     }, function(data) {
			      var html = '<option value="">Select Product</option>';
			      var len = data.length;
			      
			      for ( var i = 0; i < len; i++) {
			       html += '<option value="' + data[i].productId + '">'
			         + data[i].productName + '</option>';
			      }
			      html += '</option>';
			   
			      $('#product_list_d').html(html);
			     });
			    });

			});
	
	</script>

<%-- 	<script type="text/javascript" src="${jqueryJs}"></script> --%>
<%-- 	<script type="text/javascript" src="${bootstrapMinJs}"></script> --%>
	
</body>
</html>