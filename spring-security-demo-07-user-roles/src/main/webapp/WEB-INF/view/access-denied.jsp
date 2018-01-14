<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Access Denied Page</title>
</head>
<body>
	<h1>Access Denied - You are not authorized to access this page</h1>

	<hr>

	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>

</body>
</html>