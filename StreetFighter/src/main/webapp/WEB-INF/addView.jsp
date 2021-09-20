<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:choose>
		<c:when test="${isAdded}">
		A new Player has been added to your database!
	</c:when>
		<c:otherwise>
		Error updating database!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

</body>
</html>