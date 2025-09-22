<html>
<body>
	<h2><%="Hello World!"%></h2>
</body>
<%
RequestDispatcher dispatcher = request.getRequestDispatcher("home");
dispatcher.forward(request, response);
%>
</html>
