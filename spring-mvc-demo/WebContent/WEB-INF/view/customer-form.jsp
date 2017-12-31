<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Form</title>
<style>
	.error {
		color: red;
	}
</style>
</head>
<body>
	<h1>My Form</h1>

	<form:form action="processForm" modelAttribute="customer">
		First Name: <form:input path="firstname" />
		<br>
		<br>
		Last Name (*): <form:input path="lastname" />
		<form:errors path="lastname" cssClass="error" />
		<br>
		<br>
		Free Passes: <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error"/>
		<br>
		<br>
		Postal Code: <form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error"/>
		<br>
		<br>
		
		Course Code: <form:input path="courseCode" />
		<form:errors path="courseCode" cssClass="error" />
		
		<br>
		<br>

		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>