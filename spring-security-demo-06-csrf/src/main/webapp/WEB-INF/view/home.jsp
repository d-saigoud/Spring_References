<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Home Page</title>
	</head>
	<body>
		<h1>Welcome to Home Page!!!</h1>
		
		<!-- Add a logout button -->
		
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="Logout" />
		</form:form>
		
	</body>
</html>