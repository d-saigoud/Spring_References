<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Form</title>

<!-- Style sheets -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h1>Customer Form</h1>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			
		</div>
		
		<h3>Add new customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First Name: </label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last Name: </label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email: </label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Save Customer" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear; both;">
			<p>
				<a href="${pageContext.request.contextPath}/customer/list" >Bact to Customer List</a>
			</p>
		</div>
		
	</div>

	

</body>
</html>