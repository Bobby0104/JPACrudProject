<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

title>Delete Player</title>
</head>
<body>
	<div>
	<c:choose>
		<c:when test="${isDeleted}">
		Your Player has been deleted!
	</c:when>
		<c:otherwise>
		Failure to delete!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

</body>
</html>