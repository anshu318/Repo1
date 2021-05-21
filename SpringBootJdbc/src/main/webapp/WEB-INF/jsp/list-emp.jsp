<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
h1 {
	color: Blue;
	font-family: "Times New Roman";
}

body {
	background-color: white;
}
</style>
</head>
<body>
	<div class="container">
		<center>
			<h1>Employee List</h1>
		</center>
		<table class="table table-borderless table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Salary</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emps}" var="emp">
					<tr>
						<td>${emp.id}</td>
						<td>${emp.firstName}</td>
						<td>${emp.salary}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-emp?id=${emp.id}">Update</a></td>
						<td><a type="button" class="btn btn-danger"
							href="/delete-emp?id=${emp.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<div class="bttn">
			<a class="btn btn-primary" href="/add-emp"><b>Add Employee</b></a>
		</div>
		<br>
		Employee Name : 
		<input type="text" name="name" list="firstname">
		<datalist id="firstname">
			<c:forEach items="${emps}" var="emp">
				<option value="${emp.firstName}">
			</c:forEach>
		</datalist>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>