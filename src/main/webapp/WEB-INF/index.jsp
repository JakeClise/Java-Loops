<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Fruity Loops Home</title>
</head>
<body>
<h1 class="text-primary text-center mt-2">Welcome to the Fruit Loop</h1>

<div class="mt-5"></div>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Fruit Name</th>
			<th>Fruit Price</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="fruit" items="${fruits}">
			<tr>
				<td>${fruit.name}</td>
				<td>${fruit.price}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="mt-5"></div>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Veggie Name</th>
			<th>Veggie Price</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="veggie" items="${veggies}">
			<tr>
				<td>${veggie.name}</td>
				<td>${veggie.price}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="mt-5">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Meat Name</th>
				<th>Meat Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="meat" items="${meats}">
				<tr>
					<td>${meat.name}</td>
					<td>${meat.price}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>


	

</body>
</html>