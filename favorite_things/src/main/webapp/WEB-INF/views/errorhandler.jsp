<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/error.css"
	rel="stylesheet">
</head>
<body>
	<div class="container error-container">
		<div class="card error-card p-5 text-center">
			<div class="error-icon mb-3">
				<i class="bi bi-exclamation-triangle-fill"></i>
			</div>
			<h1 class="text-danger">Oops! ${errorclass} occurred</h1>
			<p class="text-muted">
				We’re sorry, but an unexpected <span
					class="text-danger font-weight-bold">"${localmessage}"</span> error
				has occurred. Please try again later.
			</p>
			<a href="home" class="btn btn-primary mt-3">Go Back Home</a>
		</div>
	</div>
</body>
</html>