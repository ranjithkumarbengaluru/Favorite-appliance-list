<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/home.css"
	rel="stylesheet">
</head>
<body>
	<div class="container table-container">
		<h2 class="text-center text-primary">WhishList</h2>
		<table
			class="table table-hover table-striped text-center align-middle">
			<thead class="table-dark">
				<tr>
					<th>ProductId</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Date_Time</th>
					<th>EditProduct</th>
					<th>DeleteItem</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${stdlist}" var="product">
					<tr>
						<td scope="row">${product.id}</td>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
						<td>${product.date}</td>
						<td><a href="updateproduct/${product.id}"><i
								class="fa-solid fa-pen-fancy fa-2x text-warning"></i></a></td>
						<td><a href="deleteproduct/${product.id}"><i
								class="fa-solid fa-trash fa-2x text-danger"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-center mt-3">
			<a href="additemform" class="btn btn-success">Add Item</a>
		</div>
	</div>
</body>
</html>