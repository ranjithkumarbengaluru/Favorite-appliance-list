<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/form.css"
	rel="stylesheet">
</head>
<body>
	<div class="container d-flex justify-content-center">
		<div class="form-container w-100">
			<h2 class="text-center text-primary">Add Product</h2>
			<form action="additemsubmit" method="post">
				<div class="mb-3">
					<label for="productName" class="form-label">Product Name</label> <input
						type="text" class="form-control" id="productName"
						placeholder="Enter product name" name="name" required>
				</div>
				<div class="mb-3">
					<label for="productDescription" class="form-label">Description</label>
					<textarea class="form-control" id="productDescription" rows="4"
						placeholder="Enter product description" name="description"
						required></textarea>
				</div>
				<div class="mb-3">
					<label for="productPrice" class="form-label">Price</label> <input
						type="number" class="form-control" id="productPrice"
						placeholder="Enter product price" name="price" required>
				</div>
				<div class="d-flex justify-content-center">
					<button type="submit" class="btn btn-primary btn-spacing">Submit</button>
					<a href="home" class="btn btn-secondary btn-spacing">Home</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>