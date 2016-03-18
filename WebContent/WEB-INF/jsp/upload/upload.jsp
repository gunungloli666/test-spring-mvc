<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>Upload File Request Page</title>
</head>
<body>
 	<h2>Selamat Datang ${name}</h2>
    <form method="POST" action="uploadFile" enctype="multipart/form-data">
        <table>
        	<tr>
        		<td>File to upload:</td>
        		<td><input type="file" name="file"></td>
        	</tr>
        	<tr>
        		<td>Name: </td>
        		<td><input type="text" name="name"></td>
        	</tr>
        	<tr>
        		<td><input type="submit" value="Upload"> </td>
        		<td>Press here to upload the file!</td>
        	</tr>
        </table>
        
    </form>
     
</body>
</html>
