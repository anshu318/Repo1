<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<style>
h1 {
	color: darkblue;
	font-family: "Times New Roman";
}
span{
	color: red;
}
a{
	color: purple;
	
}

</style>
</head>
<body>
<div class="container">
<h1>Welcome ${name.toUpperCase()}.</h1><br>
<a class="btn btn-success" href="/list-emp"><b>Click here</b></a> to see the employee table.

	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>