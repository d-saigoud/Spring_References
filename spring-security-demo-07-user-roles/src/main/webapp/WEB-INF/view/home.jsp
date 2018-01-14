<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Home Page</title>
</head>
<body>
	<h1>Welcome to Home Page!!!</h1>

	<hr>

	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>
	<hr>

	<security:authorize access="hasRole('MANAGER')">
		<!-- Link to /leaders -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leaders</a>
			(Only for Managers)
		</p>
	</security:authorize>



	<security:authorize access="hasRole('ADMIN')">
		<!-- Link to /systems -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">Systems</a>
			(Only for Admins)
		</p>
	</security:authorize>

	<hr>

	<!-- Add a logout button -->

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>

</body>
</html>