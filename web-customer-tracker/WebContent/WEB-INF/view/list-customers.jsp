<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>

<!-- Style sheets -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h1>List Customers</h1>
		</div>
	</div>

	<div id="container">
		<div id="content">
		
			<!-- Add Customer button -->
			<input type="button" 
					value="Add Customer" 
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
					/> 
			
			<br>
			
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
				
					<tr>
						<td>
							${tempCustomer.firstName}
						</td>
						<td>
							${tempCustomer.lastName}
						</td>
						<td>
							${tempCustomer.email}
						</td>
						<td>
							<a href="${updateLink}">Update</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>