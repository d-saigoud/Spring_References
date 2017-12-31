<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>
Customer Details
</title>
</head>
<body>
	<h1>Customer Details</h1>
	<hr>
	Customer Full Name : ${customer.firstname} ${customer.lastname}
	<br><br>
	Free Passes: ${customer.freePasses}
	<br><br>
	Postal Code: ${customer.postalCode}
	<br><br>
	Course Code: ${customer.courseCode}
	<br><br>
</body>
</html>