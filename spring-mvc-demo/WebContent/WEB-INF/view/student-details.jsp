<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>
Student Details
</title>
</head>
<body>
	<h1>Student Details</h1>
	<hr>
	Full Name : ${student.firstname} ${student.lastname}
	<br><br>
	Country : ${student.country}
	<br><br>
	Favourite Language: ${student.favouriteLanguage}
	<br><br>
	Operating Systems: 
		<ul>
			<c:forEach var="temp" items="${student.operatingSystems}">
				<li>
					${temp}	
				</li>
			</c:forEach>
		</ul>
	<br><br>
</body>
</html>