<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>
Student Form
</title>
</head>
<body>
	<h1>My Form</h1>
	
	<form:form action="processForm" modelAttribute="student">
		First Name: <form:input path="firstname" />
		<br><br>
		Last Name: <form:input path="lastname" />
		<br><br>
		Country: 
<%-- 		<form:select path="country"> --%>
<%-- 			<form:option value="Brazil" label="Brazil"></form:option> --%>
<%-- 			<form:option value="US" label="US"></form:option> --%>
<%-- 			<form:option value="Spain" label="Spain"></form:option> --%>
<%-- 			<form:option value="India" label="India"></form:option> --%>
<%-- 		</form:select> --%>

		<form:select path="country">
			<form:options items="${student.countryOptions}"></form:options>
		</form:select>
		
		<br><br>
		
		Favourite Language:<br>
		
<%-- 		Java <form:radiobutton path="favouriteLanguage" value="Java"/> --%>
<%-- 		C# <form:radiobutton path="favouriteLanguage" value="C#"/> --%>
<%-- 		PHP <form:radiobutton path="favouriteLanguage" value="PHP"/> --%>
<%-- 		Python <form:radiobutton path="favouriteLanguage" value="Python"/> --%>

		 <form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}"/>
		
		<br><br>
		
		Operating System:<br>
		
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		Windows <form:checkbox path="operatingSystems" value="Windows" />
		
		<br><br>

		<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>