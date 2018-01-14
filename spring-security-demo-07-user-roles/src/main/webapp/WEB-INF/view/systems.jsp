<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Systems Page</title>
</head>
<body>
	<h1>Welcome to Systems Page!!!</h1>

	<hr>

	<p>
		ADMIN specific content...
	</p>
	
	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
</body>
</html>