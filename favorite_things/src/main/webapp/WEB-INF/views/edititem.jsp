<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="base.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/form.css"
	rel="stylesheet">
</head>
<body>
	<div class="container d-flex justify-content-center">
		<div class="form-container w-100">
			<h2 class="text-center text-primary">Edit Product</h2>
			<form
				action="${pageContext.request.contextPath }/updateproductsubmit"
				method="post">
				<div class="mb-3">
					<label for="productId" class="form-label">Product id</label> <input
						type="text" class="form-control" id="productId"
						placeholder="Enter product name" value="${item.id }" name="id"
						readonly="readonly">
				</div>
				<div class="mb-3">
					<label for="productName" class="form-label">Product Name</label> <input
						type="text" class="form-control" id="productName"
						placeholder="Enter product name" value="${item.name }" name="name"
						required>
				</div>
				<div class="mb-3">
					<label for="productDescription" class="form-label">Description</label>
					<textarea class="form-control" id="productDescription" rows="4"
						placeholder="Enter product description" name="description"
						required>${item.description }</textarea>
				</div>
				<div class="mb-3">
					<label for="productPrice" class="form-label">Price</label> <input
						type="number" class="form-control" id="productPrice"
						placeholder="Enter product price" name="price"
						value="${item.price}" required>
				</div>
				<div class="mb-3">
					<label for="productDate" class="form-label">Date</label> <input
						type="datetime-local" class="form-control" id="productDate"
						placeholder="Enter product name" value="${item.date }" name="date"
						readonly="readonly">
				</div>
				<div class="d-flex justify-content-center">
					<button type="submit" class="btn btn-primary btn-spacing">Submit</button>
					<a href="${pageContext.request.contextPath}/home"
						class="btn btn-secondary btn-spacing">Home</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>