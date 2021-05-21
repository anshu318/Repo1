<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	 <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
<style>
h1,label {
	color: green;
	font-family: "Times New Roman";
}

span {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Add Employee</h1>
		<form:form method="post" modelAttribute="emp">
			
			<fieldset class="form-group">
				<form:label path="id">Id</form:label>
				<form:input path="id" type="text" class="form-control" required="required"/>
				<form:errors path="id" cssClass="text-danger"/>
			</fieldset>
			<fieldset class="form-group">
				<form:label path="firstName">Name</form:label>
				<form:input path="firstName" type="text" class="form-control" required="required"/>
				<form:errors path="firstName" cssClass="text-danger"/>
			</fieldset>
				<fieldset class="form-group">
				<form:label path="salary">Salary</form:label>
				<form:input path="salary" type="text" class="form-control" required="required"/>
				<form:errors path="salary" cssClass="text-danger"/>
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form:form>
		
		
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	
</body>
</html>