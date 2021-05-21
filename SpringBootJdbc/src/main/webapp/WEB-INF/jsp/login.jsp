<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Boot MVC</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<style>
h1 {
	color: blue;
	font-family: "Times New Roman";
}
tr,td{
	padding: 5px;
}
</style>
</head>
<body>
	<div class="container">
	<h1>Login Form</h1>
	<form method="post">
		<table>
			<tr>
				<td>Enter Username : </td>
				<td><input type="text" name="name" required/></td>
			</tr>
			
		    <tr>
				<td>Enter Password : </td>
				<td><input type="password" name="password" required/></td>
			</tr>
			<tr>
				<td></td>
				<td><input class="btn btn-success" type="submit" value="Login"/></td>
			</tr>
		</table>
		<font color="red">${errorMessage}</font>
		
	</form>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
	
</body>
</html>